<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="sms.aspx.vb" Inherits="W_ISM.sms" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table >
        <tr><td>mobile</td><td><asp:TextBox ID="Mobile"  runat ="server"  ></asp:TextBox></td> </tr>
        <tr><td>text</td><td><asp:TextBox ID="textMessage"  runat ="server"  ></asp:TextBox></td> </tr>
        <tr><td colspan ="2"><asp:Button ID="btnSend" runat ="server" Text ="ارسال" /></td></tr>
    </table>
    </div>
    </form>
</body>
</html>
