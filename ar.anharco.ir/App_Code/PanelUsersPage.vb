Option Explicit On
Option Strict Off

Imports System.IO
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Xml

Public Class PanelUsersPage
    Inherits Page

    Protected kind As String = "admin"
    Protected dockHtml As String = ""
    Protected listHtml As String = ""
    Protected lblStatus As Label
    Protected hidId As HiddenField
    Protected txtName As TextBox
    Protected txtLname As TextBox
    Protected txtSemat As TextBox
    Protected txtUser As TextBox
    Protected txtPass As TextBox
    Protected txtCode As TextBox
    Protected txtPhone As TextBox
    Protected txtEmail As TextBox
    Protected txtFax As TextBox
    Protected chkSuper As CheckBox
    Protected fuPhoto As FileUpload
    Protected hidWebp As HiddenField
    Protected rowLname As Panel
    Protected rowCode As Panel
    Protected rowSuper As Panel
    Protected rowPersonExtra As Panel
    Protected imgPreview As Image

    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        MyBase.OnLoad(e)
        LocalPanelSupport.EnsureAuthSession()
        If Not LocalPanelSupport.IsLocallyLoggedIn() Then
            Response.Redirect("InputToPanel.aspx", True)
            Return
        End If
        kind = Convert.ToString(Request("kind"))
        If kind <> "person" Then
            kind = "admin"
        End If
        dockHtml = StudioNav.DockHtml("", "", "")
        Wire()
        Dim flash As String = Convert.ToString(Session("PanelMsg"))
        If flash <> "" Then
            Session("PanelMsg") = ""
            If lblStatus IsNot Nothing Then
                lblStatus.Text = HttpUtility.HtmlEncode(flash)
            End If
        End If
        If Convert.ToString(Request("del")) <> "" Then
            Dim delMsg As String = ""
            Try
                PanelUserStore.Delete(kind, Convert.ToString(Request("del")))
                delMsg = "کاربر با موفقیت حذف شد."
            Catch ex As Exception
                delMsg = "حذف انجام نشد: " & ex.Message & " (دسترسی نوشتن به فولدر App_Data روی هاست لازم است)"
            End Try
            Session("PanelMsg") = delMsg
            Response.Redirect("PanelUsers.aspx?kind=" & kind, True)
            Return
        End If
        ApplyKindUi()
        listHtml = PanelUserStore.ListHtml(kind)
        If Not IsPostBack Then
            FillForm(Convert.ToString(Request("id")))
        End If
    End Sub

    Private Function FindDeep(ByVal root As Control, ByVal id As String) As Control
        If root Is Nothing Then
            Return Nothing
        End If
        Dim c As Control = root.FindControl(id)
        If c IsNot Nothing Then
            Return c
        End If
        Dim child As Control
        For Each child In root.Controls
            c = FindDeep(child, id)
            If c IsNot Nothing Then
                Return c
            End If
        Next
        Return Nothing
    End Function

    Private Sub Wire()
        If lblStatus Is Nothing Then lblStatus = TryCast(FindDeep(Me, "lblStatus"), Label)
        If hidId Is Nothing Then hidId = TryCast(FindDeep(Me, "hidId"), HiddenField)
        If txtName Is Nothing Then txtName = TryCast(FindDeep(Me, "txtName"), TextBox)
        If txtLname Is Nothing Then txtLname = TryCast(FindDeep(Me, "txtLname"), TextBox)
        If txtSemat Is Nothing Then txtSemat = TryCast(FindDeep(Me, "txtSemat"), TextBox)
        If txtUser Is Nothing Then txtUser = TryCast(FindDeep(Me, "txtUser"), TextBox)
        If txtPass Is Nothing Then txtPass = TryCast(FindDeep(Me, "txtPass"), TextBox)
        If txtCode Is Nothing Then txtCode = TryCast(FindDeep(Me, "txtCode"), TextBox)
        If txtPhone Is Nothing Then txtPhone = TryCast(FindDeep(Me, "txtPhone"), TextBox)
        If txtEmail Is Nothing Then txtEmail = TryCast(FindDeep(Me, "txtEmail"), TextBox)
        If txtFax Is Nothing Then txtFax = TryCast(FindDeep(Me, "txtFax"), TextBox)
        If chkSuper Is Nothing Then chkSuper = TryCast(FindDeep(Me, "chkSuper"), CheckBox)
        If fuPhoto Is Nothing Then fuPhoto = TryCast(FindDeep(Me, "fuPhoto"), FileUpload)
        If hidWebp Is Nothing Then hidWebp = TryCast(FindDeep(Me, "hidWebp"), HiddenField)
        If rowLname Is Nothing Then rowLname = TryCast(FindDeep(Me, "rowLname"), Panel)
        If rowCode Is Nothing Then rowCode = TryCast(FindDeep(Me, "rowCode"), Panel)
        If rowSuper Is Nothing Then rowSuper = TryCast(FindDeep(Me, "rowSuper"), Panel)
        If rowPersonExtra Is Nothing Then rowPersonExtra = TryCast(FindDeep(Me, "rowPersonExtra"), Panel)
        If imgPreview Is Nothing Then imgPreview = TryCast(FindDeep(Me, "imgPreview"), Image)
    End Sub

    Private Sub ApplyKindUi()
        Dim isPerson As Boolean = (kind = "person")
        If rowLname IsNot Nothing Then rowLname.Visible = Not isPerson
        If rowCode IsNot Nothing Then rowCode.Visible = Not isPerson
        If rowSuper IsNot Nothing Then rowSuper.Visible = Not isPerson
        If rowPersonExtra IsNot Nothing Then rowPersonExtra.Visible = isPerson
    End Sub

    Private Sub FillForm(ByVal id As String)
        hidId.Value = id
        If String.IsNullOrEmpty(id) Then
            txtName.Text = ""
            If txtLname IsNot Nothing Then txtLname.Text = ""
            txtSemat.Text = ""
            txtUser.Text = ""
            txtPass.Text = ""
            If txtCode IsNot Nothing Then txtCode.Text = ""
            If txtPhone IsNot Nothing Then txtPhone.Text = ""
            If txtEmail IsNot Nothing Then txtEmail.Text = ""
            If txtFax IsNot Nothing Then txtFax.Text = ""
            If chkSuper IsNot Nothing Then chkSuper.Checked = False
            If imgPreview IsNot Nothing Then imgPreview.Visible = False
            Return
        End If
        Dim n As XmlNode = PanelUserStore.FindById(kind, id)
        If n Is Nothing Then
            Return
        End If
        txtName.Text = PanelUserStore.NodeAttr(n, "name")
        If txtLname IsNot Nothing Then txtLname.Text = PanelUserStore.NodeAttr(n, "lname")
        txtSemat.Text = PanelUserStore.NodeAttr(n, "semat")
        txtUser.Text = PanelUserStore.NodeAttr(n, "username")
        txtPass.Text = ""
        If txtCode IsNot Nothing Then txtCode.Text = PanelUserStore.NodeAttr(n, "code")
        If txtPhone IsNot Nothing Then txtPhone.Text = PanelUserStore.NodeAttr(n, "phone")
        If txtEmail IsNot Nothing Then txtEmail.Text = PanelUserStore.NodeAttr(n, "email")
        If txtFax IsNot Nothing Then txtFax.Text = PanelUserStore.NodeAttr(n, "fax")
        If chkSuper IsNot Nothing Then chkSuper.Checked = (PanelUserStore.NodeAttr(n, "super") = "1")
        Dim photo As String = PanelUserStore.NodeAttr(n, "photo")
        If imgPreview IsNot Nothing AndAlso photo <> "" Then
            imgPreview.ImageUrl = photo
            imgPreview.Visible = True
        End If
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs)
        Wire()
        If String.IsNullOrEmpty(txtUser.Text.Trim()) Then
            lblStatus.Text = "شناسه کاربری لازم است."
            listHtml = PanelUserStore.ListHtml(kind)
            Return
        End If
        Dim id As String = hidId.Value
        Try
            If kind = "admin" Then
                Dim code As String = "1234"
                If txtCode IsNot Nothing AndAlso txtCode.Text.Trim() <> "" Then
                    code = txtCode.Text.Trim()
                End If
                Dim pass As String = txtPass.Text.Trim()
                If String.IsNullOrEmpty(id) AndAlso pass = "" Then
                    pass = "1234"
                End If
                Dim superAdmin As Boolean = (chkSuper IsNot Nothing AndAlso chkSuper.Checked)
                id = PanelUserStore.SaveAdmin(id, txtUser.Text.Trim(), pass, code, txtName.Text.Trim(), txtLname.Text.Trim(), txtSemat.Text.Trim(), superAdmin)
            Else
                Dim photo As String = SavePersonPhoto()
                Dim pass As String = txtPass.Text.Trim()
                If String.IsNullOrEmpty(id) AndAlso pass = "" Then
                    pass = "1234"
                End If
                id = PanelUserStore.SavePerson(id, txtUser.Text.Trim(), pass, txtName.Text.Trim(), txtSemat.Text.Trim(), txtPhone.Text.Trim(), txtEmail.Text.Trim(), txtFax.Text.Trim(), photo)
            End If
            Session("PanelMsg") = "اطلاعات کاربر با موفقیت ذخیره شد."
            Response.Redirect("PanelUsers.aspx?kind=" & kind, True)
        Catch ex As Exception
            lblStatus.Text = "ذخیره انجام نشد: " & HttpUtility.HtmlEncode(ex.Message)
            listHtml = PanelUserStore.ListHtml(kind)
        End Try
    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("PanelUsers.aspx?kind=" & kind, True)
    End Sub

    Private Function SavePersonPhoto() As String
        Dim bytes() As Byte = SiteStudioStore.BytesFromHidden(hidWebp)
        Dim ext As String = ".webp"
        If bytes Is Nothing Then
            If fuPhoto Is Nothing OrElse Not fuPhoto.HasFile Then
                Return ""
            End If
            ext = Path.GetExtension(fuPhoto.FileName).ToLowerInvariant()
            If ext = ".gif" Then
                bytes = fuPhoto.FileBytes
            Else
                Return ""
            End If
        End If
        Dim dir As String = Server.MapPath("~/SiteStudio")
        If Not Directory.Exists(dir) Then
            Directory.CreateDirectory(dir)
        End If
        Dim name As String = "person_" & DateTime.Now.ToString("yyyyMMddHHmmss") & ext
        File.WriteAllBytes(Path.Combine(dir, name), bytes)
        Return "SiteStudio/" & name
    End Function
End Class
