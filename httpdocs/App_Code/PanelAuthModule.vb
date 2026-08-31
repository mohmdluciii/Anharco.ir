Option Explicit On
Option Strict Off

Imports System.Web
Imports System.Web.UI

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
        LocalPanelSupport.EnsureAuthSession()
        SiteVisits.HitIfPublic()
    End Sub
End Class
