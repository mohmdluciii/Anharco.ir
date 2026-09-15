Option Explicit On
Option Strict Off

Imports System.Web
Imports System.Web.UI

''' <summary>
''' Central gate for the Persian sub-language site (fa.anharco.ir).
''' The admin panel does NOT exist here: every panel page - including this
''' site's own InputToPanel.aspx - is redirected to the main English site's
''' login (LocalPanelSupport.MainSiteUrl = http://anharco.ir/InputToPanel.aspx).
''' The main site then checks the signed ticket and demands login first.
''' The gate runs at AcquireRequestState, before any page code executes.
''' Public pages are served normally.
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

        Dim path As String = ctx.Request.FilePath

        ' Deny-by-default: anything that is not a public page is panel surface
        ' and this sub-site has no panel at all -> straight to the main site.
        If LocalPanelSupport.IsPanelPath(path) Then
            ctx.Response.Redirect(LocalPanelSupport.MainSiteUrl, False)
            app.CompleteRequest()
            Return
        End If

        LocalPanelSupport.EnsureAuthSession()
        SiteVisits.HitIfPublic()
    End Sub
End Class
