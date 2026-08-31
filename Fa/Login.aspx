<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="W_ISM.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
     <link href="graphic/Main.css" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class ="IframeLogin_MainPage">
            <div class ="AlertBox">
                <asp:Label ID="lbl_Alert" runat ="server"  ></asp:Label>
            </div>
            <div class ="uidBox">
                <div class ="CaptionBox">شناسه کاربری : </div>
                <div class ="TextBox"><asp:TextBox AutoComplete="off" ID="UID" runat ="server" class="style_TextBox" ></asp:TextBox></div>
            </div>
            
            <div class ="uidBox">
                <div class ="CaptionBox">کلمه عبوری : </div>
                <div class ="TextBox"><asp:TextBox AutoComplete="off"  ID="PWD" runat ="server" TextMode ="Password"  class="style_TextBox" ></asp:TextBox></div>
            </div>
            
            
            <div class ="uidBox">
                <div class ="CaptionBox"></div>
                <div class ="TextBox"><asp:Button ID="btn_Login" runat ="server" Text ="ورود به پنل" class="btn_Style" /></div>
            </div> 
        </div>
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
</body>
</html>
