<%@ Page Language="vb" AutoEventWireup="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        LocalPanelSupport.EnsureAuthSession()
        If Not LocalPanelSupport.IsLocallyLoggedIn() Then
            Response.Redirect("InputToPanel.aspx", True)
            Return
        End If
        If Not LocalPanelSupport.IsSupervisor() Then
            Response.Redirect("empty.aspx", True)
            Return
        End If
        litStatus.Text = DataDir.StatusHtml()
        litMode.Text = DataDir.ModeLabelFa()
        litMedia.Text = MediaProbeHtml()
    End Sub

    ''' <summary>Live probe of every folder an upload actually tries, in the
    ''' order SaveImageAnywhere walks them, so the page cannot report that an
    ''' upload is impossible while a later candidate still accepts it.</summary>
    Private Function MediaProbeHtml() As String
        Dim lang As String = SiteStudioStore.DetectLang()
        Dim root As String = SiteStudioStore.SiteRoot(lang)
        Dim classic As String = IO.Path.Combine(root, "SiteStudio")

        Dim dirs As New Collections.Generic.List(Of String)
        dirs.Add(classic)
        For Each cand As String In DataDir.MediaCandidatesFor(root)
            Dim dup As Boolean = False
            For Each have As String In dirs
                If String.Equals(have, cand, StringComparison.OrdinalIgnoreCase) Then
                    dup = True
                    Exit For
                End If
            Next
            If Not dup Then
                dirs.Add(cand)
            End If
        Next

        Dim sb As New Text.StringBuilder()
        sb.Append("<table class=""mediaProbeTable"" style=""width:100%;border-collapse:collapse;font-size:13px;background:#fff;margin-top:8px"">")
        sb.Append("<tr><th>پوشه</th><th>وضعیت</th><th>توضیح</th></tr>")
        Dim anyOk As Boolean = False
        Dim isFirst As Boolean = True
        For Each d As String In dirs
            Dim ok As Boolean = DataDir.ProbeWritable(d)
            Dim note As String
            If ok AndAlso Not anyOk Then
                If isFirst Then
                    note = "<b>مقصد فعلی آپلود.</b> عکس اینجا ذخیره و مستقیم با آدرس SiteStudio/... سرو می‌شود."
                Else
                    note = "<b>مقصد فعلی آپلود.</b> عکس اینجا ذخیره و از طریق ImageStream.ashx سرو می‌شود."
                End If
                anyOk = True
            ElseIf ok Then
                note = "قابل نوشتن است، ولی پوشه بالاتر زودتر انتخاب می‌شود."
            Else
                note = "هاست اجازه نوشتن در این پوشه را نمی‌دهد."
            End If
            sb.Append("<tr><td style=""direction:ltr;text-align:left"">" & HttpUtility.HtmlEncode(d) & "</td>")
            If ok Then
                sb.Append("<td class=""mediaOk"">قابل نوشتن ✔</td>")
            Else
                sb.Append("<td class=""mediaNo"">قابل نوشتن نیست ✘</td>")
            End If
            sb.Append("<td>" & note & "</td></tr>")
            isFirst = False
        Next
        sb.Append("</table>")
        If anyOk Then
            sb.Append("<div style=""margin-top:10px;color:#1a7f37;font-weight:bold"">آپلود عکس کار می‌کند.</div>")
        Else
            sb.Append("<div style=""margin-top:10px;color:#b00020;font-weight:bold"">هیچ پوشه‌ای قابل نوشتن نیست؛ آپلود عکس ممکن نمی‌شود. از File Manager هاست به یکی از پوشه‌های بالا دسترسی Write بدهید.</div>")
        End If
        Return sb.ToString()
    End Function
</script>
<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>وضعیت ذخیره‌سازی داده‌ها</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <link href="Graphic/StudioPanel.css?v=dashTop3" rel="stylesheet" />
    <style type="text/css">
        .mediaProbeTable td { padding:6px 8px; border-bottom:1px solid #eee; }
        .mediaProbeTable th { background:#fafafa; width:210px; text-align:right; padding:6px 8px; border-bottom:1px solid #eee; }
        .mediaOk { color:#1a7f37; font-weight:bold; }
        .mediaNo { color:#b00020; font-weight:bold; }
    </style>
</head>
<body class="studioApp">
<form id="form1" runat="server">
    <%=StudioNav.DockHtml("", "", "")%>
    <div class="editShell">
        <div class="editWrap">
            <a class="back" href="empty.aspx">بازگشت به داشبورد</a>
            <h1>وضعیت ذخیره‌سازی داده‌ها</h1>
            <div class="hint">این صفحه نشان می‌دهد داده‌های پنل (کاربران، آمار بازدید، محتوای استودیو) در کجا ذخیره می‌شوند.</div>
            <div class="groupRail" style="margin:10px 0 16px 0"><span class="on">حالت فعال: <b><asp:Literal ID="litMode" runat="server" /></b></span></div>
            <asp:Literal ID="litStatus" runat="server" />
            <h2 style="margin-top:22px">وضعیت پوشه‌های عکس (آپلود)</h2>
            <div class="hint">آپلود عکس در اولین پوشه‌ای که «قابل نوشتن» باشد ذخیره می‌شود. اگر هر دو قابل نوشتن نیستند، از پنل هاست (File Manager) روی پوشه‌ای که می‌خواهید دسترسی Write به کاربر IIS بدهید.</div>
            <asp:Literal ID="litMedia" runat="server" />
            <div class="hint" style="margin-top:14px">اگر «App_Data» قابل نوشتن نباشد، سایت به‌صورت خودکار از پوشه جایگزین SiteData (یا در بدترین حالت حافظه موقت) استفاده می‌کند و همه امکانات پنل کار می‌کنند.</div>
        </div>
    </div>
</form>
</body>
</html>
