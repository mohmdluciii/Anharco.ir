<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Index_SettingMonitoring.aspx.vb" Inherits="W_ISM.Index_SettingMonitoring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
      <title>صفحه اصلی مانیتورینگ W.ISM</title>
   <script type ="text/javascript" >
     window.onload=setRes
			var flg=1
			
			
	function setRes()
		{
		var sw=screen.width;
		var sh=screen.height;
		var left_amount=0;
		var top_amount=0;
		left_amount=(sw-1024)/2 
		top_amount=0; 
		
		odiv.style.top=top_amount ;
		odiv.style.left=left_amount ;
		odiv1.style.top=top_amount ;
		odiv1.style.left=left_amount ;
		tLoad.style .visibility ="hidden";
        odiv.style .visibility ="visible";
        odiv1.style .visibility ="visible";
		}
    </script>
</head>
<body bgcolor="#24588A" >
<table style="width :100%;height:12cm" id="tLoad">
        <tr><td align ="center" ><img src="images/progress.gif" /></td></tr>
</table>
<div style="position :absolute ;top:0cm;left:0cm;visibility:hidden" id="odiv">
    <img src="images/wism.jpg" style ="position :absolute ;top:0cm;left:14cm" />
    <img src="images/logout.jpg" style="position:absolute ;top:0.3cm;left:0.1cm;cursor:pointer" onmouseover ="this.src='images/logout_over.jpg'" onmouseout="this.src='images/logout.jpg'" alt="خروج از پنل" onclick="location.href='Inputtopanel_supervisor.aspx?exit=1'" /> 
    
    <iframe src="Monitoring_Mainpage.aspx"  
        style ="position :absolute;top:2.5cm;left:0cm;width:26.5cm;height:1223px" 
        frameborder ="0"></iframe>
    <span style ="position :absolute;top:35.4cm; left:5.5cm;width:14cm;font-size:8pt;font-family:Tahoma;color:white;height:1.5cm" 
        dir="rtl">
    <!--کلیه حقوق سامانه WISM متعلق به شرکت مهندسی فرا ارتباط به پویان به شماره ثبت 260518 است.-->
    </span>
    </div> 
</body> 
</html>
