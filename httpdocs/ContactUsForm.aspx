<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ContactUsForm.aspx.vb" Inherits="W_ISM.ContactUsForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <style type ="text/css" >
        @import url('persian-font.css');
        #Name_ContactManager
        {
            padding :10px 10px 10px 10px;
            border:1px solid #BCBDC1;
            background :#fff;
            font-family :yekan,arial;
            font-size :10pt;
            color:#8D8D8D;
            text-align :right ;
            width :95%;
            margin-bottom :10px;
        }
        
        #Email_ContactManager
        {
            padding :10px 10px 10px 10px;
            border:1px solid #BCBDC1;
            background :#fff;
            font-family :yekan,arial;
            font-size :10pt;
            color:#8D8D8D;
            text-align :right ;
            width :95%;
            margin-bottom :10px;
        }
        
        #Phone_ContactManager
        {
            padding :10px 10px 10px 10px;
            border:1px solid #BCBDC1;
            background :#fff;
            font-family :yekan,arial;
            font-size :10pt;
            color:#8D8D8D;
            text-align :right ;
            width :95%;
            margin-bottom :10px;
        }
        
        #Message_ContactManager
        {
            padding :10px 10px 10px 10px;
            border:1px solid #BCBDC1;
            background :#fff;
            font-family :yekan,arial;
            font-size :10pt;
            color:#8D8D8D;
            text-align :right ;
            width :95%;
            resize:none;
            margin-bottom :10px;
        }
        
        .errCaption_sendOrder
        {
            font-family :yekan,arial;
            font-size :10pt;
            color:#ff0000;
            text-align :right ;
            direction :rtl;
            width :95%;
            
        }
        
        #btnSave_contactForm
        {
            width:98%;
            min-height :66px;
            background :#FF5402;
            text-align :center ;
            padding :5px 10px 5px 10px;
            color:#fff;
            cursor :pointer ;
            border-width:0;
            border-style :solid ;
            font-family :Yekan,arial;
            font-size :12pt;
        }
        #btnSave_contactForm:hover
        {
            background :#BEBEBE;
        }
        	
        input:focus{
        outline:none;
        }
        button:focus{
        outline:none;
        }
         button:click{
        outline:none;
        }
		textarea:click{
        outline:none;
        }
         textarea:focus{
        outline:none;
        }
          select:focus{
        outline:none;
        }
        select:click{
        outline:none;
        }
        a:focus{
        outline:none;
        }
         a:click{
        outline:none;
        }
        
    </style>
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
    <div style="position:relative ;top:0px;left:0px;width:100%;margin :0;padding :0;">
        <ul style="position:relative  ;top:0px;left:0px;list-style-type:none;margin :0;padding :0;">
            <li><asp:Label  style="width:100%;direction :rtl;" ID="lblErr" runat ="server" class="errCaption_sendOrder" ></asp:Label></li>
            <li><asp:TextBox ID="Name_ContactManager" AutoComplete="off" MaxLength ="200" placeholder="نام و نام خانوادگی *" runat="server"  ></asp:TextBox></li>
            <li><asp:TextBox ID="Email_ContactManager" AutoComplete="off" MaxLength ="200" placeholder="ایمیل آدرس *" runat="server" ></asp:TextBox></li>
            <li><asp:TextBox ID="Phone_ContactManager" AutoComplete="off" MaxLength ="200"  placeholder="تلفن *" runat="server"  ></asp:TextBox></li>
            <li><asp:TextBox ID="Message_ContactManager" AutoComplete="off"  style="direction:rtl;"  placeholder="پیام *" runat="server"  TextMode ="MultiLine"  Height ="215" MaxLength="100"></asp:TextBox></li>
            <li><p><iframe src="showSign.aspx" style ="position:relative;top:0px;left:0px; height:40px;width:130px;border:1px solid #aaa" frameborder ="0" scrolling ="no"  ></iframe> 
            <asp:TextBox autocomplete ="off" Height ="38" style="position:relative ;top:-17px;left:0px; text-align :center;border-radius:0px;border:1px solid #aaa;color:#000;"   ID="txtSign" runat ="server" Width ="100" MaxLength="8" ></asp:TextBox></p></li>
            <li style ="text-align :center ;"><asp:Button ID="btnSave_contactForm" runat ="server" Text="ارسال"  OnClientClick="StartProgressBar()" /></li>        
        </ul>
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