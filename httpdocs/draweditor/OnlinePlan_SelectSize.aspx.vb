Public Partial Class OnlinePlan_SelectSize
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            fill_Size()
        End If
    End Sub
   
    Private Sub fill_Size()
        Dim f As New FillComboBox
        Dim str As String = ""
        str = "select * from tblSize"
        str = str & " order by name_Size"
        f.fillcombo(cmb_size, str, "name_Size", "rowID_Size")
    End Sub
   
    Private Sub cmb_size_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmb_size.SelectedIndexChanged
        Response.Redirect("OnlinePlan.aspx?S=" & cmb_size.SelectedItem.Text)
    End Sub
End Class