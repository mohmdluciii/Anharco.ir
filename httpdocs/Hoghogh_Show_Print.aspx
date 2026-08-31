<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Hoghogh_Show_Print.aspx.vb" Inherits="W_ISM.Hoghogh_Show_Print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>چاپ فیش حقوقی</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"><link href="graphic/design.css" rel="stylesheet" />
    <style type ="text/css" >
        table
        {
            width :100%;
            
          
        }
       
         th
         {
             border-bottom :1px solid #000;
             border-top :1px solid #000;
         }
        
       .f1 
	    {
		    
           background :#efefef; 
          
	    }
	
	   .f2
	    {
		   background :#E4E4E4;
          
           
	    }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style ="position:absolute ;top:0px;left :0px;width:620px;height:877px;padding :10px 10px 10px 10px;">
    <%=Session("Print_Hoghogh")%>
    </div>
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
</body>
</html>
<script type ="text/javascript" >
    window.onload = window.print();
</script>
