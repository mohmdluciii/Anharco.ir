<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="saveForm.aspx.vb" Inherits="W_ISM.saveForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table cellspacing="5" cellpadding ="3"  style ="position:absolute ;top:1cm;left:5cm;width:14cm;font-size:8pt;font-family:Tahoma  " dir="rtl" >
            <tr><td>درج در منوی : </td><td><asp:RadioButtonList Font-Names="tahoma" Font-size="8pt"  RepeatDirection="Horizontal"   ID="type_Menu" runat ="server"  ><asp:ListItem Value ="1" Text ="درباره ما"></asp:ListItem><asp:ListItem Value ="2" Text ="اخبار و رویدادها"></asp:ListItem><asp:ListItem Value ="3" Text ="دریافتنی ها"></asp:ListItem><asp:ListItem Value ="4" Text ="امکانات"></asp:ListItem><asp:ListItem Value ="5" Text ="گالری"></asp:ListItem><asp:ListItem Value ="6" Text ="ارتباط با ما" Selected="True"  ></asp:ListItem></asp:RadioButtonList></td></tr>
            <tr><td>عنوان فرم : </td><td><asp:TextBox ID="name_form" Width ="400" runat ="server" Font-Names ="tahoma" Font-Size ="8pt"></asp:TextBox></td></tr>
            <tr><td>نام لاتین فرم : </td><td><asp:TextBox ID="name_table" Width ="100" dir="ltr" runat ="server" Font-Names ="tahoma" Font-Size ="8pt"></asp:TextBox></td></tr>
            <asp:TextBox ID="aryObject" runat ="server" Visible ="false" ></asp:TextBox>
            <asp:TextBox ID="textObject" runat ="server" Visible ="false" ></asp:TextBox>
            <tr><td></td><td><asp:Button Text="ثبت مشخصات فرم"  ID="btnSave" runat ="server" style="font-size:8pt;font-family:Tahoma ;cursor:hand;color:blue" onmouseover="this.style.color='red'" onmouseout="this.style.color='blue'" /></td></tr>
        </table>
    </div>
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
</body>
</html>
