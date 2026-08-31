Public Partial Class ChartPersonPm1
    Inherits System.Web.UI.Page
    Dim amount_str As String = ""
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("adminPanel_Code") = 0 Then
            Response.Redirect("InputToPanel_Manager.aspx?e=1")
        ElseIf Fetch_Role.check_Role(Session("adminPanel_Code"), System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString) = False Then
            Response.Write("<link rel='stylesheet' href='fontawesome/css/font-awesome.min.css' /><style>@import url('persian-font.css');</style><div style='position:relative;top:0px;left:0px;width:100%;height:100%;display-inline-block;'><p style='position:relative;display:inline-block;width:100%;text-align:center;'><i class='fa fa-minus-circle' style='font-size:80pt;color:#ff0000;'></i></p><p style='position:relative;display:inline-block;width:100%;text-align:center;font-size:12pt;font-family:yekan;'>دسترسی این بخش برای شما مقدور نمی باشد برای کسب اطلاعات با مدیر سامانه تماس بگیرید </p><p style='position:relative;display:inline-block;width:100%;text-align:center;font-size:12pt;font-family:yekan;'><input type='button' onclick=location.href='empty.aspx' onmouseover=this.style.backgroundColor='#333'; onmouseout=this.style.backgroundColor='#ff0000'; style='font-size:11pt;font-family:yekan;color:#fff;background:#ff0000;cursor:pointer;border:0;padding:8px 10px 8px 10px;' value='بازگشت به صفحه اصلی'></p></div>")
            Response.End()
        End If
        If Session("UserInput") Is Nothing = True Then
            If Session("UserInput") = "" Then
                Session("UserInput") = mdlPublic.fetch_name_Object("tblAdmin", "rowID_Admin", "name_Admin + ' ' +  lName_Admin", Session("adminPanel_Code"))
            End If
        End If
        lblUser.Text = Session("UserInput")
        Me.Title = lblUser.Text
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
        End If

        lblUser.Text = mdlPublic.fetch_name_Object("tblAdmin", "rowID_Admin", "name_Admin + ' ' +  lName_Admin", Session("adminPanel_Code"))
        Menu_Inner.number_SelectMenu = 4
        Menu_Inner.number_SelectSubMenu = 412
        Session("menu_admin") = Menu_Inner.create_Menu
    End Sub
    Private Function fetch_numberPersonTop() As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        str = "select count(*) from tblPersonPM"
        str = str & " where rowID_PM=" & cmb_PM.SelectedValue
        str = str & " and codeLevel_PersonPM=1"
        'str = str & " order by codeLevel_PersonPM"
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
                        amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "', 'id': '" & c.rs.Fields("logoCompany_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "',"
                    Else
                        amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "', 'id': '" & c.rs.Fields("pic_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("name_PersonPM").Value) & " " & ReplaceForYekan(c.rs.Fields("lName_PersonPM").Value) & "',"
                    End If

                    amount_str = amount_str & "'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "'"
                    fetch_ChildPersonPM(c.rs.Fields("rowID_PersonPM").Value)
                    amount_str = amount_str & "};"
                Else
                    amount_str = amount_str & "{"
                    If c.rs.Fields("type_PersonPM").Value = 3 Then
                        amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "', 'id': '" & c.rs.Fields("logoCompany_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "',"
                    Else
                        amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "', 'id': '" & c.rs.Fields("pic_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("name_PersonPM").Value) & " " & ReplaceForYekan(c.rs.Fields("lName_PersonPM").Value) & "',"
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
        amount_str = amount_str & "'class': 'fa fa-info-circle second-menu-icon',"
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
                                amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "','id': '" & c.rs.Fields("logoCompany_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                            Else
                                amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "','id': '" & "default.png" & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                            End If

                        Else
                            amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "','id': '" & "default.png" & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        End If


                    Else
                        If c.rs.Fields("pic_PersonPM").Value <> "" Then
                            amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "','id': '" & c.rs.Fields("pic_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("name_PersonPM").Value) & " " & ReplaceForYekan(c.rs.Fields("lName_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        Else
                            amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "','id': '" & "default.png" & "','name': '" & ReplaceForYekan(c.rs.Fields("name_PersonPM").Value) & " " & ReplaceForYekan(c.rs.Fields("lName_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        End If

                    End If

                    fetch_ChildPersonPM(c.rs.Fields("rowID_PersonPM").Value)

                Else
                    amount_str = amount_str & "{"
                    If c.rs.Fields("type_PersonPM").Value = 3 Then
                        If c.rs.Fields("logoCompany_PersonPM").Value <> "" Then
                            amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "','id': '" & c.rs.Fields("logoCompany_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        Else
                            amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "','id': '" & "default.png" & "','name': '" & ReplaceForYekan(c.rs.Fields("Company_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        End If

                    Else
                        If c.rs.Fields("pic_PersonPM").Value <> "" Then
                            amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "','id': '" & c.rs.Fields("pic_PersonPM").Value & "','name': '" & ReplaceForYekan(c.rs.Fields("name_PersonPM").Value) & " " & ReplaceForYekan(c.rs.Fields("lName_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
                        Else
                            amount_str = amount_str & "'link' : '../PersonPM_frm1.aspx?rowID_PersonPM=" & c.rs.Fields("rowID_PersonPM").Value & "','id': '" & "default.png" & "','name': '" & ReplaceForYekan(c.rs.Fields("name_PersonPM").Value) & " " & ReplaceForYekan(c.rs.Fields("lName_PersonPM").Value) & "', 'title': '" & ReplaceForYekan(c.rs.Fields("Semat_PersonPM").Value) & "', 'className': '" & fetch_Level_Class(c.rs.Fields("codeLevel_PersonPM").Value) & "'"
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
        str = str & " order by Name_PM"
        f.fillcombo(cmb_PM, str, "Name_PM", "rowID_PM")
    End Sub

    Private Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        fetch_PersonPM()
    End Sub
End Class