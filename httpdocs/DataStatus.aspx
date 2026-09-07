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
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>وضعیت ذخیره‌سازی داده‌ها</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <link href="Graphic/StudioPanel.css?v=avatar1" rel="stylesheet" />
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
            <div class="hint" style="margin-top:14px">اگر «App_Data» قابل نوشتن نباشد، سایت به‌صورت خودکار از پوشه جایگزین SiteData (یا در بدترین حالت حافظه موقت) استفاده می‌کند و همه امکانات پنل کار می‌کنند.</div>
        </div>
    </div>
</form>
</body>
</html>
