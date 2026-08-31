Public Partial Class Chart1
    Inherits System.Web.UI.Page
    Dim amount_str As String = ""
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Session("scriptSave") = ""
        End If
        If IsPostBack = False Then
            Session("scriptSave") = ""
            fill_Combo_PM()

            If Request.QueryString("ref") = 1 Then
                cmb_PM.SelectedValue = mdlPublic.fetch_name_Object("tblPersonPM", "rowID_PersonPM", "rowID_PM", Request.QueryString("rowID_PersonPM"))
                fetch_PersonPM()
            End If
            cmb_PM.SelectedIndex = 1
            btnSearch_Click(sender, e)
        End If
    End Sub
    Private Function fetch_numberPersonTop() As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        str = "select count(*) from tblPersonPM"
        str = str & " where rowID_PM=" & cmb_PM.SelectedValue
        str = str & " and codeLevel_PersonPM=1"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = True Then
                fetch_numberPersonTop = 0
            Else
                fetch_numberPersonTop = c.rs.Fields(0).Value
            End If
        End If
        c.DisConnectOfDB()
    End Function
    Private Sub fetch_PersonPM()
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim totalNumber As Integer = fetch_numberPersonTop()
        Dim row As Integer = 0
        str = "select * from tblPersonPM"
        str = str & " where rowID_PM=" & cmb_PM.SelectedValue
        str = str & " and codeLevel_PersonPM=1"
        str = str & " order by codeLevel_PersonPM"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        amount_str = amount_str & "<script>"
        amount_str = amount_str & "$(function() {"
        amount_str = amount_str & "var datascource ="
        If c.CheckRecordset = True Then
            Do While Not c.rs.EOF
                If row + 1 = totalNumber Then
                    amount_str = amount_str & "{"
                    If c.rs.Fields("type_PersonPM").Value = 3 Then
                        amount_str = amount_str & "'link' : '', 'id': '" & c.rs.Fields("logoCompany_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "',"
                    Else
                        amount_str = amount_str & "'link' : '', 'id': '" & c.rs.Fields("pic_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("name_PersonPM").Value) & " " & ReplaceForYekan(c.rs.Fields("lName_PersonPM").Value) & "',"
                    End If

                    amount_str = amount_str & "'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "'"
                    fetch_ChildPersonPM(c.rs.Fields("rowID_PersonPM").Value)
                    amount_str = amount_str & "};"
                Else
                    amount_str = amount_str & "{"
                    If c.rs.Fields("type_PersonPM").Value = 3 Then
                        amount_str = amount_str & "'link' : '', 'id': '" & c.rs.Fields("logoCompany_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "',"
                    Else
                        amount_str = amount_str & "'link' : '', 'id': '" & c.rs.Fields("pic_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("name_PersonPM").Value) & " " & ReplaceForYekan(c.rs.Fields("lName_PersonPM").Value) & "',"
                    End If
                    amount_str = amount_str & "'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "'"
                    fetch_ChildPersonPM(c.rs.Fields("rowID_PersonPM").Value)
                    amount_str = amount_str & "},"
                End If

                row = row + 1
                c.rs.MoveNext()
            Loop
        End If
        c.DisConnectOfDB()

        amount_str = amount_str & " $('#chart-container').orgchart({"
        amount_str = amount_str & "'data' : datascource,"
        'amount_str = amount_str & "'visibleLevel': 2,"
        amount_str = amount_str & "'nodeContent': 'title',"
        amount_str = amount_str & "'nodeID': 'id',"
        amount_str = amount_str & "'createNode': function($node, data) {"
        amount_str = amount_str & "var secondMenuIcon = $('<i>', {"
        amount_str = amount_str & "'class': 'fa fa-search-plus second-menu-icon',"
        amount_str = amount_str & "click: function() {"
        amount_str = amount_str & "$(this).siblings('.second-menu').toggle();"
        amount_str = amount_str & "}"
        amount_str = amount_str & "});"
        amount_str = amount_str & "var secondMenu = '<div onclick=location.href=@' + data.link + '@ class=@second-menu@><img class=@avatar@ src=@../pic_PersonPM/' + data.id + '@></div>';"
        amount_str = amount_str & "$node.append(secondMenuIcon).append(secondMenu);"
        amount_str = amount_str & "}"
        amount_str = amount_str & "});"
        amount_str = amount_str & "});"
        amount_str = amount_str & "</script>"
        Session("chart") = Replace(amount_str, "@", """")
    End Sub
    Private Sub fetch_ChildPersonPM(ByVal rowID_PersonPM As Integer)
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim counter As Integer = 0
        str = "select * from tblPersonPM"
        str = str & " where codeParent_PersonPM=" & rowID_PersonPM
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            amount_str = amount_str & ",'children': ["
            Do While Not c.rs.EOF
                If counter > 0 Then
                    amount_str = amount_str & "{"
                    If c.rs.Fields("type_PersonPM").Value = 3 Then
                        If c.rs.Fields("logoCompany_PersonPM").Value <> "" Then
                            If c.rs.Fields("logoCompany_PersonPM").Value <> "" Then
                                amount_str = amount_str & "'link' : '','id': '" & c.rs.Fields("logoCompany_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                            Else
                                amount_str = amount_str & "'link' : '','id': '" & "default.png" & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                            End If

                        Else
                            amount_str = amount_str & "'link' : '','id': '" & "default.png" & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        End If


                    Else
                        If c.rs.Fields("pic_PersonPM").Value <> "" Then
                            amount_str = amount_str & "'link' : '','id': '" & c.rs.Fields("pic_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("name_PersonPM").Value) & " " & ReplaceForYekan(c.rs.Fields("lName_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        Else
                            amount_str = amount_str & "'link' : '','id': '" & "default.png" & "','name': '" & ReplaceForYekan(c.rs.Fields("name_PersonPM").Value) & " " & ReplaceForYekan(c.rs.Fields("lName_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        End If

                    End If

                    fetch_ChildPersonPM(c.rs.Fields("rowID_PersonPM").Value)

                Else
                    amount_str = amount_str & "{"
                    If c.rs.Fields("type_PersonPM").Value = 3 Then
                        If c.rs.Fields("logoCompany_PersonPM").Value <> "" Then
                            amount_str = amount_str & "'link' : '','id': '" & c.rs.Fields("logoCompany_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        Else
                            amount_str = amount_str & "'link' : '','id': '" & "default.png" & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        End If

                    Else
                        If c.rs.Fields("pic_PersonPM").Value <> "" Then
                            amount_str = amount_str & "'link' : '','id': '" & c.rs.Fields("pic_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("name_PersonPM").Value) & " " & ReplaceForYekan(c.rs.Fields("lName_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        Else
                            amount_str = amount_str & "'link' : '','id': '" & "default.png" & "','name': '" & ReplaceForYekan(c.rs.Fields("name_PersonPM").Value) & " " & ReplaceForYekan(c.rs.Fields("lName_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        End If

                    End If
                    fetch_ChildPersonPM(c.rs.Fields("rowID_PersonPM").Value)

                End If

                counter = counter + 1
                c.rs.MoveNext()
                If c.rs.EOF = True Then
                    amount_str = amount_str & "}"
                Else
                    amount_str = amount_str & "},"
                End If
            Loop
            amount_str = amount_str & "]"
        End If
        c.DisConnectOfDB()
    End Sub
    Private Function fetch_Level_Class(ByVal amount_Level As Integer)
        Select Case amount_Level
            Case 2
                fetch_Level_Class = "middle-level"
            Case 3
                fetch_Level_Class = "product-dept"
            Case 4
                fetch_Level_Class = "rd-dept"
            Case 5
                fetch_Level_Class = "pipeline1"
            Case 6
                fetch_Level_Class = "frontend1"
            Case Else
                fetch_Level_Class = "frontend1"
        End Select
    End Function


    Private Sub fill_Combo_PM()
        Dim f As New FillComboBox
        Dim str As String = ""
        str = "select * from tblPM"
        str = str & " order by rowID_PM"
        f.fillcombo(cmb_PM, str, "Name_PM", "rowID_PM")
    End Sub

    Private Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        fetch_PersonPM()
    End Sub
End Class