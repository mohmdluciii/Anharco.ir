Option Explicit On
Option Strict Off

Imports System.Collections.Generic
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Public Class SiteStudioPage
    Inherits Page

    Protected lang As String = "en"
    Protected groupId As String = ""
    Protected mapHtml As String = ""
    Protected dockHtml As String = ""

    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        MyBase.OnLoad(e)
        LocalPanelSupport.EnsureAuthSession()
        If Not LocalPanelSupport.IsLocallyLoggedIn() Then
            Response.Redirect("InputToPanel.aspx", True)
            Return
        End If
        lang = PickLang()
        groupId = Convert.ToString(Request("g"))
        If Convert.ToString(Session("menu_admin")) = "" Then
            Session("menu_admin") = LocalPanelSupport.AdminMenuHtml()
        End If
        dockHtml = StudioNav.DockHtml(lang, groupId, "")
        mapHtml = BuildMap()
    End Sub

    Private Function PickLang() As String
        If String.IsNullOrEmpty(Convert.ToString(Request("lang"))) Then
            Return SiteStudioStore.DetectLang()
        End If
        Return SiteStudioStore.NormalizeLang(Request("lang"))
    End Function

    Protected Function Img(ByVal key As String, ByVal fallback As String) As String
        Dim rel As String = SiteStudioStore.PreviewUrl(lang, key, fallback)
        Return SiteStudioStore.PublicUrl(lang, rel)
    End Function

    Protected Function EditUrl(ByVal part As String) As String
        Return "SiteStudioEdit.aspx?lang=" & lang & "&part=" & part
    End Function

    Private Function BuildMap() As String
        Dim sb As New StringBuilder()
        Dim groups As List(Of String()) = SiteStudioCatalog.AllGroups()
        Dim g As String()
        For Each g In groups
            If groupId <> "" AndAlso groupId <> g(0) Then
                Continue For
            End If
            sb.Append("<section class=""studioSection"" id=""g-")
            sb.Append(HttpUtility.HtmlAttributeEncode(g(0)))
            sb.Append(""">")
            sb.Append("<header class=""studioSectionHead""><span>")
            sb.Append(HttpUtility.HtmlEncode(g(1)))
            sb.Append("</span><h2>")
            sb.Append(HttpUtility.HtmlEncode(g(1)))
            sb.Append("</h2></header>")
            Dim fields As List(Of StudioField) = SiteStudioCatalog.InGroup(g(0))
            Dim f As StudioField
            Dim seen As New Dictionary(Of String, Boolean)()
            Dim lastSec As String = ChrW(1)
            For Each f In fields
                Dim part As String = CompoundPart(f.Key)
                If seen.ContainsKey(part) Then
                    Continue For
                End If
                seen(part) = True
                Dim sec As String = f.SectionTitle
                If sec <> lastSec Then
                    If lastSec <> ChrW(1) Then
                        sb.Append("</div>")
                    End If
                    sb.Append("<h3 class=""studioSub"">")
                    sb.Append(HttpUtility.HtmlEncode(sec))
                    sb.Append("</h3><div class=""studioGrid"">")
                    lastSec = sec
                End If
                sb.Append(BuildCard(part, f))
            Next
            If lastSec <> ChrW(1) Then
                sb.Append("</div>")
            End If
            sb.Append("</section>")
        Next
        Return sb.ToString()
    End Function

    Private Function BuildCard(ByVal part As String, ByVal f As StudioField) As String
        Dim sb As New StringBuilder()
        Dim href As String = EditUrl(part)
        Dim isImage As Boolean = (f.Kind = "image" OrElse part.StartsWith("slider") OrElse part.StartsWith("gallery") OrElse part.StartsWith("cert") OrElse part.StartsWith("news") OrElse part.StartsWith("social_") OrElse part = "identity" OrElse part = "footer")
        sb.Append("<a class=""studioCard")
        If Not isImage Then
            sb.Append(" text")
        End If
        sb.Append(""" href=""")
        sb.Append(href)
        sb.Append(""">")
        If isImage Then
            Dim imgKey As String = ImageKeyFor(part, f)
            Dim fallback As String = SiteStudioCatalog.FallbackOf(imgKey)
            If fallback = "" Then
                fallback = f.Fallback
            End If
            If part.StartsWith("social_") AndAlso (fallback = "" AndAlso SiteStudioStore.GetValue(lang, imgKey) = "") Then
                sb.Append("<div class=""studioThumb icon""><i class=""fa ")
                sb.Append(SocialFa(part))
                sb.Append("""></i></div>")
            ElseIf fallback <> "" OrElse imgKey <> "" Then
                sb.Append("<div class=""studioThumb""><img src=""")
                sb.Append(Img(imgKey, fallback))
                sb.Append(""" alt="""" /></div>")
            End If
        End If
        sb.Append("<b>")
        sb.Append(HttpUtility.HtmlEncode(CardTitle(part, f)))
        sb.Append("</b>")
        If isImage Then
            sb.Append("<span>")
            sb.Append(HttpUtility.HtmlEncode(PageLabel(f)))
            sb.Append("</span><em>ویرایش و جایگزینی</em>")
        Else
            Dim val As String = SiteStudioStore.GetValue(lang, f.Key)
            If val = "" Then
                val = f.Fallback
            End If
            If val.Length > 80 Then
                val = val.Substring(0, 80) & "..."
            End If
            sb.Append("<span>")
            sb.Append(HttpUtility.HtmlEncode(val))
            sb.Append("</span>")
        End If
        sb.Append("</a>")
        Return sb.ToString()
    End Function

    Private Function SocialFa(ByVal part As String) As String
        If part.IndexOf("instagram") >= 0 Then
            Return "fa-instagram"
        End If
        If part.IndexOf("twitter") >= 0 Then
            Return "fa-twitter"
        End If
        If part.IndexOf("linkedin") >= 0 Then
            Return "fa-linkedin"
        End If
        If part.IndexOf("telegram") >= 0 Then
            Return "fa-telegram"
        End If
        Return "fa-facebook"
    End Function

    Private Function CompoundPart(ByVal key As String) As String
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

    Private Function ImageKeyFor(ByVal part As String, ByVal f As StudioField) As String
        If part = "identity" Then
            Return "logo"
        End If
        If part.StartsWith("slider") Then
            Return part & "_image"
        End If
        If part.StartsWith("gallery") Then
            Return part & "_image"
        End If
        If part.StartsWith("cert") Then
            Return part & "_image"
        End If
        If part.StartsWith("news") Then
            Return part & "_image"
        End If
        If part.StartsWith("social_") Then
            Return part & "_icon"
        End If
        If part = "footer" Then
            Return "footer_logo"
        End If
        If f.Kind = "image" Then
            Return f.Key
        End If
        Return f.Key
    End Function

    Private Function CardTitle(ByVal part As String, ByVal f As StudioField) As String
        If part = "identity" Then
            Return "لوگو، فاوایکون، عنوان"
        End If
        If part.StartsWith("slider") Then
            Return "اسلاید " & part.Replace("slider", "")
        End If
        If part.StartsWith("gallery") Then
            Return "عکس کلاژ " & part.Replace("gallery", "")
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
        Return f.Title
    End Function

    Private Function PageLabel(ByVal f As StudioField) As String
        If f.PageFile <> "" Then
            Return f.PageFile
        End If
        Return "همه صفحات"
    End Function
End Class

Public Class SiteStudioEditPage
    Inherits Page

    Protected lang As String = "en"
    Protected part As String = "identity"
    Protected groupId As String = ""
    Protected dockHtml As String = ""
    Protected neighborHtml As String = ""
    Protected lblHead As Label
    Protected lblHint As Label
    Protected lblPreview As Label
    Protected lblStatus As Label
    Protected txt1 As TextBox
    Protected txt2 As TextBox
    Protected txt3 As TextBox
    Protected txt4 As TextBox
    Protected txt5 As TextBox
    Protected fuFile As FileUpload
    Protected rowFile As Panel
    Protected row1 As Panel
    Protected row2 As Panel
    Protected row3 As Panel
    Protected row4 As Panel
    Protected row5 As Panel
    Protected lbl1 As Label
    Protected lbl2 As Label
    Protected lbl3 As Label
    Protected lbl4 As Label
    Protected lbl5 As Label
    Protected imgPreview As Image
    Protected chkSync As CheckBox
    Protected hidAlign1 As HiddenField
    Protected hidAlign2 As HiddenField
    Protected hidAlign3 As HiddenField
    Protected hidAlign4 As HiddenField
    Protected hidAlign5 As HiddenField
    Protected hidFit As HiddenField
    Protected hidWebp As HiddenField
    Protected cropFrameAttrs As String = ""
    Protected cropFrameLabel As String = ""

    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        MyBase.OnLoad(e)
        LocalPanelSupport.EnsureAuthSession()
        If Not LocalPanelSupport.IsLocallyLoggedIn() Then
            Response.Redirect("InputToPanel.aspx", True)
            Return
        End If
        If String.IsNullOrEmpty(Convert.ToString(Request("lang"))) Then
            lang = SiteStudioStore.DetectLang()
        Else
            lang = SiteStudioStore.NormalizeLang(Request("lang"))
        End If
        part = Convert.ToString(Request("part"))
        If part = "" Then
            part = "identity"
        End If
        groupId = StudioNav.GroupOfPart(part)
        dockHtml = StudioNav.DockHtml(lang, groupId, part)
        neighborHtml = StudioNav.NeighborHtml(lang, part)
        If Convert.ToString(Session("menu_admin")) = "" Then
            Session("menu_admin") = LocalPanelSupport.AdminMenuHtml()
        End If
        WireControls()
        ConfigureFields()
        ApplyCropFrame()
        If Not IsPostBack Then
            FillFields()
            LoadFit()
            If chkSync IsNot Nothing Then
                chkSync.Checked = True
            End If
        End If
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs)
        SaveFields()
        If part <> "identity" Then
            If (fuFile IsNot Nothing AndAlso fuFile.HasFile) OrElse (hidWebp IsNot Nothing AndAlso Not String.IsNullOrEmpty(hidWebp.Value)) Then
                Dim key As String = FileKey()
                If key <> "" Then
                    Dim syncUp As Boolean = (chkSync IsNot Nothing AndAlso chkSync.Checked)
                    SiteStudioStore.SaveUploadEx(lang, fuFile, hidWebp, key, syncUp)
                End If
            End If
        End If
        Dim fitKey As String = FileKey()
        If fitKey <> "" AndAlso hidFit IsNot Nothing Then
            If chkSync IsNot Nothing AndAlso chkSync.Checked Then
                SiteStudioStore.SetFitAll(fitKey, hidFit.Value)
            Else
                SiteStudioStore.SetFit(lang, fitKey, hidFit.Value)
            End If
        End If
        FillFields()
        LoadFit()
        lblStatus.Text = "ذخیره شد. لینک و عکس با تیک همگام‌سازی روی هر سه زبان اعمال شده است."
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim key As String = FileKey()
        If key <> "" Then
            If chkSync IsNot Nothing AndAlso chkSync.Checked Then
                SiteStudioStore.SetValueAll(key, "")
            Else
                SiteStudioStore.ClearValue(lang, key)
            End If
        End If
        FillFields()
        lblStatus.Text = "عکس این بخش برداشته شد و عکس فعلی سایت دوباره نمایش داده می‌شود."
    End Sub

    Private Sub WireControls()
        If lblHead Is Nothing Then lblHead = TryCast(FindDeep(Me, "lblHead"), Label)
        If lblHint Is Nothing Then lblHint = TryCast(FindDeep(Me, "lblHint"), Label)
        If lblPreview Is Nothing Then lblPreview = TryCast(FindDeep(Me, "lblPreview"), Label)
        If lblStatus Is Nothing Then lblStatus = TryCast(FindDeep(Me, "lblStatus"), Label)
        If txt1 Is Nothing Then txt1 = TryCast(FindDeep(Me, "txt1"), TextBox)
        If txt2 Is Nothing Then txt2 = TryCast(FindDeep(Me, "txt2"), TextBox)
        If txt3 Is Nothing Then txt3 = TryCast(FindDeep(Me, "txt3"), TextBox)
        If txt4 Is Nothing Then txt4 = TryCast(FindDeep(Me, "txt4"), TextBox)
        If txt5 Is Nothing Then txt5 = TryCast(FindDeep(Me, "txt5"), TextBox)
        If fuFile Is Nothing Then fuFile = TryCast(FindDeep(Me, "fuFile"), FileUpload)
        If rowFile Is Nothing Then rowFile = TryCast(FindDeep(Me, "rowFile"), Panel)
        If row1 Is Nothing Then row1 = TryCast(FindDeep(Me, "row1"), Panel)
        If row2 Is Nothing Then row2 = TryCast(FindDeep(Me, "row2"), Panel)
        If row3 Is Nothing Then row3 = TryCast(FindDeep(Me, "row3"), Panel)
        If row4 Is Nothing Then row4 = TryCast(FindDeep(Me, "row4"), Panel)
        If row5 Is Nothing Then row5 = TryCast(FindDeep(Me, "row5"), Panel)
        If lbl1 Is Nothing Then lbl1 = TryCast(FindDeep(Me, "lbl1"), Label)
        If lbl2 Is Nothing Then lbl2 = TryCast(FindDeep(Me, "lbl2"), Label)
        If lbl3 Is Nothing Then lbl3 = TryCast(FindDeep(Me, "lbl3"), Label)
        If lbl4 Is Nothing Then lbl4 = TryCast(FindDeep(Me, "lbl4"), Label)
        If lbl5 Is Nothing Then lbl5 = TryCast(FindDeep(Me, "lbl5"), Label)
        If imgPreview Is Nothing Then imgPreview = TryCast(FindDeep(Me, "imgPreview"), Image)
        If chkSync Is Nothing Then chkSync = TryCast(FindDeep(Me, "chkSync"), CheckBox)
        If hidAlign1 Is Nothing Then hidAlign1 = TryCast(FindDeep(Me, "hidAlign1"), HiddenField)
        If hidAlign2 Is Nothing Then hidAlign2 = TryCast(FindDeep(Me, "hidAlign2"), HiddenField)
        If hidAlign3 Is Nothing Then hidAlign3 = TryCast(FindDeep(Me, "hidAlign3"), HiddenField)
        If hidAlign4 Is Nothing Then hidAlign4 = TryCast(FindDeep(Me, "hidAlign4"), HiddenField)
        If hidAlign5 Is Nothing Then hidAlign5 = TryCast(FindDeep(Me, "hidAlign5"), HiddenField)
        If hidFit Is Nothing Then hidFit = TryCast(FindDeep(Me, "hidFit"), HiddenField)
        If hidWebp Is Nothing Then hidWebp = TryCast(FindDeep(Me, "hidWebp"), HiddenField)
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

    Private Sub HideRows()
        row1.Visible = False
        row2.Visible = False
        row3.Visible = False
        row4.Visible = False
        If row5 IsNot Nothing Then
            row5.Visible = False
        End If
        rowFile.Visible = True
    End Sub

    Private Sub ConfigureFields()
        HideRows()
        If part = "identity" Then
            lblHead.Text = "هویت سایت - لوگو، فاوایکون، عنوان"
            lblHint.Text = "همین عکس‌هایی که الان روی سایت هستند اینجا دیده می‌شوند. لوگو هدر همه صفحات است."
            row1.Visible = True
            lbl1.Text = "عنوان سایت (فقط همین زبان)"
            rowFile.GroupingText = "آپلود لوگو (یا فاوایکون با پسوند ico)"
        ElseIf part.StartsWith("slider") Then
            lblHead.Text = "اسلایدر صفحه اصلی - اسلاید " & part.Replace("slider", "")
            lblHint.Text = "عکس فعلی بنر خانه. لینک دکمه با تیک همگام‌سازی روی فارسی/عربی/انگلیسی یکی می‌شود."
            row1.Visible = True
            lbl1.Text = "تیتر اسلاید"
            row2.Visible = True
            lbl2.Text = "متن توضیح"
            row3.Visible = True
            lbl3.Text = "متن دکمه"
            row4.Visible = True
            lbl4.Text = "لینک دکمه (مثلا pipelines.aspx) - روی هر سه زبان"
            txt4.CssClass = "ltrInput"
            rowFile.GroupingText = "عکس اسلاید"
        ElseIf part.StartsWith("gallery") Then
            lblHead.Text = "کلاژ عکس صفحه اصلی - عکس " & part.Replace("gallery", "")
            lblHint.Text = "یکی از هشت عکس پایین صفحه اصلی. لینک با یک ذخیره روی هر سه زبان عوض می‌شود."
            row1.Visible = True
            lbl1.Text = "عنوان عکس"
            row2.Visible = True
            lbl2.Text = "لینک کلیک"
            txt2.CssClass = "ltrInput"
            rowFile.GroupingText = "عکس کلاژ"
        ElseIf part = "footer" Then
            lblHead.Text = "لوگو و متن فوتر"
            lblHint.Text = "لوگوی فوتر حداکثر 180 در 72 پیکسل نمایش داده می شود. لینک شبکه های اجتماعی را از کارت های جداگانه ویرایش کنید."
            row1.Visible = True
            lbl1.Text = "عنوان فوتر"
            row2.Visible = True
            lbl2.Text = "متن معرفی"
            row3.Visible = True
            lbl3.Text = "کپی رایت"
            rowFile.GroupingText = "لوگوی فوتر"
        ElseIf part.StartsWith("social_") Then
            Dim socialName As String = "شبکه اجتماعی"
            If part = "social_instagram" Then socialName = "اینستاگرام"
            If part = "social_twitter" Then socialName = "توییتر"
            If part = "social_linkedin" Then socialName = "لینکدین"
            If part = "social_telegram" Then socialName = "تلگرام"
            If part = "social_facebook" Then socialName = "فیسبوک"
            lblHead.Text = socialName
            lblHint.Text = "لینک با یک ذخیره روی هر سه زبان عوض می شود. لوگوی سفارشی حداکثر 28 پیکسل نمایش داده می شود تا از کادر خارج نشود."
            row1.Visible = True
            lbl1.Text = "آدرس لینک"
            txt1.CssClass = "ltrInput"
            rowFile.GroupingText = "لوگوی شبکه اجتماعی (اختیاری)"
        ElseIf part.StartsWith("cert") Then
            Dim n As String = part.Replace("cert", "")
            lblHead.Text = "گواهینامه " & n
            lblHint.Text = "این گواهینامه در صفحه درباره ما / گواهینامه ها نمایش داده می شود. عکس و عنوان قابل جایگزینی هستند."
            row1.Visible = True
            lbl1.Text = "عنوان گواهینامه"
            row2.Visible = True
            lbl2.Text = "خلاصه گواهینامه"
            rowFile.GroupingText = "عکس گواهینامه"
        ElseIf part.StartsWith("news") Then
            Dim n As String = part.Replace("news", "")
            lblHead.Text = "خبر " & n
            lblHint.Text = "این خبر در صفحه اصلی و لیست اخبار نمایش داده می شود. عکس در کادر ثابت می ماند و سایز صفحه را عوض نمی کند."
            row1.Visible = True
            lbl1.Text = "عنوان خبر"
            row2.Visible = True
            lbl2.Text = "تاریخ"
            row3.Visible = True
            lbl3.Text = "خلاصه خبر"
            If txt3 IsNot Nothing Then
                txt3.TextMode = TextBoxMode.MultiLine
                txt3.Rows = 5
            End If
            row4.Visible = True
            lbl4.Text = "لینک (مثلا NewsShow.aspx?n=" & n & ")"
            If txt4 IsNot Nothing Then
                txt4.CssClass = "ltrInput"
            End If
            rowFile.GroupingText = "عکس خبر"
        Else
            Dim f As StudioField = SiteStudioCatalog.Find(part)
            If f Is Nothing Then
                lblHead.Text = part
                lblHint.Text = "این بخش را ویرایش کنید."
                Return
            End If
            lblHead.Text = f.Title
            lblHint.Text = f.Hint
            If f.Kind = "image" Then
                rowFile.GroupingText = "جایگزینی عکس - عکس فعلی سایت در پیش نمایش است"
            ElseIf f.Kind = "link" Then
                rowFile.Visible = False
                row1.Visible = True
                lbl1.Text = "لینک"
                txt1.CssClass = "ltrInput"
            Else
                rowFile.Visible = False
                row1.Visible = True
                lbl1.Text = f.Title
                If f.Key = "footer_about" OrElse f.Key.StartsWith("copy_") Then
                    If f.Key.IndexOf("_h1") < 0 AndAlso f.Key.IndexOf("_name") < 0 AndAlso f.Key.IndexOf("_role") < 0 Then
                        txt1.TextMode = TextBoxMode.MultiLine
                        txt1.Rows = 8
                    End If
                    If f.Fallback IsNot Nothing AndAlso f.Fallback.Length > 70 Then
                        txt1.TextMode = TextBoxMode.MultiLine
                        txt1.Rows = 8
                    End If
                End If
            End If
        End If
        HideAlignForLtr()
    End Sub

    Private Sub FillFields()
        If part = "identity" Then
            txt1.Text = SiteStudioStore.GetValue(lang, "title")
            ApplyAlign(txt1, hidAlign1, "title")
            ShowPreview(SiteStudioStore.PreviewUrl(lang, "logo", "images/Anhar-Logo.png"))
        ElseIf part.StartsWith("slider") Then
            Dim n As String = part.Replace("slider", "")
            txt1.Text = ValOr(lang, "slider" & n & "_name")
            txt2.Text = ValOr(lang, "slider" & n & "_text")
            txt3.Text = ValOr(lang, "slider" & n & "_button")
            txt4.Text = ValOr(lang, "slider" & n & "_link")
            ApplyAlign(txt1, hidAlign1, "slider" & n & "_name")
            ApplyAlign(txt2, hidAlign2, "slider" & n & "_text")
            ApplyAlign(txt3, hidAlign3, "slider" & n & "_button")
            ShowPreview(SiteStudioStore.PreviewUrl(lang, "slider" & n & "_image", "images/Bananer-Anhar-co-no-" & n & ".jpg"))
        ElseIf part.StartsWith("gallery") Then
            Dim n As String = part.Replace("gallery", "")
            txt1.Text = ValOr(lang, "gallery" & n & "_title")
            txt2.Text = ValOr(lang, "gallery" & n & "_link")
            ApplyAlign(txt1, hidAlign1, "gallery" & n & "_title")
            ShowPreview(SiteStudioStore.PreviewUrl(lang, "gallery" & n & "_image", "FirstPage_PicAbout/MainPagePic" & n & ".jpg"))
        ElseIf part = "footer" Then
            txt1.Text = ValOr(lang, "footer_title")
            txt2.Text = ValOr(lang, "footer_about")
            txt3.Text = ValOr(lang, "footer_copy")
            ApplyAlign(txt1, hidAlign1, "footer_title")
            ApplyAlign(txt2, hidAlign2, "footer_about")
            ApplyAlign(txt3, hidAlign3, "footer_copy")
            ShowPreview(SiteStudioStore.PreviewUrl(lang, "footer_logo", "images/anharCoFooter.png"))
        ElseIf part.StartsWith("social_") Then
            txt1.Text = ValOr(lang, part)
            Dim icon As String = SiteStudioStore.PreviewUrl(lang, part & "_icon", "")
            If icon <> "" Then
                ShowPreview(icon)
            Else
                imgPreview.Visible = False
                lblPreview.Text = "لوگوی سفارشی انتخاب نشده. فعلا آیکون پیش فرض سایت نمایش داده می شود."
            End If
        ElseIf part.StartsWith("cert") Then
            Dim n As String = part.Replace("cert", "")
            txt1.Text = ValOr(lang, "cert" & n & "_title")
            If txt1.Text = "" Then
                txt1.Text = LocalCertificateFallback.Title(CInt(n), lang)
            End If
            txt2.Text = ValOr(lang, "cert" & n & "_text")
            If txt2.Text = "" Then
                txt2.Text = LocalCertificateFallback.Summary(CInt(n), lang)
            End If
            ShowPreview(SiteStudioStore.PreviewUrl(lang, "cert" & n & "_image", LocalCertificateFallback.Image(CInt(n))))
            ApplyAlign(txt1, hidAlign1, "cert" & n & "_title")
            ApplyAlign(txt2, hidAlign2, "cert" & n & "_text")
        ElseIf part.StartsWith("news") Then
            Dim n As String = part.Replace("news", "")
            txt1.Text = ValOr(lang, "news" & n & "_title")
            If txt1.Text = "" Then
                txt1.Text = LocalNewsFallback.Title(CInt(n), lang)
            End If
            txt2.Text = ValOr(lang, "news" & n & "_date")
            If txt2.Text = "" Then
                txt2.Text = LocalNewsFallback.DateText(CInt(n), lang)
            End If
            txt3.Text = ValOr(lang, "news" & n & "_text")
            If txt3.Text = "" Then
                txt3.Text = LocalNewsFallback.Summary(CInt(n), lang)
            End If
            txt4.Text = ValOr(lang, "news" & n & "_link")
            If txt4.Text = "" Then
                txt4.Text = "NewsShow.aspx?n=" & n
            End If
            ShowPreview(SiteStudioStore.PreviewUrl(lang, "news" & n & "_image", "images/NewsAnhar.jpg"))
            ApplyAlign(txt1, hidAlign1, "news" & n & "_title")
            ApplyAlign(txt2, hidAlign2, "news" & n & "_date")
            ApplyAlign(txt3, hidAlign3, "news" & n & "_text")
        Else
            Dim f As StudioField = SiteStudioCatalog.Find(part)
            If f Is Nothing Then
                Return
            End If
            If f.Kind = "image" Then
                ShowPreview(SiteStudioStore.PreviewUrl(lang, f.Key, f.Fallback))
            Else
                txt1.Text = ValOr(lang, f.Key)
                If f.Fallback <> "" AndAlso txt1.Text = "" Then
                    txt1.Text = f.Fallback
                End If
                ApplyAlign(txt1, hidAlign1, f.Key)
                imgPreview.Visible = False
            End If
        End If
    End Sub

    Private Sub SaveFields()
        Dim sync As Boolean = (chkSync Is Nothing OrElse chkSync.Checked)
        If part = "identity" Then
            SaveAndTranslate("title", txt1.Text)
            SaveAlign(hidAlign1, "title")
            If (fuFile IsNot Nothing AndAlso fuFile.HasFile) OrElse (hidWebp IsNot Nothing AndAlso Not String.IsNullOrEmpty(hidWebp.Value)) Then
                Dim name As String = ""
                If fuFile IsNot Nothing AndAlso fuFile.HasFile Then
                    name = fuFile.FileName.ToLowerInvariant()
                End If
                Dim key As String = "logo"
                If name.EndsWith(".ico") Then
                    key = "favicon"
                End If
                SiteStudioStore.SaveUploadEx(lang, fuFile, hidWebp, key, sync)
            End If
        ElseIf part.StartsWith("slider") Then
            Dim n As String = part.Replace("slider", "")
            SaveAndTranslate("slider" & n & "_name", txt1.Text)
            SaveAndTranslate("slider" & n & "_text", txt2.Text)
            SaveAndTranslate("slider" & n & "_button", txt3.Text)
            SaveAlign(hidAlign1, "slider" & n & "_name")
            SaveAlign(hidAlign2, "slider" & n & "_text")
            SaveAlign(hidAlign3, "slider" & n & "_button")
            Put(sync, "slider" & n & "_link", txt4.Text)
        ElseIf part.StartsWith("gallery") Then
            Dim n As String = part.Replace("gallery", "")
            SaveAndTranslate("gallery" & n & "_title", txt1.Text)
            SaveAlign(hidAlign1, "gallery" & n & "_title")
            Put(sync, "gallery" & n & "_link", txt2.Text)
        ElseIf part = "footer" Then
            SaveAndTranslate("footer_title", txt1.Text)
            SaveAndTranslate("footer_about", txt2.Text)
            SaveAndTranslate("footer_copy", txt3.Text)
            SaveAlign(hidAlign1, "footer_title")
            SaveAlign(hidAlign2, "footer_about")
            SaveAlign(hidAlign3, "footer_copy")
        ElseIf part.StartsWith("social_") Then
            Put(sync, part, txt1.Text)
        ElseIf part.StartsWith("cert") Then
            Dim n As String = part.Replace("cert", "")
            SaveAndTranslate("cert" & n & "_title", txt1.Text)
            SaveAndTranslate("cert" & n & "_text", txt2.Text)
            SaveAlign(hidAlign1, "cert" & n & "_title")
            SaveAlign(hidAlign2, "cert" & n & "_text")
        ElseIf part.StartsWith("news") Then
            Dim n As String = part.Replace("news", "")
            SaveAndTranslate("news" & n & "_title", txt1.Text)
            SaveAndTranslate("news" & n & "_date", txt2.Text)
            SaveAndTranslate("news" & n & "_text", txt3.Text)
            SaveAlign(hidAlign1, "news" & n & "_title")
            SaveAlign(hidAlign2, "news" & n & "_date")
            SaveAlign(hidAlign3, "news" & n & "_text")
            Put(sync, "news" & n & "_link", txt4.Text)
        Else
            Dim f As StudioField = SiteStudioCatalog.Find(part)
            If f Is Nothing Then
                Return
            End If
            If f.Kind <> "image" Then
                If f.Kind = "link" OrElse f.SharedAcrossLang Then
                    Put(sync, f.Key, txt1.Text)
                Else
                    SaveAndTranslate(f.Key, txt1.Text)
                    SaveAlign(hidAlign1, f.Key)
                End If
            End If
        End If
    End Sub

    Private Sub HideAlignForLtr()
        Dim boxes(4) As TextBox
        boxes(0) = txt1
        boxes(1) = txt2
        boxes(2) = txt3
        boxes(3) = txt4
        boxes(4) = txt5
        Dim i As Integer
        For i = 0 To 4
            Dim box As TextBox = boxes(i)
            If box Is Nothing Then
                Continue For
            End If
            Dim css As String = Convert.ToString(box.CssClass)
            If css.IndexOf("ltrInput") >= 0 Then
                box.Attributes("dir") = "ltr"
                Dim parent As Control = box.Parent
                If parent IsNot Nothing Then
                    Dim bar As Control = parent.FindControl("alignBar" & (i + 1).ToString())
                    If bar IsNot Nothing Then
                        bar.Visible = False
                    End If
                End If
            End If
        Next
    End Sub

    Private Sub ApplyAlign(ByVal box As TextBox, ByVal hid As HiddenField, ByVal key As String)
        Dim v As String = SiteStudioStore.GetValue(lang, key & "_align")
        If v <> "ltr" AndAlso v <> "rtl" AndAlso v <> "center" Then
            If key IsNot Nothing AndAlso key.EndsWith("_h1") Then
                v = "center"
            ElseIf lang = "en" Then
                v = "ltr"
            Else
                v = "rtl"
            End If
        End If
        If hid IsNot Nothing Then
            hid.Value = v
        End If
        If box Is Nothing Then
            Return
        End If
        Dim css As String = Convert.ToString(box.CssClass)
        css = css.Replace("studioAlignRtl", "").Replace("studioAlignLtr", "").Replace("studioAlignCenter", "").Trim()
        If v = "ltr" Then
            box.CssClass = (css & " studioAlignLtr").Trim()
            box.Attributes("dir") = "ltr"
        ElseIf v = "center" Then
            box.CssClass = (css & " studioAlignCenter").Trim()
            If lang = "en" Then
                box.Attributes("dir") = "ltr"
            Else
                box.Attributes("dir") = "rtl"
            End If
        Else
            box.CssClass = (css & " studioAlignRtl").Trim()
            box.Attributes("dir") = "rtl"
        End If
        box.Style("unicode-bidi") = "isolate"
    End Sub

    Private Sub SaveAlign(ByVal hid As HiddenField, ByVal key As String)
        Dim v As String = "rtl"
        If lang = "en" Then
            v = "ltr"
        End If
        If key IsNot Nothing AndAlso key.EndsWith("_h1") Then
            v = "center"
        End If
        If hid IsNot Nothing Then
            If hid.Value = "ltr" Then
                v = "ltr"
            ElseIf hid.Value = "center" Then
                v = "center"
            ElseIf hid.Value = "rtl" Then
                v = "rtl"
            End If
        End If
        SiteStudioStore.SetValue(lang, key & "_align", v)
    End Sub

    Private Sub Put(ByVal sync As Boolean, ByVal key As String, ByVal value As String)
        If sync Then
            SiteStudioStore.SetValueAll(key, value)
        Else
            SiteStudioStore.SetValue(lang, key, value)
        End If
    End Sub

    ''' <summary>
    ''' Saves a value for the current language and auto-translates from Persian to EN/AR.
    ''' </summary>
    Private Sub SaveAndTranslate(ByVal key As String, ByVal value As String)
        SiteStudioStore.SetValue(lang, key, value)
        If lang = "fa" Then
            TranslationHelper.AutoTranslateAndSave(key, value)
        End If
    End Sub

    Private Function ValOr(ByVal langName As String, ByVal key As String) As String
        Dim v As String = SiteStudioStore.GetValue(langName, key)
        If v <> "" Then
            Return v
        End If
        Return SiteStudioCatalog.FallbackOf(key)
    End Function

    Private Function FileKey() As String
        If part = "identity" Then
            Return "logo"
        End If
        If part.StartsWith("slider") Then
            Return part & "_image"
        End If
        If part.StartsWith("gallery") Then
            Return part & "_image"
        End If
        If part = "footer" Then
            Return "footer_logo"
        End If
        If part.StartsWith("cert") Then
            Return part & "_image"
        End If
        If part.StartsWith("news") Then
            Return part & "_image"
        End If
        If part.StartsWith("social_") Then
            Return part & "_icon"
        End If
        Dim f As StudioField = SiteStudioCatalog.Find(part)
        If f IsNot Nothing AndAlso f.Kind = "image" Then
            Return f.Key
        End If
        Return ""
    End Function

    Private Sub LoadFit()
        If hidFit Is Nothing Then
            Return
        End If
        Dim key As String = FileKey()
        If key = "" Then
            hidFit.Value = "50|50|100"
            Return
        End If
        hidFit.Value = SiteStudioStore.GetFit(lang, key)
    End Sub

    Private Sub ApplyCropFrame()
        Dim key As String = FileKey()
        Dim fr As StudioCropFrame = SiteStudioCatalog.CropFrameOf(key)
        If fr Is Nothing Then
            cropFrameAttrs = ""
            cropFrameLabel = ""
            Return
        End If
        cropFrameAttrs = "data-fit=""" & fr.Fit & """ data-kind=""" & fr.Kind & """ data-shape=""" & fr.Shape & """ style=""--crop-w:" & fr.W.ToString() & ";--crop-h:" & fr.H.ToString() & ";"""
        cropFrameLabel = fr.Label
    End Sub

    Private Sub ShowPreview(ByVal url As String)
        If url = "" Then
            imgPreview.Visible = False
            lblPreview.Text = "عکسی انتخاب نشده."
            Return
        End If
        imgPreview.Visible = True
        imgPreview.ImageUrl = SiteStudioStore.PublicUrl(lang, url)
        lblPreview.Text = url
    End Sub
End Class
