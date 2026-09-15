Option Explicit On
Option Strict Off

Partial Class InputToPanel_PersonLocal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        LocalPanelSupport.EnsureAuthSession()
        If LocalPanelSupport.IsLocallyLoggedIn() Then
            Response.Redirect("KartablePerson.aspx", True)
            Return
        End If
        Response.Redirect("InputToPanel.aspx?mode=person", True)
    End Sub
End Class
