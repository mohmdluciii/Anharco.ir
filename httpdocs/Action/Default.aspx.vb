Public Partial Class _Default
    Inherits System.Web.UI.Page
    Dim amount_IP As String = ""
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim refererSite As String = ""
        If (HttpContext.Current.Request.UrlReferrer) Is Nothing Then
            If IsPostBack = False Then
                amount_IP = Server.HtmlEncode(Request.UserHostAddress)
            End If
            Dim myary() As String
            Dim amount_Section As String = ""
            Dim myDate As New MdlDate
            Dim currentDay As String = myDate.convertorDate(System.DateTime.Today)
            Dim CurrentTime As String = System.DateTime.Now.Hour & ":" & System.DateTime.Now.Minute
            myary = Split(Request.QueryString("target"), "_")
            Dim rowID_Catch As Integer = Code.fetch_Statement(myary(0))
            If status_Package(rowID_Catch) = True Then
                amount_Section = Code.fetch_Statement(myary(1))

                Select Case LCase(amount_Section)
                    Case LCase("Telegram_Catch")
                        If fetch_IP_CatchAmar(currentDay, amount_IP, 1, 0, 0) = True Then
                            'If LCase(refererSite) = LCase("telegram.org") Then
                            Add_ToCatch_Amar(Code.fetch_Statement(myary(0)), 1, 0, 0)
                            'End If

                        End If
                    Case LCase("Instagram_Catch")
                        If fetch_IP_CatchAmar(currentDay, amount_IP, 0, 1, 0) = True Then
                            'If LCase(refererSite) = LCase("instagram.com") Then
                            Add_ToCatch_Amar(Code.fetch_Statement(myary(0)), 0, 1, 0)
                            'End If

                        End If

                    Case LCase("Aparat_Catch")
                        If fetch_IP_CatchAmar(currentDay, amount_IP, 0, 0, 1) = True Then
                            'If LCase(refererSite) = LCase("aparat.com") Then
                            Add_ToCatch_Amar(Code.fetch_Statement(myary(0)), 0, 0, 1)
                            'End If
                        End If

                End Select
            End If
            Response.Redirect(mdlPublic.fetch_name_Object("tblBuyPackage", "rowID_BuyPackage", "Link_BuyPackage", mdlPublic.fetch_name_Object("tblCatch", "rowID_Catch", "rowID_BuyPackage", rowID_Catch)))
        Else
            refererSite = HttpContext.Current.Request.UrlReferrer.Host
            If IsPostBack = False Then
                amount_IP = Server.HtmlEncode(Request.UserHostAddress)
            End If
            Dim myary() As String
            Dim amount_Section As String = ""
            Dim myDate As New MdlDate
            Dim currentDay As String = myDate.convertorDate(System.DateTime.Today)
            Dim CurrentTime As String = System.DateTime.Now.Hour & ":" & System.DateTime.Now.Minute
            myary = Split(Request.QueryString("target"), "_")
            Dim rowID_Catch As Integer = Code.fetch_Statement(myary(0))
            If status_Package(rowID_Catch) = True Then
                amount_Section = Code.fetch_Statement(myary(1))

                Select Case LCase(amount_Section)
                    Case LCase("Telegram_Catch")
                        If fetch_IP_CatchAmar(currentDay, amount_IP, 1, 0, 0) = True Then
                            If LCase(refererSite) = LCase("telegram.org") Then
                                Add_ToCatch_Amar(Code.fetch_Statement(myary(0)), 1, 0, 0)
                            End If

                        End If
                    Case LCase("Instagram_Catch")
                        If fetch_IP_CatchAmar(currentDay, amount_IP, 0, 1, 0) = True Then
                            If LCase(refererSite) = LCase("instagram.com") Then
                                Add_ToCatch_Amar(Code.fetch_Statement(myary(0)), 0, 1, 0)
                            End If

                        End If

                    Case LCase("Aparat_Catch")
                        If fetch_IP_CatchAmar(currentDay, amount_IP, 0, 0, 1) = True Then
                            If LCase(refererSite) = LCase("aparat.com") Then
                                Add_ToCatch_Amar(Code.fetch_Statement(myary(0)), 0, 0, 1)
                            End If
                        End If

                End Select
            End If
            Response.Redirect(mdlPublic.fetch_name_Object("tblBuyPackage", "rowID_BuyPackage", "Link_BuyPackage", mdlPublic.fetch_name_Object("tblCatch", "rowID_Catch", "rowID_BuyPackage", rowID_Catch)))
        End If
        


    End Sub
    Private Sub Add_ToCatch_Amar(ByVal rowID_Catch As Integer, ByVal Telegram_CatchAmar As Integer, ByVal Instagram_CatchAmar As Integer, ByVal Aparat_CatchAmar As Integer)
        Dim c As New ConnectionClass
        Dim ins As New InsertToDB
        Dim f As New IdentityAmount
        Dim myDate As New MdlDate
        f.tableName = "tblCatchAmar"
        f.fieldKey = "rowID_CatchAmar"
        ins.TableName = "tblCatchAmar"
        ins.ListFields = "rowID_BuyPackage,RowID_Member,rowID_Catch,RowID_Marketer,rowID_CatchAmar,Date_CatchAmar,Hour_CatchAmar,Telegram_CatchAmar,Instagram_CatchAmar,Aparat_CatchAmar,Ip_CatchAmar"
        ins.ListValues = mdlPublic.fetch_name_Object("tblCatch", "rowID_Catch", "rowID_BuyPackage", rowID_Catch) & "," & mdlPublic.fetch_name_Object("tblCatch", "rowID_Catch", "RowID_Member", rowID_Catch) & "," & rowID_Catch & "," & mdlPublic.fetch_name_Object("tblCatch", "rowID_Catch", "RowID_Marketer", rowID_Catch) & "," & f.fetchAmountKey & "," & myDate.convertorDate(System.DateTime.Today) & "," & System.DateTime.Now.Hour & "," & Telegram_CatchAmar & "," & Instagram_CatchAmar & "," & Aparat_CatchAmar & "," & amount_IP
        c.ConnectToDB()
        c.OpenRecordSet(ins.InsertToDb, ConnectionClass.myE.ForwardOnly)
        c.DisConnectOfDB()
    End Sub

    Private Function fetch_IP_CatchAmar(ByVal Date_CatchAmar As String, ByVal IP As String, ByVal Telegram_CatchAmar As Integer, ByVal Instagram_CatchAmar As Integer, ByVal Aparat_CatchAmar As Integer) As Boolean
        Dim c As New ConnectionClass
        Dim str As String = ""
        str = "select * from tblCatchAmar"
        str = str & " where Date_CatchAmar='" & Date_CatchAmar & "'"
        str = str & " and Ip_CatchAmar='" & IP & "'"
        If Telegram_CatchAmar = 1 Then
            str = str & " and Telegram_CatchAmar=1"
        End If

        If Instagram_CatchAmar = 1 Then
            str = str & " and Instagram_CatchAmar=1"
        End If

        If Aparat_CatchAmar = 1 Then
            str = str & " and Aparat_CatchAmar=1"
        End If
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            fetch_IP_CatchAmar = False
        Else
            fetch_IP_CatchAmar = True
        End If
        c.DisConnectOfDB()
    End Function

    Protected Sub WriteCookie(ByVal rowID_Catch As Integer)
        Dim nameCookie As New HttpCookie("Visit")
        nameCookie.Values("Visit") = rowID_Catch
        nameCookie.Expires = DateTime.Now.AddDays(1)
        Response.Cookies.Add(nameCookie)
    End Sub
    Protected Function ReadCookie() As Boolean
        'Fetch the Cookie using its Key.
        Dim nameCookie As HttpCookie = Request.Cookies("Visit")

        'If Cookie exists fetch its value.
        If nameCookie IsNot Nothing Then
            ReadCookie = True
        Else
            ReadCookie = False
        End If
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