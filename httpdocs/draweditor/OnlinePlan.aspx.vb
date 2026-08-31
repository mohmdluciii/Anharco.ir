Imports System.IO
Imports System.Net
Imports System.Text
Partial Public Class OnlinePlan
    Inherits System.Web.UI.Page
    Dim strConnect As String = mdlPublic.fetch_ConnectionString.ToString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim myary() As String
        If IsPostBack = False Then
            If Request.QueryString("s") <> "" Then
                myary = Split(Request.QueryString("s"), "*")
                Session("size_width") = Int(myary(1))
                Session("size_height") = Int(myary(0))
            End If
            Session("scriptSave") = ""
        End If
    End Sub
    Private Function fetch_width_size_Page(ByVal amount_size) As Integer
        Select Case amount_size
            Case 0
                fetch_width_size_Page = amount_size
            Case 1
                fetch_width_size_Page = amount_size
            Case 2
                fetch_width_size_Page = amount_size
            Case 3
                fetch_width_size_Page = amount_size
            Case 4
                fetch_width_size_Page = amount_size
        End Select
    End Function
    Private Function fetch_Height_size_Page(ByVal amount_size) As Integer
        Select Case amount_size
            Case 0
                fetch_Height_size_Page = amount_size
            Case 1
                fetch_Height_size_Page = amount_size
            Case 2
                fetch_Height_size_Page = amount_size
            Case 3
                fetch_Height_size_Page = amount_size
            Case 4
                fetch_Height_size_Page = amount_size
        End Select
    End Function
    Protected Sub SaveImage()
        Dim myary() As String
        myary = Split(txtPath.Text, ",")
        Dim strm As String = txtPath.Text
        'this is a simple white background image
        Dim myfilename = String.Format("{0}", Guid.NewGuid)
        'Generate unique filename
        Dim filepath As String = (Request.ServerVariables("APPL_PHYSICAL_PATH") & "/Files_Attach/" + (myfilename + ".png"))
        Dim bytess = Convert.FromBase64String(strm)
        Dim imageFile = New FileStream(filepath, FileMode.Create)
        imageFile.Write(bytess, 0, bytess.Length)
        imageFile.Flush()
        add_file(myfilename + ".png")
    End Sub
    Private Sub add_file(ByVal amount_File As String)
        Dim conn As ConnectToDB
        Dim ins As InsertToDBNet
        Dim f As New IdentityAmount
        Dim myDate As New MdlDate
        conn = New ConnectToDB
        conn.StrConn = strConnect
        ins = New InsertToDBNet
        f.tableName = "tblFile"
        f.fieldKey = "rowID_File"
        ins.TableName = "tblFile"
        ins.ListFields = "rowID_File,title_File,picFile_File,Date_File,Time_File"
        ins.ListValues = f.fetchAmountKey & "," & "طراحی فایل" & "," & amount_File & "," & myDate.convertorDate(System.DateTime.Today) & "," & System.DateTime.Now.Hour & ":" & System.DateTime.Now.Minute
        ins.InsertString(conn.db)
    End Sub
   

    Dim base64String As String = Nothing


   

    Public Function Base64ToImage() As System.Drawing.Image
        Dim myary() As String
        myary = Split(txtPath.Text, ",")
        Dim imageBytes() As Byte = Convert.FromBase64String(txtPath.Text)
        Dim ms As MemoryStream = New MemoryStream(imageBytes, 0, imageBytes.Length)
        ms.Write(imageBytes, 0, imageBytes.Length)
        Dim image As System.Drawing.Image = System.Drawing.Image.FromStream(ms, True)
        Return image
    End Function

   
    'Private Sub saveImage()
    '    Dim myfilename = String.Format("{0}", Guid.NewGuid)
    '    Base64ToImage.Save(Request.ServerVariables("APPL_PHYSICAL_PATH") & "/Files_Attach/" + (myfilename + ".jpeg"))
    'End Sub

    

    Private Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If txtPath.Text <> "" Then
            Dim amount_str As String = ""
            Dim amount_str1 As String = ""
            SaveImage()
            amount_str = "<table cellpadding=5 cellspacing=0 id=otb style='z-index:10;width:6cm;background-color:#F8F8F8;z-index:10;border:.4mm solid #4E4D4F;font-family:yekan,arial;font-size:10pt;color:#4E4D4F;border-radius:10px;position:relative;margin-top:25%;margin-left:auto;margin-right:auto;' dir=rtl>"
            amount_str = amount_str & "<tr style='height:.7cm;background-color:#EA098D'><td colspan=2 style='color:white;font-weight:600;font-size:10pt;padding-right:5px'> ذخیره موفقیت آمیز&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='../images/close.gif' alt='بستن فرم ' style='position:relative;top:.05cm;left:.1cm;cursor:Pointer' onclick=otb.style.visibility='hidden'></td></tr>"
            amount_str = amount_str & "<tr><td align='right' style='color:#4E4D4F;padding-right:5px'>طرح شما با موفقیت در وب سایت ذخیره شد.</td></tr>"
            amount_str = amount_str & "<tr><td align='right' style='color:#4E4D4F;padding-right:5px'>در بخش تنظیمات مدیریت فایل می توانید فایل را مشاهده نمائید</td></tr>"
            amount_str = amount_str & "</table>"
            lblShow.Text = amount_str

            amount_str1 = amount_str1 & "<script>"
            amount_str1 = amount_str1 & "window.onload=ShowSaveDialog;"
            amount_str1 = amount_str1 & " function ShowSaveDialog()"
            amount_str1 = amount_str1 & "{"
            amount_str1 = amount_str1 & "var saveContainer=document.getElementById (@saveDialog@).style.display=@inline-block@ ;"
            amount_str1 = amount_str1 & "}"
            amount_str1 = amount_str1 & "</script> "
            Session("scriptSave") = Replace(amount_str1, "@", """")

        End If
    End Sub
End Class