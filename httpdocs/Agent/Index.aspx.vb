Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Public Class Index4
    Inherits System.Web.UI.Page
    Dim strConnect As String = mdlPublic.fetch_ConnectionString.ToString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("c") <> "" Then
            If Len(Request.QueryString("c")) > 30 Then
                If InStr(Request.QueryString("c"), "$") > 0 Then
                    Dim Con As SqlConnection = New SqlConnection(strConnect)
                    Dim addsign As SqlCommand = New SqlCommand("SELECT meliCode_Marketer from tblMarketer WHERE meliCode_Marketer = @UID", Con)
                    addsign.Parameters.Add("@UID", SqlDbType.NVarChar, 100).Value = validationText.setValid_InputString(Code.fetch_Statement(Request.QueryString("c")))
                    Con.Open()
                    Dim dr As SqlDataReader
                    dr = addsign.ExecuteReader()
                    If dr.HasRows = True Then
                        Do While dr.Read
                            Session("meliCode_Marketer_Register_for_Agent") = dr.GetValue(0)
                        Loop
                    Else
                        Session("meliCode_Marketer_Register_for_Agent") = ""
                    End If
                    If Session("meliCode_Marketer_Register_for_Agent") <> "" Then
                        If check_code_MeliAgent() = False Then
                            Response.Redirect("../PanelMember_AddMember.aspx?a=" & Request.QueryString("a"))
                        Else
                            Response.Redirect("../PanelMember_AddMember_ToAgent.aspx?a=" & Request.QueryString("a"))
                        End If

                    End If
                End If
            End If
        End If
    End Sub
    Private Function check_code_MeliAgent() As Boolean
        Dim c As New ConnectionClass
        Dim str As String = ""
        str = "select * from tblRegister"
        str = str & " where meliCode_Register='" & Code.fetch_Statement(Request.QueryString("a")) & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            check_code_MeliAgent = True
            Session("Register_Old") = c.rs.Fields("rowID_Register").Value
        Else
            check_code_MeliAgent = False
        End If
        c.DisConnectOfDB()
    End Function
End Class