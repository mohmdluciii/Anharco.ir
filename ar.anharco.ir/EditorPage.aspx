<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditorPage.aspx.vb" Inherits="W_ISM.EditorPage" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type ="text/css" >
    @import url('persian-font.css');    
 </style>
 <style type ="text/css" >
    body::-webkit-scrollbar {
    width: 1em;
}
 
body::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
}
 
body::-webkit-scrollbar-thumb {
  background-color: darkgrey;
  outline: 1px solid slategrey;
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
        
          div:focus{
        outline:none;
        }
         div:click{
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
        a {
		outline: 0;
		}
        a:hover, a:active, a:focus {
		outline: 0;
		}
		input::-moz-focus-inner { 
		border: 0; 
		}
		a, a:active, a:focus {
		outline: none;
		}
		a {
		outline:none !important;
		}        
 </style>

</head>

<body bgcolor="#ffffff" onload="initDoc();">
    <form id="form1"  runat ="server" >
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate >
                                        <asp:Timer ID="Timer2" runat="server" Interval ="1000">
                                        </asp:Timer>
        
        <asp:Label ID="lblStrEditor" runat ="server"  ></asp:Label>
                                    </ContentTemplate>
                        </asp:UpdatePanel>
        <asp:TextBox ID="StrEditor"  runat ="server"  ></asp:TextBox>
    </form>
</body>
</html>
<%=Session("strScript") %>

<script type ="text/javascript" >
    var mainB = document.getElementById("textBox");
 
    var st1 = document.getElementById("StrEditor");
    window.onload = setTimer;
    function setTimer() {
       
window.setInterval(setEditorObject,1000);
    }
    function setEditorObject() {
     
        st1.value = mainB.innerHTML;
    }
</script>
