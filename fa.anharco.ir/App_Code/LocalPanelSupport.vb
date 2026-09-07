Option Explicit On
Option Strict Off

Imports System.IO
Imports System.Reflection
Imports System.Security.Cryptography
Imports System.Text
Imports System.Threading
Imports System.Web
Imports System.Web.SessionState
Imports System.Web.UI

Public Module LocalPanelSupport
    Public Const LocalAdminFlag As String = "local_admin"
    Public Const LocalPersonFlag As String = "local_person"
    Public Const AuthCookieName As String = "anhar_panel_auth"

    ' ---- Security ticket settings ------------------------------------------------
    ' The panel cookie is a signed, non-forgable ticket: role|userName|ticksUtc|hmac.
    ' It slides: each authenticated request re-issues it with a fresh timestamp.
    ' After IdleMinutes without any panel request the user must log in again.
    Private Const TicketKeySetting As String = "PanelTicketKey"
    Private Const TicketFileRelative As String = "App_Data/panel-ticket.key"
    Public Const IdleMinutes As Integer = 15

    ' The single login entry: the panel lives ONLY on the main (English) site.
    ' Sub-language sites (fa. / ar.) redirect every panel page - including their
    ' own InputToPanel.aspx - to this address.
    Public Const MainSiteUrl As String = "http://anharco.ir/InputToPanel.aspx"
    ' True = this site keeps its own working login (main English site).
    ' False = login disabled here; after issuing a ticket the user is sent to MainSiteUrl.
    Public PanelUsesOwnLogin As Boolean = False

    Private Function TicketKey() As Byte()
        Dim raw As String = ""
        Try
            Dim v As String = System.Configuration.ConfigurationManager.AppSettings(TicketKeySetting)
            If v IsNot Nothing AndAlso v.Trim() <> "" Then
                raw = v.Trim()
            End If
        Catch
        End Try
        If raw = "" Then
            Try
                Dim path As String = DataDir.GetDataFile("panel-ticket.key")
                If Not String.IsNullOrEmpty(path) Then
                    If File.Exists(path) Then
                        raw = File.ReadAllText(path).Trim()
                    End If
                    If raw = "" Then
                        Dim rnd(31) As Byte
                        Dim rng As RandomNumberGenerator = RandomNumberGenerator.Create()
                        rng.GetBytes(rnd)
                        raw = Convert.ToBase64String(rnd)
                        File.WriteAllText(path, raw)
                    End If
                End If
            Catch
            End Try
        End If
        If raw = "" Then
            ' Last resort only (memory-only mode). Set the PanelTicketKey
            ' appSetting in Web.config to remove this fallback.
            raw = "anhar-default-ticket-key-change-me"
        End If
        Using sha As SHA256 = SHA256.Create()
            Return sha.ComputeHash(Encoding.UTF8.GetBytes("anhar-panel-v1|" & raw))
        End Using
    End Function

    Private Function Sign(ByVal payload As String) As String
        Using h As HMACSHA256 = New HMACSHA256(TicketKey())
            Dim b As Byte() = h.ComputeHash(Encoding.UTF8.GetBytes(payload))
            Return Convert.ToBase64String(b).Replace("+"c, "-"c).Replace("/"c, "_"c).TrimEnd("="c)
        End Using
    End Function

    ''' <summary>Parses the auth cookie. Returns role ("admin"/"person") only if the signature is valid; empty otherwise.</summary>
    Private Sub ParseTicket(ByVal raw As String, ByRef role As String, ByRef user As String, ByRef ageMinutes As Double)
        role = ""
        user = ""
        ageMinutes = -1
        If String.IsNullOrEmpty(raw) Then
            Return
        End If
        Dim parts() As String = raw.Split("|"c)
        If parts.Length <> 4 Then
            Return
        End If
        Dim sig As String = Sign(parts(0) & "|" & parts(1) & "|" & parts(2))
        If Not String.Equals(sig, parts(3), StringComparison.Ordinal) Then
            Return
        End If
        Dim ticks As Long = 0
        If Not Long.TryParse(parts(2), ticks) OrElse ticks <= 0 Then
            Return
        End If
        ageMinutes = DateTime.UtcNow.Subtract(New DateTime(ticks, DateTimeKind.Utc)).TotalMinutes
        role = parts(0).Trim().ToLowerInvariant()
        If role <> "admin" AndAlso role <> "person" Then
            role = ""
            Return
        End If
        Try
            user = HttpUtility.UrlDecode(parts(1))
        Catch
            user = ""
        End Try
    End Sub

    Private Function BuildTicket(ByVal role As String, ByVal user As String) As String
        Dim payload As String = role & "|" & HttpUtility.UrlEncode(user) & "|" & DateTime.UtcNow.Ticks.ToString()
        Return payload & "|" & Sign(payload)
    End Function

    Public Sub WriteAuthTicket(ByVal role As String, ByVal user As String)
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing Then
            Return
        End If
        Dim ck As New HttpCookie(AuthCookieName, BuildTicket(role, user))
        ck.HttpOnly = True
        Try
            ck.Secure = ctx.Request.IsSecureConnection
        Catch
        End Try
        ck.Path = "/"
        ctx.Response.Cookies.Set(ck)
    End Sub

    ''' <summary>Reads and verifies the signed ticket. role="" means invalid/forged/expired.</summary>
    Public Sub ReadTicket(ByRef role As String, ByRef user As String, ByRef ageMinutes As Double)
        role = ""
        user = ""
        ageMinutes = -1
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing OrElse ctx.Request Is Nothing Then
            Return
        End If
        Dim ck As HttpCookie = ctx.Request.Cookies(AuthCookieName)
        If ck Is Nothing OrElse String.IsNullOrEmpty(ck.Value) Then
            Return
        End If
        ParseTicket(ck.Value.Trim(), role, user, ageMinutes)
    End Sub

    Public Sub BindAdminSession(ByVal uid As String, Optional ByVal writeTicket As Boolean = True)
        Dim s As HttpSessionState = HttpContext.Current.Session
        s("UID") = uid
        s("id_Admin") = "1"
        s("username_Admin") = uid
        s("super") = "1"
        s("super_admin") = 1
        s("numberBox") = 0
        s("number_Login_admin") = 1
        s("adminPanel_Code") = 1
        s("rowID_Admin") = 1
        s("rowID_admin") = 1
        s(LocalAdminFlag) = "1"
        s("LogoPanel") = "images/logo.png"
        s("menu_admin") = AdminMenuHtml()
        If writeTicket Then
            WriteAuthTicket("admin", uid)
            If Not PanelUsesOwnLogin Then
                HttpContext.Current.Response.Redirect(MainSiteUrl, True)
                Return
            End If
        End If
    End Sub

    Public Sub BindPersonSession(ByVal uid As String, Optional ByVal writeTicket As Boolean = True)
        Dim s As HttpSessionState = HttpContext.Current.Session
        s("UID") = uid
        s("id_Person") = "1"
        s("numberBox") = 0
        s("number_Login_Person") = 1
        s("rowID_Admin") = 1
        s("adminPanel_Code") = 1
        s(LocalPersonFlag) = "1"
        s("LogoPanel") = "images/logo.png"
        s("menu_admin_Person") = PersonMenuHtml()
        If writeTicket Then
            WriteAuthTicket("person", uid)
            If Not PanelUsesOwnLogin Then
                HttpContext.Current.Response.Redirect(MainSiteUrl, True)
                Return
            End If
        End If
    End Sub

    Public Sub ClearAuth()
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing Then
            Return
        End If
        If ctx.Session IsNot Nothing Then
            ctx.Session.Clear()
            ctx.Session.Abandon()
        End If
        Dim doomed As New HttpCookie(AuthCookieName)
        doomed.Value = ""
        doomed.Expires = DateTime.Now.AddDays(-1)
        doomed.Path = "/"
        ctx.Response.Cookies.Set(doomed)
    End Sub

    Public Function IsLocallyLoggedIn() As Boolean
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing Then
            Return False
        End If
        ' Signed ticket is the source of truth (sliding 15-minute idle window).
        Dim role As String = ""
        Dim user As String = ""
        Dim age As Double = -1
        ReadTicket(role, user, age)
        If role <> "" Then
            Return age >= 0 AndAlso age <= IdleMinutes
        End If
        ' Legacy session flags fallback (pre-upgrade logins).
        If ctx.Session IsNot Nothing Then
            If Convert.ToString(ctx.Session(LocalAdminFlag)) = "1" Then
                Return True
            End If
            If Convert.ToString(ctx.Session(LocalPersonFlag)) = "1" Then
                Return True
            End If
            If Convert.ToString(ctx.Session("id_Admin")) = "1" Then
                Return True
            End If
            If Convert.ToString(ctx.Session("id_Person")) = "1" Then
                Return True
            End If
            If Not IsZero(ctx.Session("adminPanel_Code")) Then
                Return True
            End If
        End If
        Return False
    End Function

    Public Sub EnsureAuthSession()
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing OrElse ctx.Session Is Nothing Then
            Return
        End If
        Dim role As String = ""
        Dim user As String = ""
        Dim age As Double = -1
        ReadTicket(role, user, age)
        If role <> "" Then
            If age >= 0 AndAlso age <= IdleMinutes Then
                If role = "admin" Then
                    BindAdminSession(If(String.IsNullOrEmpty(user), "admin", user), False)
                Else
                    BindPersonSession(If(String.IsNullOrEmpty(user), "person", user), False)
                End If
            End If
            Return
        End If
        ' Legacy session flags (pre-upgrade).
        If Convert.ToString(ctx.Session(LocalAdminFlag)) = "1" OrElse Convert.ToString(ctx.Session("id_Admin")) = "1" Then
            BindAdminSession(If(String.IsNullOrEmpty(Convert.ToString(ctx.Session("UID"))), "admin", Convert.ToString(ctx.Session("UID"))), False)
        ElseIf Convert.ToString(ctx.Session(LocalPersonFlag)) = "1" OrElse Convert.ToString(ctx.Session("id_Person")) = "1" Then
            BindPersonSession(If(String.IsNullOrEmpty(Convert.ToString(ctx.Session("UID"))), "person", Convert.ToString(ctx.Session("UID"))), False)
        End If
    End Sub

    Private Function IsZero(ByVal value As Object) As Boolean
        If value Is Nothing OrElse value Is DBNull.Value Then
            Return True
        End If
        If Convert.ToString(value) = "" OrElse Convert.ToString(value) = "0" Then
            Return True
        End If
        Return False
    End Function

    Public Function IsSupervisor() As Boolean
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing OrElse ctx.Session Is Nothing Then
            Return False
        End If
        If Convert.ToString(ctx.Session(LocalPersonFlag)) = "1" Then
            Return False
        End If
        Return Convert.ToString(ctx.Session("super")) = "1"
    End Function

    Public Function AdminMenuHtml() As String
        Return _
            "<li id=""myAccount""><a href=""empty.aspx""><i class=""fa fa-home""></i>داشبورد</a></li>" & _
            "<li id=""myAccount7""><a href=""#""><i class=""fa fa-th-large""></i>استودیو سایت</a><ul id=""myAccountBox7"">" & _
            "<li><a href=""SiteStudio.aspx"">همه صفحات</a></li>" & _
            "<li><a href=""SiteStudio.aspx?g=home"">صفحه اصلی</a></li>" & _
            "<li><a href=""SiteStudio.aspx?g=about"">درباره ما</a></li>" & _
            "<li><a href=""SiteStudio.aspx?g=projects"">پروژه ها</a></li>" & _
            "<li><a href=""SiteStudio.aspx?g=services"">خدمات</a></li>" & _
            "<li><a href=""SiteStudio.aspx?g=contact"">تماس با ما</a></li>" & _
            "<li><a href=""SiteStudio.aspx?g=news"">اخبار</a></li>" & _
            "<li><a href=""SiteStudio.aspx?g=gallery"">گالری</a></li>" & _
            "<li><a href=""SiteStudio.aspx?g=footer"">فوتر و شبکه ها</a></li>" & _
            "<li><a href=""SiteStudio.aspx?g=chrome"">هویت و لوگو</a></li></ul></li>" & _
            "<li id=""myAccount1""><a href=""#""><i class=""fa fa-newspaper-o""></i>مطالب اخبار</a><ul id=""myAccountBox1""><li><a href=""SiteStudio.aspx?g=news"">لیست اخبار</a></li><li><a href=""SiteStudioEdit.aspx?part=news1"">ویرایش خبر</a></li></ul></li>" & _
            "<li id=""myAccount2""><a href=""#""><i class=""fa fa-picture-o""></i>آلبوم گالری</a><ul id=""myAccountBox2""><li><a href=""Gallery_List.aspx"">لیست گالری</a></li><li><a href=""Gallery_frm.aspx"">ثبت گالری</a></li></ul></li>" & _
            "<li id=""myAccount5""><a href=""#""><i class=""fa fa-info-circle""></i>درباره ما</a><ul id=""myAccountBox5""><li><a href=""SiteStudio.aspx?g=about"">صفحات و عکس ها</a></li><li><a href=""SiteStudioEdit.aspx?part=hero_Certificates"">گواهینامه ها</a></li></ul></li>" & _
            "<li id=""myAccount8""><a href=""#""><i class=""fa fa-envelope""></i>تماس و پیام ها</a><ul id=""myAccountBox8""><li><a href=""SiteStudio.aspx?g=contact"">عکس صفحات تماس</a></li><li><a href=""ContactUs_List.aspx"">پیام های تماس</a></li></ul></li>" & _
            "<li id=""myAccount6""><a href=""#""><i class=""fa fa-users""></i>کاربران پنل</a><ul id=""myAccountBox6""><li><a href=""PanelUsers.aspx?kind=admin"">مدیر سامانه</a></li><li><a href=""PanelUsers.aspx?kind=person"">پرسنل</a></li><li><a href=""DataStatus.aspx"">وضعیت ذخیره‌سازی</a></li></ul></li>"
    End Function

    Public Function PersonMenuHtml() As String
        Return _
            "<li id=""myAccount""><a href=""KartablePerson.aspx""><i class=""fa fa-home""></i>کارتابل</a></li>" & _
            "<li id=""myAccount1""><a href=""Suggestion_List.aspx""><i class=""fa fa-inbox""></i>پیشنهادها</a></li>"
    End Function

    Public Delegate Sub PageLoadCallback(ByVal e As EventArgs)

    Public Sub RunPageLoad(ByVal page As Page, ByVal e As EventArgs, ByVal loadBase As PageLoadCallback)
        EnsureAuthSession()
        If IsLocallyLoggedIn() Then
            If Convert.ToString(page.Session(LocalAdminFlag)) = "1" OrElse Convert.ToString(page.Session("id_Admin")) = "1" Then
                page.Session("menu_admin") = AdminMenuHtml()
            End If
            If Convert.ToString(page.Session(LocalPersonFlag)) = "1" OrElse Convert.ToString(page.Session("id_Person")) = "1" Then
                page.Session("menu_admin_Person") = PersonMenuHtml()
            End If
            Return
        End If
        loadBase(e)
    End Sub

    Public Sub CancelRedirect(ByVal page As Page)
        Dim resp As HttpResponse = page.Response
        Try
            Thread.ResetAbort()
        Catch
        End Try
        resp.Clear()
        resp.StatusCode = 200
        resp.StatusDescription = "OK"
        resp.RedirectLocation = Nothing
        resp.SuppressContent = False
        Try
            Dim t As Type = GetType(HttpResponse)
            Dim flags As BindingFlags = BindingFlags.Instance Or BindingFlags.NonPublic
            Dim names() As String = New String() {"_isRequestBeingRedirected", "isRequestBeingRedirected", "_redirectLocation", "redirectLocation"}
            Dim name As String
            For Each name In names
                Dim f As FieldInfo = t.GetField(name, flags)
                If f IsNot Nothing Then
                    If f.FieldType Is GetType(Boolean) Then
                        f.SetValue(resp, False)
                    Else
                        f.SetValue(resp, Nothing)
                    End If
                End If
            Next
        Catch
        End Try
    End Sub

    ''' <summary>
    ''' DENY-BY-DEFAULT panel detection. Returns True for every .aspx page that is
    ''' NOT part of the public website. On this sub-language site the panel does not
    ''' exist at all: PanelAuthModule redirects every panel page (including the local
    ''' InputToPanel.aspx) to the main English site's login.
    ''' </summary>
    Public Function IsPanelPath(ByVal path As String) As Boolean
        If String.IsNullOrEmpty(path) Then
            Return False
        End If
        Dim file As String = IO.Path.GetFileName(path).ToLowerInvariant()
        If Not file.EndsWith(".aspx") Then
            Return False
        End If

        ' Login entry is panel surface (never public).
        If file.StartsWith("inputtopanel") Then
            Return True
        End If

        ' ---- Public website allowlist ------------------------------------------
        Select Case file
            Case "index.aspx", "default.aspx", _
                 "aboutus.aspx", "history.aspx", "messageceo.aspx", "leadership.aspx", _
                 "pillars.aspx", "organizationpolicy.aspx", "certificates.aspx", _
                 "acknowledgments.aspx", "internationalarena.aspx", _
                 "building.aspx", "pipelines.aspx", "gasboosterstation.aspx", _
                 "facilitiesequipment.aspx", "watetransmissionpipelines.aspx", _
                 "designservices.aspx", "operationsservices.aspx", "buyservices.aspx", _
                 "employers.aspx", "news.aspx", "article.aspx", "articleshow.aspx", _
                 "gallery.aspx", "contactus.aspx", "law.aspx", "links.aspx", _
                 "privacy.aspx", "fielsdownload.aspx", "aparat_viewer.aspx", _
                 "calender.aspx", "captcha.aspx"
                Return False
        End Select

        ' Everything else is panel surface -> redirected to the main site login.
        Return True
    End Function
End Module
