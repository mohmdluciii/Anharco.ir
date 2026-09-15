<%@ Page Language="vb" AutoEventWireup="false" Inherits="PanelUsersPage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>کاربران پنل</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <link href="Graphic/StudioPanel.css?v=dashTop3" rel="stylesheet" />
</head>
<body class="studioApp">
<form id="form1" runat="server" enctype="multipart/form-data">
    <div class="memberPanel_TopBox">
        <div onclick="location.href='empty.aspx'" class="memberPanel_Logo" style="background-image:url(<%=Session("LogoPanel")%>);"></div>
        <div class="memberPanel_Logout"><div class="memberPanel_ContanerLogin"><a href="InputToPanel.aspx?e=1"><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a></div></div>
    </div>
    <%=dockHtml%>
    <div class="editShell">
        <div class="editWrap">
            <a class="back" href="empty.aspx">بازگشت به داشبورد</a>
            <h1><%If kind = "person" Then%>پرسنل<%Else%>مدیران سامانه<%End If%></h1>
            <div class="hint">لیست و فرم تعریف کاربران همین‌جا ذخیره می‌شود و برای ورود به پنل قابل استفاده است.</div>
            <div class="groupRail">
                <a href="PanelUsers.aspx?kind=admin" class="<%If kind="admin" Then%>on<%End If%>">مدیر سامانه</a>
                <a href="PanelUsers.aspx?kind=person" class="<%If kind="person" Then%>on<%End If%>">پرسنل</a>
            </div>
            <div class="userListBox"><%=listHtml%></div>
            <h2 class="studioSub">تعریف / ویرایش</h2>
            <asp:HiddenField ID="hidId" runat="server" />
            <asp:HiddenField ID="hidWebp" runat="server" />
            <div class="field">
                <asp:Label runat="server" AssociatedControlID="txtName" Text="نام"></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
            <asp:Panel ID="rowLname" runat="server" CssClass="field">
                <asp:Label runat="server" AssociatedControlID="txtLname" Text="نام خانوادگی"></asp:Label>
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
            </asp:Panel>
            <div class="field">
                <asp:Label runat="server" AssociatedControlID="txtSemat" Text="سمت"></asp:Label>
                <asp:TextBox ID="txtSemat" runat="server"></asp:TextBox>
            </div>
            <div class="field">
                <asp:Label runat="server" AssociatedControlID="txtUser" Text="شناسه کاربری *"></asp:Label>
                <asp:TextBox ID="txtUser" runat="server" CssClass="ltrInput"></asp:TextBox>
            </div>
            <div class="field">
                <asp:Label runat="server" AssociatedControlID="txtPass" Text="رمز عبور (خالی = بدون تغییر)"></asp:Label>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="ltrInput"></asp:TextBox>
            </div>
            <asp:Panel ID="rowCode" runat="server" CssClass="field">
                <asp:Label runat="server" AssociatedControlID="txtCode" Text="کد ورود"></asp:Label>
                <asp:TextBox ID="txtCode" runat="server" CssClass="ltrInput"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="rowSuper" runat="server" CssClass="field syncBox">
                <asp:CheckBox ID="chkSuper" runat="server" Text="سوپروایزر" />
            </asp:Panel>
            <asp:Panel ID="rowPersonExtra" runat="server">
                <div class="field">
                    <asp:Label runat="server" AssociatedControlID="txtPhone" Text="تلفن"></asp:Label>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </div>
                <div class="field">
                    <asp:Label runat="server" AssociatedControlID="txtEmail" Text="ایمیل"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="ltrInput"></asp:TextBox>
                </div>
                <div class="field">
                    <asp:Label runat="server" AssociatedControlID="txtFax" Text="فکس"></asp:Label>
                    <asp:TextBox ID="txtFax" runat="server"></asp:TextBox>
                </div>
                <fieldset>
                    <legend>تصویر پرسنلی (WebP یا GIF)</legend>
                    <asp:FileUpload ID="fuPhoto" runat="server" />
                    <div class="preview"><asp:Image ID="imgPreview" runat="server" /></div>
                </fieldset>
            </asp:Panel>
            <div class="btns">
                <asp:Button ID="btnSave" runat="server" Text="ثبت" CssClass="save" OnClick="btnSave_Click" />
                <asp:Button ID="btnNew" runat="server" Text="جدید" CssClass="del" OnClick="btnNew_Click" />
            </div>
            <div class="status"><asp:Label ID="lblStatus" runat="server"></asp:Label></div>
        </div>
    </div>
</form>
<script type="text/javascript" src="Graphic/StudioCrop.js?v=shape1"></script>
</body>
</html>
