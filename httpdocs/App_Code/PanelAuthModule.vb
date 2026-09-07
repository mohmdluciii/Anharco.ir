Option Explicit On
Option Strict Off

Imports System.Web
Imports System.Web.UI

''' <summary>
''' Central gate for the admin panel.
''' - Every panel page (see LocalPanelSupport.IsPanelPath) requires a valid signed
'''   ticket (anhar_panel_auth cookie). Anything else is redirected to InputToPanel.aspx.
''' - Sliding 15-minute idle session: each authenticated panel request re-issues the
'''   ticket with a fresh timestamp. After LocalPanelSupport.IdleMinutes without any
'''   panel request the user is logged out and must sign in again.
''' - Non-panel (public) pages are never gated.
''' </summary>
Public Class PanelAuthModule
    Implements IHttpModule

    Public Sub Init(ByVal app As HttpApplication) Implements IHttpModule.Init
        AddHandler app.AcquireRequestState, AddressOf OnAcquireRequestState
        AddHandler app.PreRequestHandlerExecute, AddressOf OnPreRequestHandlerExecute
    End Sub

    Public Sub Dispose() Implements IHttpModule.Dispose
    End Sub

    Private Sub OnAcquireRequestState(ByVal sender As Object, ByVal e As EventArgs)
        Dim app As HttpApplication = CType(sender, HttpApplication)
        If app.Context.Session Is Nothing Then
            Return
        End If
        LocalPanelSupport.EnsureAuthSession()
    End Sub

    Private Sub OnPreRequestHandlerExecute(ByVal sender As Object, ByVal e As EventArgs)
        Dim app As HttpApplication = CType(sender, HttpApplication)
        Dim page As Page = TryCast(app.Context.Handler, Page)
        If page Is Nothing Then
            Return
        End If
        AddHandler page.PreLoad, AddressOf OnPagePreLoad
    End Sub

    Private Sub OnPagePreLoad(ByVal sender As Object, ByVal e As EventArgs)
        Dim page As Page = TryCast(sender, Page)
        If page Is Nothing Then
            Return
        End If

        LocalPanelSupport.EnsureAuthSession()

        ' ---- Gate panel pages ----------------------------------------------------
        Dim path As String = page.Request.Url.AbsolutePath
        Dim file As String = IO.Path.GetFileName(path).ToLowerInvariant()
        Dim isLoginPage As Boolean = file.StartsWith("inputtopanel")
        Dim isPanelPage As Boolean = LocalPanelSupport.IsPanelPath(path) AndAlso Not isLoginPage

        If isPanelPage Then
            Dim role As String = ""
            Dim user As String = ""
            Dim age As Double = -1
            LocalPanelSupport.ReadTicket(role, user, age)
            Dim authed As Boolean = (role <> "" AndAlso age >= 0 AndAlso age <= LocalPanelSupport.IdleMinutes)

            If Not authed Then
                ' Also honor legacy in-session logins (pre-upgrade) so nobody is
                ' thrown out mid-session after deploying.
                Dim s = page.Session
                Dim legacy As Boolean = False
                If s IsNot Nothing Then
                    legacy = (Convert.ToString(s(LocalPanelSupport.LocalAdminFlag)) = "1") OrElse _
                             (Convert.ToString(s(LocalPanelSupport.LocalPersonFlag)) = "1") OrElse _
                             (Convert.ToString(s("id_Admin")) = "1") OrElse _
                             (Convert.ToString(s("id_Person")) = "1")
                End If
                If Not legacy Then
                    page.Response.Redirect("InputToPanel.aspx", False)
                    HttpContext.Current.ApplicationInstance.CompleteRequest()
                    Return
                End If
            Else
                ' Sliding renewal: fresh timestamp on every authenticated request.
                LocalPanelSupport.WriteAuthTicket(role, user)
            End If
        End If

        SiteVisits.HitIfPublic()
    End Sub
End Class
