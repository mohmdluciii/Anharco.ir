<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SearchPage.aspx.vb" Inherits="W_ISM.SearchPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <script type ="text/javascript" >
         function checkContent(){
            if( s.value=="")
            {
                event.returnValue=false;
            
            }
            else{
                form1.target="_top";
                form1.action="search.aspx";
            }
         }
    </script>
</head>
<body bgcolor="#ffffff">
    <form onsubmit ="checkContent()" id="form1" runat="server" action=""   >
    <div>
    <input style="position:absolute;top:0.1cm; left:4cm; border: 0px solid #F6F3EC;background-color :#ffffff" 
            type="image" src="images/findIcon.png" 
            onmouseover="this.src='images/findIcon.png'" 
            onmouseout="this.src='images/findIcon.png'" title ="شروع جستجو در فروشگاه" 
            alt="شروع جستجو">
    <input id="s" type="text" name="txtSearch" 
            
            style="position:absolute;top:0.1cm; left:0.3cm;font-family: Tahoma; font-size: 8pt; width: 130px; height: 18px; background-color: #ffffff; border: 0px solid #000000; vertical-align: middle;text-align :right;padding :3px 3px 3px 3px" />
    </div>
    </form>
</body>
</html>
