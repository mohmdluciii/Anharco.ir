<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="rep_FormContact_Response.aspx.vb" Inherits="W_ISM.rep_FormContact_Response" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="position:absolute;top:0.3cm; left:0.3cm; width:12cm;font-size:8pt;font-family:tahoma;border:1px groove black" 
        dir="rtl" >
                <tr style="background-color:#094B8E;height:0.8cm;font-weight:600;color:white"><td colspan ="2" align ="center" >فرم پاسخ به کاربر</td></tr>            
                 <tr>
                    <td><asp:Label runat ="server" ID="lblShow"  ></asp:Label></td>
                 </tr>
                 <tr>
                    <td colspan="2"><iframe src="Editor_New.aspx"  style="width:18.5cm;height:16.5cm" frameborder="0" ></iframe> </td>
                 </tr>
                
                <tr>
                    <td colspan ="4"><asp:ImageButton  style="cursor:pointer" ID="btnSend" Font-Names ="tahoma" Font-Size ="8pt" runat ="server" alt ="ثبت اطلاعات" src="images/save.jpg" onmouseover="this.src='images/save_over.jpg'" onmouseout="this.src='images/save.jpg'" />
                    &nbsp<asp:ImageButton  style="cursor:pointer" ID="btnNew" Font-Names ="tahoma" Font-Size ="8pt" runat ="server" alt ="ایجاد اطلاعات جدید" src="images/new.jpg" onmouseover="this.src='images/new_over.jpg'" onmouseout="this.src='images/new.jpg'" />
                    </td>
                </tr>
            </table>
    </div>
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
</body>
</html>
<script >
    $(function() { $('#myAccount5').click(); });
</script>