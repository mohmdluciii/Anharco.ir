<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="chat_Show.aspx.vb" Inherits="W_ISM.chat_Show" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    
   <script type ="text/javascript" >
        
        function scroll_Object(){
            form1.showMessage1.doScroll("scrollbarPageDown");
        }
   </script>
</head>
<body bgcolor='#ffffff'>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1"  runat="server" UpdateMode ="Conditional"  >
        <ContentTemplate >
        <asp:Label ID="lblshow" style="position:absolute;top:0cm; left:0cm; height: 87px; width: 194px;" runat="server"  Text=""></asp:Label>
        
        <asp:Timer ID="Timer1" runat="server" Enabled ="false"   Interval ="1000" >
            </asp:Timer>
             <asp:Timer ID="Timer2" runat="server" Interval ="3000" Enabled ="false" >
            </asp:Timer>
             <div>
        <table style ="position :absolute ;top:0cm;left:0cm" dir="rtl">
            <tr><td><div runat="server" style="color:white;border-style: none; border-color: inherit; border-width: 0;height: 30px; width: 236px;overflow:auto;font-size:8pt;font-family:Tahoma;background-color:#a20000" dir="rtl" ID="showMember"></div></td> </tr>
            <tr><td><div runat="server" style="border-style: none; border-color: inherit; border-width: 0; height: 167px; width: 236px;overflow:auto;font-size:8pt;font-family:Tahoma" dir="rtl" ID="showMessage"></div> </td></tr>
            
        </table>
        <asp:ListBox Visible ="false"  dir="rtl" Font-Names="tahoma" Font-Size="8pt" border="0"  style="border-style: none; border-color: inherit; border-width: 0; position:absolute;top:0.2cm; left:0.3cm; height: 167px; width: 236px;resize:none;" ID="showMessage1"  runat="server"></asp:ListBox>
            <asp:TextBox ID="rowID_Session" runat ="server" Visible ="false" ></asp:TextBox>
        </div>
        </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
