Option Explicit On
Option Strict Off

Imports System.Web

Public Class LangProxyModule
    Implements IHttpModule

    Public Sub Init(ByVal app As HttpApplication) Implements IHttpModule.Init
    End Sub

    Public Sub Dispose() Implements IHttpModule.Dispose
    End Sub
End Class
