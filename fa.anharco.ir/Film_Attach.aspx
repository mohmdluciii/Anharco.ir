<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Film_Attach.aspx.vb" Inherits="W_ISM.Film_Attach" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>درج فایل</title>
    <link href="StandardCSS.css" type="text/css" rel="styleSheet" />

    <script type="text/javascript" language="javascript" src="checkNumber.js"></script>
<script language="javascript" type="text/javascript">
	    function StartProgressBar() {
	        var myExtender = $find('m');
	        myExtender.show();
	        return true;
	    }
</script>
	<style type ="text/css" >
.ModalBackground
{
	background-color:black;

	filter:alpha(opacity=50);
	-moz-opacity:0.5;
	-khtml-opacity: 0.5;
	opacity: 0.5;
}

</style>
</head>
<body bgcolor="white">
    <form id="form1" runat="server">
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <a href="file_attach.aspx">
        <img src="images/icon_Add.jpg" style="position: absolute; top: 0cm; left: 0.5cm;
            cursor: hand" onmouseover="this.src='images/icon_Add_over.jpg'" onmouseout="this.src='images/icon_Add.jpg'"
            alt="رجوع به فرم درج اطلاعات" />
    </a>&nbsp;
    <table cellpadding="4" style="position: absolute; top: 2cm; left: 3cm; width: 18cm"
        dir="rtl">
 
        <tr>
            <td>
                عنوان فایل ضمیمه/تصویر
            </td>
            <td colspan="3">
                <asp:TextBox Width="500px" runat="server" ID="title_Film"></asp:TextBox>
           </td>
        </tr>
        <tr>
            <td>
                انتخاب فایل
            </td>
            <td colspan="3">
                
                <asp:FileUpload Width="500px" dir="ltr" runat="server" ID="name_Film" TextMode="">
                </asp:FileUpload>
            </td>
        </tr>
        <tr>
            <td>
                انتخاب تصویر
            </td>
            <td colspan="3">
                <asp:FileUpload Width="500px" dir="ltr" runat="server" ID="Pic_Film" TextMode="">
                </asp:FileUpload>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="left">
                <asp:ImageButton  onclick="btnSend_Click" OnClientClick="StartProgressBar()"  Style="cursor: hand" ID="btnSend" src="images/icon_uploadfile.jpg"
                    onmouseover="this.src='images/icon_uploadfile_over.jpg'" onmouseout="this.src='images/icon_uploadfile.jpg'"
                    runat="server" alt="ارسال فایل" />
            </td>
        </tr>
    </table>
     <asp:ModalPopupExtender BackgroundCssClass="ModalBackground" ID="m" runat="server"  PopupControlID ="Panel1" TargetControlID ="hiddenField">
        </asp:ModalPopupExtender>    
        <asp:Panel ID="panel1" Direction= "RightToLeft"  runat="server"   style="z-index:1000">
        <center ><img src="images/progress.gif" style ="z-index :1000" align="middle"    /></center>
        </asp:Panel> 
        <asp:HiddenField ID="hiddenField" runat ="server" />
    </form>
</body>
</html>
