<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ContactForm.aspx.vb" Inherits="W_ISM.ContactForm" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
     <link href="graphic/BodyGraphic.css" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
      <%--loading click--%>
   <script type="text/javascript" src="JS/1.6.2/jquery.min.js"></script>
	    
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
      <script type="text/javascript" src="js/jquery.min.js"></script> 
    <%--loading click--%>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
     <div onclick="saveDialog.style.display='none';" id="saveDialog" style="position:fixed  ;top:0px;left:0px;width:100%;height:100%;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.5);text-align :center ;z-index:1000000" >
        <div style="position:relative ;float:inherit;margin-left :auto ;margin-right :auto ;margin-top :auto ;margin-bottom :auto  ">
            <asp:Label ID="lblShow" runat ="server"  ></asp:Label>
        </div>
    </div>
        <div class ="contactForm_MainPage">
            <div class="captionBox">Name : </div>
            <div class ="ContentTextBox"><asp:TextBox ID="Name_Comment" runat ="server"  ></asp:TextBox></div>
            
            <div class="captionBox">Phone : </div>
            <div class ="ContentTextBox"><asp:TextBox ID="Phone_Comment" runat ="server"  ></asp:TextBox></div>
            
            <div class="captionBox">Email : </div>
            <div class ="ContentTextBox"><asp:TextBox ID="Email_Comment" runat ="server"  ></asp:TextBox></div>
            
            <div class="captionBox">Title : </div>
            <div class ="ContentTextBox"><asp:TextBox ID="Title_Comment" runat ="server"  ></asp:TextBox></div>
            
            <div class="captionBox">Comment : </div>
            <div class ="ContentTextBox"><asp:TextBox ID="Text_Comment" runat ="server" TextMode ="MultiLine"   ></asp:TextBox></div>
            
            <div class="captionBox">Security code : </div>
            <div class ="ContentTextBox"><p><iframe src="showSign.aspx" style ="position:relative;top:0px;right:0px;float:left ; height:40px;width:130px;border:1px solid #aaa" frameborder ="0" scrolling ="no"  ></iframe> 
            <asp:TextBox autocomplete ="off" Height ="30" style="position:relative ;top:0px;left:10px;float:left; text-align :center;border-radius:0px;border:1px solid #aaa;color:#000;"   ID="txtSign" runat ="server" Width ="100" MaxLength="8" ></asp:TextBox></p></div>
            
            <div class="captionBox"><asp:Label id="lblErr" runat ="server" ></asp:Label></div>
            <div class ="ContentTextBox"><asp:Button ID="btn_Save" runat ="server" Text ="Send" class="ButtonStyle" /></div>
            
        </div>
        <%--loading click--%>
        <asp:ModalPopupExtender BackgroundCssClass="ModalBackground" ID="m" runat="server"  PopupControlID ="Panel1" TargetControlID ="hiddenField">
        </asp:ModalPopupExtender>    
        <asp:Panel ID="panel1" Direction= "RightToLeft"  runat="server"   style="z-index:1000">
        <center ><img src="images/loading.gif" style ="z-index :1000" align="middle"    /></center>
        </asp:Panel> 
        <asp:HiddenField ID="hiddenField" runat ="server" />
        <%--loading click--%>
    </form>
</body>
</html>
<%=Session("scriptSave") %>
