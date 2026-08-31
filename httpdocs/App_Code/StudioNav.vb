Option Explicit On
Option Strict Off

Imports System.Collections.Generic
Imports System.Text
Imports System.Web

Public Module StudioNav
    Public Function DockHtml(ByVal lang As String, ByVal groupId As String, ByVal part As String) As String
        If String.IsNullOrEmpty(lang) Then
            lang = SiteStudioStore.DetectLang()
        End If
        Dim sb As New StringBuilder()
        sb.Append("<aside class=""studioDock"" id=""studioDock"">")
        sb.Append("<div class=""studioDockHead"">بخش های ویرایش</div>")
        Dim fileName As String = ""
        Dim onDash As Boolean = False
        Try
            fileName = IO.Path.GetFileName(HttpContext.Current.Request.Path).ToLowerInvariant()
            onDash = (fileName = "empty.aspx")
        Catch
        End Try
        sb.Append(DockLink("empty.aspx", "داشبورد", onDash, "fa-home"))
        sb.Append(DockLink("SiteStudio.aspx?lang=" & lang, "همه صفحات", (fileName = "sitestudio.aspx" AndAlso groupId = "" AndAlso part = ""), "fa-th-large"))
        Dim groups As List(Of String()) = SiteStudioCatalog.AllGroups()
        Dim g As String()
        For Each g In groups
            Dim href As String = "SiteStudio.aspx?lang=" & lang & "&g=" & g(0)
            Dim onGroup As Boolean = (fileName = "sitestudio.aspx" AndAlso groupId = g(0))
            sb.Append(DockLink(href, g(1), onGroup, IconOf(g(0))))
        Next
        sb.Append("<div class=""studioDockHead"">کاربران پنل</div>")
        sb.Append(DockLink("PanelUsers.aspx?kind=admin", "مدیر سامانه", fileName.StartsWith("admin_") OrElse (fileName = "panelusers.aspx" AndAlso Convert.ToString(HttpContext.Current.Request("kind")) <> "person"), "fa-user-circle"))
        sb.Append(DockLink("PanelUsers.aspx?kind=person", "پرسنل", fileName.StartsWith("person_") OrElse (fileName = "panelusers.aspx" AndAlso Convert.ToString(HttpContext.Current.Request("kind")) = "person"), "fa-users"))
        sb.Append("</aside>")
        sb.Append("<a class=""studioDockFab"" href=""#studioDock"" title=""بخش ها""><i class=""fa fa-th-large""></i></a>")
        sb.Append("<script type=""text/javascript"" src=""Graphic/PanelAvatar.js?v=av1""></script>")
        Return sb.ToString()
    End Function

    Public Function NeighborHtml(ByVal lang As String, ByVal part As String) As String
        Dim parts As List(Of String()) = PartSequence()
        Dim i As Integer
        Dim idx As Integer = -1
        For i = 0 To parts.Count - 1
            If parts(i)(0) = part Then
                idx = i
                Exit For
            End If
        Next
        If idx < 0 Then
            Return ""
        End If
        Dim sb As New StringBuilder()
        sb.Append("<div class=""studioPager"">")
        If idx > 0 Then
            sb.Append("<a class=""pagerPrev"" href=""SiteStudioEdit.aspx?lang=")
            sb.Append(HttpUtility.HtmlAttributeEncode(lang))
            sb.Append("&amp;part=")
            sb.Append(HttpUtility.HtmlAttributeEncode(parts(idx - 1)(0)))
            sb.Append("""><i class=""fa fa-angle-right""></i> ")
            sb.Append(HttpUtility.HtmlEncode(parts(idx - 1)(1)))
            sb.Append("</a>")
        Else
            sb.Append("<span></span>")
        End If
        If idx < parts.Count - 1 Then
            sb.Append("<a class=""pagerNext"" href=""SiteStudioEdit.aspx?lang=")
            sb.Append(HttpUtility.HtmlAttributeEncode(lang))
            sb.Append("&amp;part=")
            sb.Append(HttpUtility.HtmlAttributeEncode(parts(idx + 1)(0)))
            sb.Append(""">")
            sb.Append(HttpUtility.HtmlEncode(parts(idx + 1)(1)))
            sb.Append(" <i class=""fa fa-angle-left""></i></a>")
        Else
            sb.Append("<span></span>")
        End If
        sb.Append("</div>")
        Return sb.ToString()
    End Function

    Public Function GroupOfPart(ByVal part As String) As String
        Dim fields As List(Of StudioField) = SiteStudioCatalog.All()
        Dim f As StudioField
        For Each f In fields
            If CompoundKey(f.Key) = part Then
                Return f.GroupId
            End If
        Next
        Return ""
    End Function

    Public Function CompoundKey(ByVal key As String) As String
        If key.StartsWith("copy_") Then
            Return key
        End If
        If key = "logo" OrElse key = "favicon" OrElse key = "title" Then
            Return "identity"
        End If
        If key.StartsWith("slider") Then
            Return key.Split("_"c)(0)
        End If
        If key.StartsWith("gallery") Then
            Return key.Split("_"c)(0)
        End If
        If key.StartsWith("cert") Then
            Return key.Split("_"c)(0)
        End If
        If key.StartsWith("news") Then
            Return key.Split("_"c)(0)
        End If
        If key.StartsWith("social_") Then
            Return key.Replace("_icon", "")
        End If
        If key.StartsWith("footer_") Then
            Return "footer"
        End If
        Return key
    End Function

    Private Function PartSequence() As List(Of String())
        Dim list As New List(Of String())()
        Dim seen As New Dictionary(Of String, Boolean)()
        Dim f As StudioField
        For Each f In SiteStudioCatalog.All()
            Dim part As String = CompoundKey(f.Key)
            If seen.ContainsKey(part) Then
                Continue For
            End If
            seen(part) = True
            list.Add(New String() {part, TitleOf(part, f)})
        Next
        Return list
    End Function

    Private Function TitleOf(ByVal part As String, ByVal f As StudioField) As String
        If part = "identity" Then
            Return "لوگو و عنوان"
        End If
        If part.StartsWith("slider") Then
            Return "اسلاید " & part.Replace("slider", "")
        End If
        If part.StartsWith("gallery") Then
            Return "کلاژ " & part.Replace("gallery", "")
        End If
        If part.StartsWith("cert") Then
            Return "گواهینامه " & part.Replace("cert", "")
        End If
        If part.StartsWith("news") Then
            Return "خبر " & part.Replace("news", "")
        End If
        If part = "social_instagram" Then
            Return "اینستاگرام"
        End If
        If part = "social_twitter" Then
            Return "توییتر"
        End If
        If part = "social_linkedin" Then
            Return "لینکدین"
        End If
        If part = "social_telegram" Then
            Return "تلگرام"
        End If
        If part = "social_facebook" Then
            Return "فیسبوک"
        End If
        If part = "footer" Then
            Return "لوگو و متن فوتر"
        End If
        If f IsNot Nothing Then
            Return f.Title
        End If
        Return part
    End Function

    Private Function DockLink(ByVal href As String, ByVal title As String, ByVal onItem As Boolean, ByVal icon As String) As String
        Dim css As String = "studioDockItem"
        If onItem Then
            css = "studioDockItem on"
        End If
        Return "<a class=""" & css & """ href=""" & HttpUtility.HtmlAttributeEncode(href) & """><i class=""fa " & icon & """></i><span>" & HttpUtility.HtmlEncode(title) & "</span></a>"
    End Function

    Private Function IconOf(ByVal groupId As String) As String
        If groupId = "home" Then
            Return "fa-desktop"
        End If
        If groupId = "about" Then
            Return "fa-info-circle"
        End If
        If groupId = "projects" Then
            Return "fa-cogs"
        End If
        If groupId = "services" Then
            Return "fa-wrench"
        End If
        If groupId = "contact" Then
            Return "fa-envelope"
        End If
        If groupId = "news" Then
            Return "fa-newspaper-o"
        End If
        If groupId = "gallery" Then
            Return "fa-picture-o"
        End If
        If groupId = "footer" Then
            Return "fa-share-alt"
        End If
        Return "fa-star"
    End Function
End Module
