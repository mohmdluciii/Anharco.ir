Option Explicit On
Option Strict Off

Imports System
Imports System.IO
Imports System.Web

Public Class WebpPreferModule
    Implements IHttpModule

    Public Sub Init(ByVal app As HttpApplication) Implements IHttpModule.Init
        AddHandler app.BeginRequest, AddressOf OnBeginRequest
    End Sub

    Public Sub Dispose() Implements IHttpModule.Dispose
    End Sub

    Private Sub OnBeginRequest(ByVal sender As Object, ByVal e As EventArgs)
        Dim app As HttpApplication = TryCast(sender, HttpApplication)
        If app Is Nothing OrElse app.Context Is Nothing Then
            Return
        End If
        Dim ctx As HttpContext = app.Context
        Dim reqPath As String = ctx.Request.Path
        If reqPath Is Nothing Then
            Return
        End If
        Dim lower As String = reqPath.ToLowerInvariant()
        If Not (lower.EndsWith(".jpg") OrElse lower.EndsWith(".jpeg") OrElse lower.EndsWith(".png") OrElse lower.EndsWith(".bmp")) Then
            Return
        End If
        Dim accept As String = Convert.ToString(ctx.Request.Headers("Accept"))
        If accept Is Nothing OrElse accept.IndexOf("image/webp", StringComparison.OrdinalIgnoreCase) < 0 Then
            Return
        End If
        Try
            Dim full As String = ctx.Server.MapPath(reqPath)
            Dim webp As String = IO.Path.ChangeExtension(full, ".webp")
            If File.Exists(webp) Then
                Dim virt As String = reqPath
                Dim dot As Integer = virt.LastIndexOf("."c)
                If dot > 0 Then
                    virt = virt.Substring(0, dot) & ".webp"
                End If
                ctx.RewritePath(virt, False)
            End If
        Catch
        End Try
    End Sub
End Class
