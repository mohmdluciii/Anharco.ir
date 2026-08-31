Public Partial Class _Default1
    Inherits System.Web.UI.Page
    Dim amount_IP As String = ""
    Dim rowID_CatchSetting As Integer = 0
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim refererSite As String = ""
        refererSite = HttpContext.Current.Request.UrlReferrer.Host
        If IsPostBack = False Then
            amount_IP = Server.HtmlEncode(Request.UserHostAddress)
        End If
        Dim myary() As String
        Dim amount_Section As String = ""
        Dim myDate As New MdlDate
        Dim currentDay As String = myDate.convertorDate(System.DateTime.Today)
        Dim CurrentTime As String = System.DateTime.Now.Hour & ":" & System.DateTime.Now.Minute

        Dim rowID_Catch As Integer = Code.fetch_Statement(Request.QueryString("code"))
        Dim name_Site As String = Request.QueryString("site")

        If status_Package(rowID_Catch) = True Then

            If validate_Site_Name(rowID_Catch, name_Site) = True Then
                If fetch_Uniq_IP_VisitSite(currentDay, amount_IP) = True Then
                    Add_ToCatch_Amar(rowID_Catch)
                End If
            End If
        End If
        Dim amountaaaa As String = mdlPublic.fetch_name_Object1("tblBuyPackage", "rowID_BuyPackage", "Link_BuyPackage", mdlPublic.fetch_name_Object("tblCatch", "rowID_Catch", "rowID_BuyPackage", rowID_Catch))
        Response.Redirect(amountaaaa)

    End Sub
    Private Sub Add_ToCatch_Amar(ByVal rowID_Catch As Integer)
        Dim c As New ConnectionClass
        Dim ins As New InsertToDB
        Dim f As New IdentityAmount
        Dim myDate As New MdlDate
        f.tableName = "tblCatchSettingAmar"
        f.fieldKey = "RowID_CatchSettingAmar"
        ins.TableName = "tblCatchSettingAmar"
        ins.ListFields = "rowID_BuyPackage,RowID_Member,rowID_Catch,RowID_Marketer,rowID_CatchSetting,RowID_CatchSettingAmar,Date_CatchSettingAmar,hour_CatchSettingAmar,Ip_CatchSettingAmar"
        ins.ListValues = mdlPublic.fetch_name_Object("tblCatch", "rowID_Catch", "rowID_BuyPackage", rowID_Catch) & "," & mdlPublic.fetch_name_Object("tblCatch", "rowID_Catch", "RowID_Member", rowID_Catch) & "," & rowID_Catch & "," & mdlPublic.fetch_name_Object("tblCatch", "rowID_Catch", "RowID_Marketer", rowID_Catch) & "," & rowID_CatchSetting & "," & f.fetchAmountKey & "," & myDate.convertorDate(System.DateTime.Today) & "," & System.DateTime.Now.Hour & "," & amount_IP
        c.ConnectToDB()
        c.OpenRecordSet(ins.InsertToDb, ConnectionClass.myE.ForwardOnly)
        c.DisConnectOfDB()
    End Sub

    Private Function validate_Site_Name(ByVal amount_rowID_Catch As Integer, ByVal amounr_site As String) As Boolean
        Dim c As New ConnectionClass
        Dim str As String = ""
        str = "select * from tblCatchSetting"
        str = str & " where rowID_Catch=" & amount_rowID_Catch
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        validate_Site_Name = False
        rowID_CatchSetting = 0
        If c.CheckRecordset = True Then
            Do While Not c.rs.EOF
                If LCase(c.rs.Fields("domain_CatchSetting").Value) = LCase(amounr_site) Then
                    rowID_CatchSetting = c.rs.Fields("rowID_CatchSetting").Value
                    validate_Site_Name = True
                    Exit Do
                End If
                c.rs.MoveNext()
            Loop
        End If
        c.DisConnectOfDB()
    End Function

    Private Function fetch_Uniq_IP_VisitSite(ByVal Date_CatchSettingAmar As String, ByVal Ip_CatchSettingAmar As String) As Boolean
        Dim c As New ConnectionClass
        Dim str As String = ""
        str = "select * from tblCatchSettingAmar"
        str = str & " where rowID_CatchSetting=" & rowID_CatchSetting
        str = str & " and Date_CatchSettingAmar='" & Date_CatchSettingAmar & "'"
        str = str & " and Ip_CatchSettingAmar='" & Ip_CatchSettingAmar & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            fetch_Uniq_IP_VisitSite = False
        Else
            fetch_Uniq_IP_VisitSite = True
        End If
        c.DisConnectOfDB()
    End Function

    Private Function status_Package(ByVal amount_rowID_Catch As Integer) As Boolean
        status_Package = True
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        Dim total_click As Double = 0
        Dim noClick_Package As Integer = 0
        Dim Title_Package As String = ""
        Dim price_Package As Double = 0
        str = "select tblBuyPackage.*,tblCatch.* from tblBuyPackage,tblCatch"
        str = str & " where rowID_Catch=" & amount_rowID_Catch
        str = str & " and tblBuyPackage.rowID_BuyPackage=tblCatch.rowID_BuyPackage"
        'str = str & " and status_BuyPackage=1"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            noClick_Package = mdlPublic.fetch_name_Object("tblPackage", "rowID_Package", "noClick_Package", c.rs.Fields("rowID_Package").Value)
            price_Package = mdlPublic.fetch_name_Object("tblPackage", "rowID_Package", "price_Package", c.rs.Fields("rowID_Package").Value)
            total_click = fetch_sum_CatchAmar(c.rs.Fields("rowID_BuyPackage").Value) + fetch_sum_CatchSettingAmar(c.rs.Fields("rowID_BuyPackage").Value)
            If c.rs.Fields("noCharge_BuyPackage").Value * noClick_Package <= total_click Then
                status_Package = False
            Else
                status_Package = True
            End If
        End If
        c.DisConnectOfDB()


    End Function
    Private Function fetch_sum_CatchAmar(ByVal rowID_BuyPackage As Integer) As Double
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim sum_amount As Double = 0
        str = "select sum(Telegram_CatchAmar),sum(Instagram_CatchAmar),sum(Aparat_CatchAmar) from tblCatchAmar"
        str = str & " where rowID_BuyPackage=" & rowID_BuyPackage

        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                sum_amount = sum_amount + c.rs.Fields(0).Value
            End If
            If IsDBNull(c.rs.Fields(1).Value) = False Then
                sum_amount = sum_amount + c.rs.Fields(1).Value
            End If
            If IsDBNull(c.rs.Fields(2).Value) = False Then
                sum_amount = sum_amount + c.rs.Fields(2).Value
            End If
        End If
        c.DisConnectOfDB()
        fetch_sum_CatchAmar = sum_amount
    End Function

    Private Function fetch_sum_CatchSettingAmar(ByVal rowID_BuyPackage As Integer) As Double
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim sum_amount As Double = 0
        str = "select count(*) from tblCatchSettingAmar"
        str = str & " where rowID_BuyPackage=" & rowID_BuyPackage

        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                sum_amount = sum_amount + c.rs.Fields(0).Value
            End If
        End If
        c.DisConnectOfDB()
        fetch_sum_CatchSettingAmar = sum_amount
    End Function

End Class