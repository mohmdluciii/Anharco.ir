Option Explicit On
Option Strict Off

Imports System.Web
Imports System.Web.UI

''' <summary>
''' Central gate for the admin panel (main English site).
''' - DENY BY DEFAULT: every .aspx page that is not on the public website
'''   allowlist (see LocalPanelSupport.IsPanelPath) is panel surface and
'''   requires a valid signed ticket (anhar_panel_auth cookie). Anything else
'''   is redirected to InputToPanel.aspx - the single login entry.
''' - The gate runs at AcquireRequestState, i.e. BEFORE the target page's code
'''   is ever instantiated/executed, so even broken legacy pages can neither
'''   render nor throw for anonymous visitors.
''' - Sliding 15-minute idle session: each authenticated panel request re-issues
'''   the ticket with a fresh timestamp. After LocalPanelSupport.IdleMinutes
'''   without any panel request the user is logged out and must sign in again.
''' </summary>
Public Class PanelAuthModule
    Implements IHttpModule

    Public Sub Init(ByVal app As HttpApplication) Implements IHttpModule.Init
        AddHandler app.AcquireRequestState, AddressOf OnAcquireRequestState
    End Sub

    Public Sub Dispose() Implements IHttpModule.Dispose
    End Sub

    Private Sub OnAcquireRequestState(ByVal sender As Object, ByVal e As EventArgs)
        Dim app As HttpApplication = CType(sender, HttpApplication)
        Dim ctx As HttpContext = app.Context
        If ctx Is Nothing OrElse ctx.Session Is Nothing Then
            Return
        End If

        LocalPanelSupport.EnsureAuthSession()

        Dim path As String = ctx.Request.FilePath
        Dim file As String = IO.Path.GetFileName(path).ToLowerInvariant()

        ' The unified login page is the only anonymous entry point.
        Dim isLoginPage As Boolean = (file = "inputtopanel.aspx")

        If LocalPanelSupport.IsPanelPath(path) AndAlso Not isLoginPage Then
            Dim role As String = ""
            Dim user As String = ""
            Dim age As Double = -1
            LocalPanelSupport.ReadTicket(role, user, age)
            Dim authed As Boolean = (role <> "" AndAlso age >= 0 AndAlso age <= LocalPanelSupport.IdleMinutes)

            If Not authed Then
                ' Honor legacy in-session logins (old W_ISM person/admin sessions)
                ' so nobody mid-session is thrown out after deploying.
                Dim s = ctx.Session
                Dim legacy As Boolean = False
                If s IsNot Nothing Then
                    legacy = (Convert.ToString(s(LocalPanelSupport.LocalAdminFlag)) = "1") OrElse _
                             (Convert.ToString(s(LocalPanelSupport.LocalPersonFlag)) = "1") OrElse _
                             (Convert.ToString(s("id_Admin")) = "1") OrElse _
                             (Convert.ToString(s("id_Person")) = "1")
                End If
                authed = legacy
            End If

            If Not authed Then
                ctx.Response.Redirect("InputToPanel.aspx", False)
                app.CompleteRequest()
                Return
            End If

            ' Sliding renewal: fresh timestamp on every authenticated request.
            If role <> "" Then
                LocalPanelSupport.WriteAuthTicket(role, user)
            End If
        End If

        SiteVisits.HitIfPublic()
    End Sub
End Class
