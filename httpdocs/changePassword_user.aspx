<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="changePassword_user.aspx.vb" Inherits="W_ISM.changePassword_user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>فرم تغییر کلمه عبوری</title>
    <link href="StandardCSS.css" type="text/css" rel="styleSheet"/>
    <script type="text/javascript"  language="javascript" src="checkNumber.js"></script>
</head>
<body bgcolor="#ffffff">
    <form id="form1" runat="server">
     <table style="position:absolute;top:3cm;left:5cm;width:7cm;font-size:8pt;font-family:tahoma;border:1px groove black" dir="rtl" >
                <tr style="background-color:#0A81A0;height:0.8cm;font-weight:600;color:white"><td colspan ="2" align ="center" >فرم تغییر کلمه عبوری </td></tr>            
                <tr>
                    <td>کلمه عبوری فعلی : </td>
                    <td><asp:TextBox MaxLength="50" AutoCompleteType=Disabled    ID="CurrentPassword" runat ="server" Width="80" Font-Size ="8pt" Font-Names ="tahoma" TextMode ="Password" ></asp:TextBox> </td>
                </tr>
                <tr>
                    <td>کلمه عبوری جدید : </td>
                    <td><asp:TextBox MaxLength ="50" ID="newPassword" runat ="server" Width="80" Font-Size ="8pt" Font-Names ="tahoma" TextMode ="Password" ></asp:TextBox> </td>
                </tr>

                <tr>
                    <td colspan ="4"><asp:ImageButton  style="cursor:pointer" ID="btnSend" Font-Names ="tahoma" Font-Size ="8pt" runat ="server" alt ="ثبت اطلاعات" src="images/save.jpg" onmouseover="this.src='images/save_over.jpg'" onmouseout="this.src='images/save.jpg'" />
                    &nbsp
                    </td>
                </tr>
            </table>    
    </form>
</body>
</html>

