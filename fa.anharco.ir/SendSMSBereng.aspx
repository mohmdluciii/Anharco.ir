<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SendSMSBereng.aspx.vb" Inherits="W_ISM.SendSMSBereng" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
          <asp:TextBox id="txt" runat ="server" ></asp:TextBox>
          <asp:Button ID="btnSend" runat ="server" text="send" />
    <div>
    <asp:Timer ID="Timer1" runat="server" Enabled ="false" >
            </asp:Timer>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode ="Conditional" >    
        <ContentTemplate >
         
        
            
            
        </ContentTemplate>
        </asp:UpdatePanel>   
        
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode ="Conditional" >    
        <ContentTemplate >
        
        
            
        </ContentTemplate>
        </asp:UpdatePanel>   
    </div>
    </form>
</body>
</html>
