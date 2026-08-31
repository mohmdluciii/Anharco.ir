<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MainPageUserISM.aspx.vb" Inherits="W_ISM.MainPageUserISM" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>صفحه کاربری تعمیر و نگهداری</title>
    
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <link href="Graphic/NetGraphic/design.css" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <script type="text/javascript" language="javascript" src="checkNumber.js"></script>
    <style type ="text/css" >
        html,body{
            margin :0;padding :0;
        }
        
        .addFilter
        {
        	filter: grayscale(100%);
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
      
    <%--loading click--%>
</head>
<body bgcolor="#ffffff">

    <form id="form1" runat="server">
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div class ="PanelUserMainPage">
        <div class ="PanelUserContainer">
            <div class ="TopBar">
                
                <asp:Label id="lblTopBar" runat ="server" ></asp:Label>
            </div>
            <div class ="menuContainer">
                <div class ="menuBox" id="m1"  onclick="window.open('User_StatusRequest.aspx','frameUserPanel');selectMenuTop(this);">
                    
                    <img src="images/user_button1.jpg" />
                     <p>وضعیت درخواست ها</p>
                </div>
                <div class ="menuBox"  id="m2"    onclick="window.open('User_SelectGroupService.aspx','frameUserPanel');selectMenuTop(this);" >
                    <img src="images/user_button2.jpg" />
                     <p>ارسال درخواست</p>
                </div>
                
                <div class ="menuBox"  id="m3"  onclick="window.open('User_MailBox.aspx','frameUserPanel');selectMenuTop(this);">
                    <img src="images/user_button3.jpg" />
                     <p>صندوق پیغام</p>
                </div>
                
                 <div class ="menuBox"  id="m4"  onclick="window.open('Login_User.aspx?e=1','_top');selectMenuTop(this);">
                    <img src="images/user_button4.jpg" />
                     <p>خروج</p>
                </div>
                
            </div>
            
             <iframe name="frameUserPanel" frameborder ="0"  ></iframe>
            <div class ="bottomPage">طراحی و توسعه شرکت بهبود سامانه فرا ارتباط </div>
        </div>
       
    </div>
 <%--loading click--%>
        <asp:ModalPopupExtender BackgroundCssClass="ModalBackground" ID="m"  Y="200" runat="server"  PopupControlID ="Panel1" TargetControlID ="hiddenField">
        </asp:ModalPopupExtender>    
        <asp:Panel ID="panel1" Direction= "RightToLeft"  runat="server"   style="z-index:1000">
        <center ><img src="images/loading.gif" style ="z-index :1000" align="middle"    /></center>
        </asp:Panel> 
        <asp:HiddenField ID="hiddenField" runat ="server" />
        <%--loading click--%>
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
</body>
</html>
<script type="text/javascript" >
    function selectMenuTop(oname) {
        m1.classList.remove("addFilter");
        m2.classList.remove("addFilter");
        m3.classList.remove("addFilter");
        m4.classList.remove("addFilter");
        oname.classList.add("addFilter");
        
    }
</script>
<script type ="text/javascript" >
    $(document).ready(function() {
        $("html").removeClass("loading");
    });
    </script>