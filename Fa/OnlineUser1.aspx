<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="OnlineUser1.aspx.vb" Inherits="W_ISM.OnlineUser1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"><link href="graphic/design.css" rel="stylesheet" />
</head>
<body bgcolor='#ffffff'>
    <form id="form1" runat="server">
   <div style="width: 180px">
    <asp:TextBox runat ="server" Visible ="false" ID="txtCheck"></asp:TextBox>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1"  runat="server" UpdateMode ="Conditional"  >
            
        <ContentTemplate >
        <asp:Label ID="lblshow" 
                style="position:absolute;top:0cm; left:0cm; height: 87px; width: 100%;" 
                runat="server"  Text=""></asp:Label>
        
        <asp:Timer ID="Timer1" runat="server" Interval ="1000" >
            </asp:Timer>
        </ContentTemplate>
        </asp:UpdatePanel>
    </div>
  
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
    
</body>
</html>
