Option Explicit On
Option Strict Off

Imports System.Reflection
Imports System.Threading
Imports System.Web
Imports System.Web.SessionState
Imports System.Web.UI

Public Module LocalPanelSupport
    Public Const LocalAdminFlag As String = "local_admin"
    Public Const LocalPersonFlag As String = "local_person"
    Public Const AuthCookieName As String = "anhar_panel_auth"

    Public Sub BindAdminSession(ByVal uid As String)
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
        WriteAuthCookie("admin")
    End Sub

    Public Sub BindPersonSession(ByVal uid As String)
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
        WriteAuthCookie("person")
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
        Dim role As String = ReadAuthCookie()
        Return role = "admin" OrElse role = "person"
    End Function

    Public Sub EnsureAuthSession()
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing OrElse ctx.Session Is Nothing Then
            Return
        End If
        Dim role As String = ReadAuthCookie()
        If role = "admin" OrElse Convert.ToString(ctx.Session(LocalAdminFlag)) = "1" OrElse Convert.ToString(ctx.Session("id_Admin")) = "1" Then
            BindAdminSession(If(String.IsNullOrEmpty(Convert.ToString(ctx.Session("UID"))), "admin", Convert.ToString(ctx.Session("UID"))))
        ElseIf role = "person" OrElse Convert.ToString(ctx.Session(LocalPersonFlag)) = "1" OrElse Convert.ToString(ctx.Session("id_Person")) = "1" Then
            BindPersonSession(If(String.IsNullOrEmpty(Convert.ToString(ctx.Session("UID"))), "person", Convert.ToString(ctx.Session("UID"))))
        End If
    End Sub

    Private Function ReadAuthCookie() As String
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing OrElse ctx.Request Is Nothing Then
            Return ""
        End If
        Dim ck As HttpCookie = ctx.Request.Cookies(AuthCookieName)
        If ck Is Nothing OrElse String.IsNullOrEmpty(ck.Value) Then
            Return ""
        End If
        Return ck.Value.Trim().ToLowerInvariant()
    End Function

    Private Sub WriteAuthCookie(ByVal role As String)
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing Then
            Return
        End If
        Dim ck As New HttpCookie(AuthCookieName, role)
        ck.HttpOnly = True
        ck.Path = "/"
        ck.Expires = DateTime.Now.AddDays(1)
        ctx.Response.Cookies.Set(ck)
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
            "<li id=""myAccount6""><a href=""#""><i class=""fa fa-users""></i>کاربران پنل</a><ul id=""myAccountBox6""><li><a href=""PanelUsers.aspx?kind=admin"">مدیر سامانه</a></li><li><a href=""PanelUsers.aspx?kind=person"">پرسنل</a></li></ul></li>"
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
        If file = "sitestudio.aspx" OrElse file = "sitestudioedit.aspx" OrElse file = "panelusers.aspx" Then
            Return True
        End If
        If file.StartsWith("admin_") OrElse file.StartsWith("person_") OrElse file.StartsWith("news_") OrElse file.StartsWith("gallery_") Then
            Return True
        End If
        Return False
    End Function
End Module
