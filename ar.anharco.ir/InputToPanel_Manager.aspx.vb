Option Explicit On
Option Strict Off

Partial Class InputToPanel_ManagerLocal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        LocalPanelSupport.EnsureAuthSession()
        If LocalPanelSupport.IsLocallyLoggedIn() Then
            Dim back As Uri = Request.UrlReferrer
            If back IsNot Nothing AndAlso String.Equals(back.Host, Request.Url.Host, StringComparison.OrdinalIgnoreCase) Then
                Dim path As String = back.AbsolutePath.ToLowerInvariant()
                If path.IndexOf("inputtopanel") < 0 Then
                    Response.Redirect(back.PathAndQuery, True)
                    Return
                End If
            End If
            Response.Redirect("empty.aspx", True)
            Return
        End If
        Response.Redirect("InputToPanel.aspx?mode=manager", True)
    End Sub
End Class
