<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SMS_Form.aspx.vb" Inherits="W_ISM.SMS_Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type ="text/css" >
        #btnSendSMS
{
    position:relative ;
	top:0px;
	left:0px;
	background :#5C5C5C;
	color:#fff;
	cursor :pointer ;
	padding :7px 20px 7px 20px;
	border-style :solid ;
	border-width :0px;
	font-family :yekan,arial;
	font-size :9pt; 
}
#btnSendSMS:hover
{
	background :#DA3436;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
                       
    <asp:Button ID="btnSendSMS" style="position:absolute ;top:0px;left:0px;"  runat ="server" Text ="ارسال پیام کوتاه"   />                       
    </form>
</body>
</html>
