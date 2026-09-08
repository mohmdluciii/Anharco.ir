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

    ''' <summary>Live probe of every candidate upload folder (classic SiteStudio
    ''' first, then the data-dir media fallback) so the panel shows exactly
    ''' where the next upload will land and which folder is blocked.</summary>
    Private Function MediaProbeHtml() As String
        Dim lang As String = SiteStudioStore.DetectLang()
        Dim root As String = SiteStudioStore.SiteRoot(lang)
        Dim classic As String = IO.Path.Combine(root, "SiteStudio")
        Dim fallback As String = DataDir.MediaDirFor(root)
        Dim sb As New Text.StringBuilder()
        sb.Append("<table class=""mediaProbeTable"" style=""width:100%;border-collapse:collapse;font-size:13px;background:#fff;margin-top:8px"">")
        sb.Append("<tr><th>پوشه</th><th>وضعیت</th><th>توضیح</th></tr>")
        Dim ok1 As Boolean = DataDir.ProbeWritable(classic)
        sb.Append("<tr><td style=""direction:ltr;text-align:left"">" & HttpUtility.HtmlEncode(classic) & "</td>")
        If ok1 Then
            sb.Append("<td class=""mediaOk"">قابل نوشتن ✔</td><td>آپلود عکس اینجا ذخیره می‌شود و مستقیم با آدرس SiteStudio/... سرو می‌شود.</td></tr>")
        Else
            sb.Append("<td class=""mediaNo"">قابل نوشتن نیست ✘</td><td>هاست اجازه نوشتن در این پوشه را نمی‌دهد (دسترسی Write کاربر IIS را از File Manager هاست فعال کنید).</td></tr>")
        End If
        If fallback <> "" AndAlso Not String.Equals(fallback, classic, StringComparison.OrdinalIgnoreCase) Then
            Dim ok2 As Boolean = DataDir.ProbeWritable(fallback)
            sb.Append("<tr><td style=""direction:ltr;text-align:left"">" & HttpUtility.HtmlEncode(fallback) & "</td>")
            If ok2 Then
                sb.Append("<td class=""mediaOk"">قابل نوشتن ✔</td><td>مسیر جایگزین: اگر پوشه اصلی بسته باشد، آپلود اینجا ذخیره و از طریق ImageStream.ashx سرو می‌شود.</td></tr>")
            Else
                sb.Append("<td class=""mediaNo"">قابل نوشتن نیست ✘</td><td>مسیر جایگزین هم بسته است؛ در این حالت آپلود عکس ممکن نمی‌شود.</td></tr>")
            End If
        End If
        sb.Append("</table>")
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
