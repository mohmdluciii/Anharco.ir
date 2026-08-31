<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Online_Chat.aspx.vb" Inherits="W_ISM.Online_Chat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>گفتگو آنلاین</title>
    <script type ="text/javascript"  >
       
        function  showMessage(){
            setTimeout("f()",100);
            
        }
        function f(){
           
            var h=window.height;
            var w=screen.width ;  
            window.resizeTo (280,500);
            window.resizable="0";
            window.scroll=0;  
            window.screenTop =0;
            window .screenLeft =0; 
             
        }
    </script>
</head>
<body scroll="no"  >
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode ="Conditional" >    
        <ContentTemplate >
         
        <asp:Timer ID="Timer1" runat="server" Enabled ="false"  Interval ="1000">
            </asp:Timer>
            <asp:TextBox dir="rtl" style="border-style: none; border-color: inherit; border-width: 0; position:absolute;top:1.7cm; left:0.4cm; height: 167px;" runat ="server" ID="showMessage" TextMode="MultiLine" Width ="230px" Font-Names="tahoma" Font-Size ="8pt" ReadOnly="True" Visible ="false"   ></asp:TextBox>
            <asp:ListBox dir="rtl" Font-Names="tahoma" Font-Size="8pt"   style="border-style: none; border-color: inherit; border-width: 0; position:absolute;top:1.7cm; left:0.4cm; height: 163px; width: 236px;" 
                ID="showMessage1" Visible ="false"   runat="server"></asp:ListBox>
        </ContentTemplate>
        </asp:UpdatePanel>   
        
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode ="Conditional" >    
        <ContentTemplate >
        
        <asp:Timer ID="Timer2" runat="server" Interval ="1000">
            </asp:Timer>
        </ContentTemplate>
        </asp:UpdatePanel>   
        
        <table cellspacing="0" cellpadding="3"  style ="position :absolute;top:0.3cm; left:0.3cm; width:253px; font-family :Tahoma;font-size :8pt; height: 329px; border:0mm solid gray" 
            dir="rtl" >
        
        <%If Request.QueryString("rowID_Session") <> "" Then%>
        <tr><td style ="height:6cm"><iframe src="chat_Show.aspx?rowID_Session=<%=Request.QueryString("rowID_Session") %>" id="myFrame" style="z-index:10;border-style: none; border-color: inherit; border-width: 0;  height: 240px; width: 260px"   ></iframe> </td></tr>
        <%Else%>
        <tr><td style ="height:6cm"><iframe src="chat_Show.aspx?rowID_Session=<%=Session("public_Key") %>" id="Iframe1" style="z-index:10;border-style: none; border-color: inherit; border-width: 0;  height: 240px; width: 260px"   ></iframe></td></tr>
        <%End If%>
        <tr><td align ="center" >
            <asp:TextBox ID="sendMessage" runat ="server" TextMode="MultiLine"   Width ="230px" Height ="53px" 
                Font-Names="tahoma" Font-Size="8pt" style="border:0.2mm solid gray"  ></asp:TextBox>
                </td></tr>        
        <tr><td align ="right" >
            <asp:LinkButton ID="btnExit" runat="server" style="font-size:8pt;font-family:Tahoma;color:Blue;height:0.5cm;border-bottom:0.2mm solid blue;text-decoration:none" onmouseover="this.style.color='red'" onmouseout="this.style.color='blue'">لغو گفتگو</asp:LinkButton>
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btSend" runat ="server" Font-Names="tahoma" Font-Size="8pt" 
                Text ="ارسال" Height="35px" Width="81px"   />  </td></tr>
    
    <asp:TextBox ID="rowID_Session" runat ="server" Visible ="false" ></asp:TextBox>

        </table>
   </div>
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
</body>
</html>
