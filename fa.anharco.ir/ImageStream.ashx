<%@ WebHandler Language="VB" Class="ImageStreamHandler" %>
Option Explicit On
Option Strict Off

Imports System.Web

''' <summary>
''' Serves images stored in the writable data folder (App_Data/media or
''' SiteData/media) when the host denies writes to the classic ~/SiteStudio
''' folder. URL form: ImageStream.ashx?f=filename.ext
''' The handler is public by design: the images it serves are the site's own
''' media (same files that would live in SiteStudio/ when writable).
''' </summary>
Public Class ImageStreamHandler
    Implements IHttpHandler

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return True
        End Get
    End Property

    Public Sub ProcessRequest(ByVal ctx As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim name As String = ""
        If ctx.Request.QueryString("f") IsNot Nothing Then
            name = ctx.Request.QueryString("f").Trim()
        End If
        ' Only simple file names are accepted (no paths, no traversal).
        If name = "" OrElse name.IndexOf("/") >= 0 OrElse name.IndexOf("\") >= 0 OrElse name.IndexOf("..") >= 0 Then
            ctx.Response.StatusCode = 404
            Return
        End If
        Dim ext As String = IO.Path.GetExtension(name).ToLowerInvariant()
        Dim allowed As String = ".jpg.jpeg.png.gif.webp.ico.svg.bmp"
        If allowed.IndexOf(ext) < 0 Then
            ctx.Response.StatusCode = 404
            Return
        End If
        Dim dir As String = SiteStudioStore.MediaFilesDir()
        If dir = "" Then
            ctx.Response.StatusCode = 404
            Return
        End If
        Dim full As String = IO.Path.Combine(dir, name)
        If Not IO.File.Exists(full) Then
            ctx.Response.StatusCode = 404
            Return
        End If
        Dim mime As String = "application/octet-stream"
        Select Case ext
            Case ".jpg", ".jpeg"
                mime = "image/jpeg"
            Case ".png"
                mime = "image/png"
            Case ".gif"
                mime = "image/gif"
            Case ".webp"
                mime = "image/webp"
            Case ".ico"
                mime = "image/x-icon"
            Case ".svg"
                mime = "image/svg+xml"
            Case ".bmp"
                mime = "image/bmp"
        End Select
        ctx.Response.ContentType = mime
        ctx.Response.Cache.SetExpires(DateTime.Now.AddDays(7))
        ctx.Response.Cache.SetCacheability(HttpCacheability.Public)
        ctx.Response.Cache.SetLastModified(IO.File.GetLastWriteTimeUtc(full))
        ctx.Response.TransmitFile(full)
    End Sub
End Class
