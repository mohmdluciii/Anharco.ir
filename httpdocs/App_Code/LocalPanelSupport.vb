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

    Public Sub BindAdminSession(ByVal uid As String, Optional ByVal writeTicket As Boolean = True)
        Dim s As HttpSessionState = HttpContext.Current.Session
        If String.IsNullOrEmpty(uid) Then
            uid = "admin"
        End If
        Dim n As System.Xml.XmlNode = PanelUserStore.FindByUsername("admin", uid)
        Dim isSuper As Boolean = False
        Dim display As String = uid
        Dim semat As String = "مدیر سامانه"
        If n IsNot Nothing Then
            isSuper = PanelUserStore.IsSuperNode(n)
            display = PanelUserStore.FullName(n)
            semat = PanelUserStore.NodeAttr(n, "semat")
            If String.IsNullOrEmpty(semat) Then
                semat = If(isSuper, "سوپروایزر", "ویرایشگر محتوا")
            End If
        ElseIf String.Equals(uid, "admin", StringComparison.OrdinalIgnoreCase) Then
            isSuper = True
            display = "مدیر سامانه"
        End If
        s("UID") = uid
        s("id_Admin") = "1"
        s("username_Admin") = uid
        s("admin_name") = display
        s("admin_semat") = semat
        s("panel_role") = "admin"
        If isSuper Then
            s("super") = "1"
            s("super_admin") = 1
        Else
            s("super") = "0"
            s("super_admin") = 0
        End If
        s("numberBox") = 0
        s("number_Login_admin") = 1
        s("adminPanel_Code") = 1
        s("rowID_Admin") = 1
        s("rowID_admin") = 1
        s(LocalAdminFlag) = "1"
        s(LocalPersonFlag) = ""
        s("LogoPanel") = "images/logo.png"
        s("menu_admin") = AdminMenuHtml()
        If writeTicket Then
            WriteAuthTicket("admin", uid)
        End If
    End Sub

    Public Sub BindPersonSession(ByVal uid As String, Optional ByVal writeTicket As Boolean = True)
        Dim s As HttpSessionState = HttpContext.Current.Session
        If String.IsNullOrEmpty(uid) Then
            uid = "person"
        End If
        Dim n As System.Xml.XmlNode = PanelUserStore.FindByUsername("person", uid)
        Dim display As String = uid
        Dim semat As String = "کارشناس"
        If n IsNot Nothing Then
            display = PanelUserStore.FullName(n)
            semat = PanelUserStore.NodeAttr(n, "semat")
        Else
            display = "کاربر پرسنل"
        End If
        s("UID") = uid
        s("id_Person") = "1"
        s("id_Admin") = ""
        s("admin_name") = display
        s("admin_semat") = semat
        s("panel_role") = "person"
        s("super") = "0"
        s("super_admin") = 0
        s("numberBox") = 0
        s("number_Login_Person") = 1
        s("rowID_Admin") = 1
        s("adminPanel_Code") = 1
        s(LocalPersonFlag) = "1"
        s(LocalAdminFlag) = ""
        s("LogoPanel") = "images/logo.png"
        s("menu_admin_Person") = PersonMenuHtml()
        If writeTicket Then
            WriteAuthTicket("person", uid)
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
        Dim role As String = ""
        Dim user As String = ""
        Dim age As Double = -1
        ReadTicket(role, user, age)
        If role <> "" Then
            ' Sliding session: ticket must be younger than IdleMinutes.
            If age >= 0 AndAlso age <= IdleMinutes Then
                Return True
            End If
            ' Ticket valid but expired (idle too long) -> treated as logged out.
            Return False
        End If
        ' No valid ticket: fall back to legacy session flags (pre-upgrade logins).
        Dim ctx As HttpContext = HttpContext.Current
        If ctx IsNot Nothing AndAlso ctx.Session IsNot Nothing Then
            If Convert.ToString(ctx.Session(LocalAdminFlag)) = "1" OrElse Convert.ToString(ctx.Session(LocalPersonFlag)) = "1" Then
                Return True
            End If
            If Convert.ToString(ctx.Session("id_Admin")) = "1" OrElse Convert.ToString(ctx.Session("id_Person")) = "1" Then
                Return True
            End If
            If Not IsZero(ctx.Session("adminPanel_Code")) Then
                Return True
            End If
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

    Public Function DisplayName() As String
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing OrElse ctx.Session Is Nothing Then
            Return ""
        End If
        Dim nm As String = Convert.ToString(ctx.Session("admin_name")).Trim()
        If nm <> "" Then
            Return nm
        End If
        nm = Convert.ToString(ctx.Session("UID")).Trim()
        If nm <> "" Then
            Return nm
        End If
        Return "کاربر"
    End Function

    Public Function RoleLabel() As String
        If IsSupervisor() Then
            Return "سوپروایزر"
        End If
        Dim ctx As HttpContext = HttpContext.Current
        If ctx IsNot Nothing AndAlso ctx.Session IsNot Nothing Then
            If Convert.ToString(ctx.Session(LocalPersonFlag)) = "1" Then
                Dim semat As String = Convert.ToString(ctx.Session("admin_semat")).Trim()
                If semat <> "" Then
                    Return semat
                End If
                Return "پرسنل"
            End If
            Dim s2 As String = Convert.ToString(ctx.Session("admin_semat")).Trim()
            If s2 <> "" Then
                Return s2
            End If
        End If
        Return "ویرایشگر محتوا"
    End Function

    Public Function GreetingWord() As String
        Dim h As Integer = DateTime.Now.Hour
        If h >= 5 AndAlso h < 12 Then
            Return "صبح بخیر"
        End If
        If h >= 12 AndAlso h < 17 Then
            Return "ظهر بخیر"
        End If
        If h >= 17 AndAlso h < 20 Then
            Return "عصر بخیر"
        End If
        Return "شب بخیر"
    End Function

    Public Function GreetingLine() As String
        Return GreetingWord() & "، " & DisplayName()
    End Function

    Public Function WelcomeLine() As String
        Return "به پنل انهار خوش آمدید، " & DisplayName()
    End Function

    Public Function TopBarHtml() As String
        Dim home As String = "empty.aspx"
        If Convert.ToString(HttpContext.Current.Session(LocalPersonFlag)) = "1" Then
            home = "KartablePerson.aspx"
        End If
        Dim sb As New System.Text.StringBuilder()
        sb.Append("<header class=""dashTopBar"">")
        sb.Append("<div class=""dashTopGlow""></div>")
        sb.Append("<a class=""dashBrand"" href=""").Append(home).Append(""">")
        sb.Append("<span class=""dashHello"">")
        sb.Append("<b>").Append(HttpUtility.HtmlEncode(GreetingLine())).Append("</b>")
        sb.Append("<small>").Append(HttpUtility.HtmlEncode(WelcomeLine())).Append("</small>")
        sb.Append("</span></a>")
        sb.Append("<div class=""dashTopMeta"">")
        sb.Append("<span class=""dashRole"">").Append(HttpUtility.HtmlEncode(RoleLabel())).Append("</span>")
        sb.Append("<span class=""dashClock"" id=""dashClock""></span>")
        sb.Append("<a class=""dashTopBtn"" href=""SiteStudio.aspx"" title=""ویرایش سایت""><i class=""fa fa-picture-o""></i><span>متن و عکس</span></a>")
        If IsSupervisor() Then
            sb.Append("<a class=""dashTopBtn"" href=""PanelUsers.aspx?kind=admin"" title=""کاربران""><i class=""fa fa-users""></i><span>کاربران</span></a>")
        End If
        sb.Append("<a class=""dashTopOut"" href=""InputToPanel.aspx?e=1"" title=""خروج""><i class=""fa fa-power-off""></i></a>")
        sb.Append("</div></header>")
        Return sb.ToString()
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
        Dim uid As String = Convert.ToString(ctx.Session("UID"))
        If String.IsNullOrEmpty(uid) Then
            uid = user
        End If
        If role <> "" Then
            If age >= 0 AndAlso age <= IdleMinutes Then
                ' Authenticated and within idle window: refresh session data
                ' WITHOUT re-issuing the cookie (that happens in the module).
                If role = "admin" Then
                    BindAdminSession(If(String.IsNullOrEmpty(uid), "admin", uid), False)
                Else
                    BindPersonSession(If(String.IsNullOrEmpty(uid), "person", uid), False)
                End If
            End If
            ' Expired or invalid ticket: do nothing (treated as logged out).
            Return
        End If
        ' Legacy session flags (pre-upgrade login or session restored).
        If Convert.ToString(ctx.Session(LocalAdminFlag)) = "1" OrElse Convert.ToString(ctx.Session("id_Admin")) = "1" Then
            BindAdminSession(If(String.IsNullOrEmpty(uid), "admin", uid), False)
        ElseIf Convert.ToString(ctx.Session(LocalPersonFlag)) = "1" OrElse Convert.ToString(ctx.Session("id_Person")) = "1" Then
            BindPersonSession(If(String.IsNullOrEmpty(uid), "person", uid), False)
        End If
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

    Private Function IsZero(ByVal value As Object) As Boolean
        If value Is Nothing OrElse value Is DBNull.Value Then
            Return True
        End If
        If Convert.ToString(value) = "" OrElse Convert.ToString(value) = "0" Then
            Return True
        End If
        Return False
    End Function

    Public Function AdminMenuHtml() As String
        Dim html As String = _
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
            "<li id=""myAccount8""><a href=""#""><i class=""fa fa-envelope""></i>تماس و پیام ها</a><ul id=""myAccountBox8""><li><a href=""SiteStudio.aspx?g=contact"">عکس صفحات تماس</a></li><li><a href=""ContactUs_List.aspx"">پیام های تماس</a></li></ul></li>"
        If IsSupervisor() Then
            html &= "<li id=""myAccount6""><a href=""#""><i class=""fa fa-users""></i>کاربران پنل</a><ul id=""myAccountBox6""><li><a href=""PanelUsers.aspx?kind=admin"">مدیر سامانه</a></li><li><a href=""PanelUsers.aspx?kind=person"">پرسنل</a></li><li><a href=""DataStatus.aspx"">وضعیت ذخیره‌سازی</a></li></ul></li>"
        End If
        Return html
    End Function

    Public Function PersonMenuHtml() As String
        Return _
            "<li id=""myAccount""><a href=""KartablePerson.aspx""><i class=""fa fa-home""></i>کارتابل</a></li>" & _
            "<li id=""myAccount7""><a href=""SiteStudio.aspx""><i class=""fa fa-picture-o""></i>ویرایش متن و عکس</a></li>" & _
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

    Public Function IsPanelPath(ByVal path As String) As Boolean
        If String.IsNullOrEmpty(path) Then
            Return False
        End If
        Dim file As String = IO.Path.GetFileName(path).ToLowerInvariant()
        If file.StartsWith("inputtopanel") Then
            Return True
        End If
        If file = "empty.aspx" OrElse file = "emptypage.aspx" OrElse file.StartsWith("kartable") Then
            Return True
        End If
        If file.StartsWith("workdaily") OrElse file.StartsWith("kartablek") Then
            Return True
        End If
        If file.EndsWith("_list.aspx") OrElse file.EndsWith("_frm.aspx") OrElse file.EndsWith("_edit.aspx") OrElse file.EndsWith("_delete.aspx") Then
            Return True
        End If
        If file = "sitestudio.aspx" OrElse file = "sitestudioedit.aspx" OrElse file = "panelusers.aspx" OrElse file = "datastatus.aspx" Then
            Return True
        End If
        If file.StartsWith("admin_") OrElse file.StartsWith("person_") OrElse file.StartsWith("news_") OrElse file.StartsWith("gallery_") Then
            Return True
        End If
        Return False
    End Function
End Module
