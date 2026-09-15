<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PersonPM_Delete.aspx.vb" Inherits="W_ISM.PersonPM_Delete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"   >
<head runat="server">
    <title>حذف منبع واحد های تعمیر و نگهداری</title>
     <link href="StandardCSS.css" type="text/css" rel="styleSheet"/>
	<script type="text/javascript"  language="javascript" src="checkNumber.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <img src="images/Question_Delete.jpg" style="position:absolute;top:4cm;left:6cm" alt="" />
        <img src="images/RecycleIcon.jpg" style="position:absolute;top:3.2cm;left:13.5cm" alt="" />
        <img src="images/StopIcon.jpg" style="position:absolute;top:6cm;left:12cm" alt="" />
        <img src="images/ok_Icon.jpg" style="position:absolute;top:6cm;left:9cm" alt="" />
        <asp:ImageButton ID="btn_cancel" runat ="server" style="position:absolute;top:6.4cm;left:11.3cm" onmouseover="this.src='images/cancel_Icon_over.jpg'" onmouseout="this.src='images/cancel_Icon.jpg'" src="images/cancel_Icon.jpg" />
        <asp:ImageButton ID="btn_ok" runat ="server" style="position:absolute;top:6.4cm;left:8.1cm" onmouseover="this.src='images/ok_Text_over.jpg'" onmouseout="this.src='images/ok_Text.jpg'" src="images/ok_Text.jpg" />
    </div>
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
</body>
</html>
