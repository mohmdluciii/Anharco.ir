Public Partial Class Index2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If check_Valid_Ads() = True Then
            Dim amount_Link As String = mdlPublic.fetch_name_Object("tblCustomerSp", "rowID_CustomerSp", "link_CustomerSp", Code.fetch_Statement(Request.QueryString("c")))
            update_Number_Click()
            Response.Redirect(amount_Link)
        End If
    End Sub
    Private Function check_Valid_Ads() As Boolean
        Dim str As String = ""
        Dim c As New ConnectionClass
        Dim mydate As New MdlDate
        str = "select * from tblCustomerSp"
        str = str & " where Status_CustomerSp=1"
        str = str & " and rowID_CustomerSp=" & Code.fetch_Statement(Request.QueryString("c"))
        str = str & " and (sdate_CustomerSp<='" & myDate.convertorDate(System.DateTime.Today) & "' and '" & myDate.convertorDate(System.DateTime.Today) & "'<=edate_CustomerSp)"
        str = str & " order by rowID_CustomerSp desc"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            check_Valid_Ads = True
        Else
            check_Valid_Ads = False
        End If
        c.DisConnectOfDB()
    End Function
    Private Sub update_Number_Click()
        Dim c As New ConnectionClass
        Dim upd As New UpdateDB
        upd.tableName = "tblCustomerSp"
        upd.FiledsForUpdate = "noClick_CustomerSp=noClick_CustomerSp+1"
        upd.Condition = "rowID_CustomerSp=" & Code.fetch_Statement(Request.QueryString("c"))
        c.ConnectToDB()
        c.OpenRecordSet(upd.updateStr, ConnectionClass.myE.ForwardOnly)
        c.DisConnectOfDB()
    End Sub
End Class