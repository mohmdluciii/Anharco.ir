<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Person_AddToPost.aspx.vb" Inherits="W_ISM.Person_AddToPost" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>جستجو پرسنل برای درج در پست سازمانی</title>
    <link href="StandardCSS.css" type="text/css" rel="styleSheet"/>
	<script type="text/javascript"  language="javascript" src="checkNumber.js"></script>
    <script type="text/JavaScript" src="curvycorners.src.js"></script>
<style type ="text/css" >
	    BODY {
           scrollbar-base-color:#24578A;
           scrollbar-track-color:#82A4D1;
           scrollbar-highlight-color:#82A4D1;
           scrollbar-arrow-color:#EDF3FC
           }
	</style>
	 <style>

#myBox {
    margin: 0.5in auto;
    padding: 20px;
    text-align: left;
}
#myBox p {
  padding:0;
  margin:2ex 0;
}
#myBox1 {
    margin: 0.5in auto;
    padding: 20px;
}
#myBox1 p {
  padding:0;
  margin:2ex 0;
}
#myBox2 {
    margin: 0.5in auto;
    padding: 20px;
    }
#myBox2 p {
  padding:0;
  margin:2ex 0;
}

#myBox3 {
    margin: 0.5in auto;
    padding: 20px;
    }
#myBox3 p {
  padding:0;
  margin:2ex 0;
}


</style>
<script type ="text/javascript" >
    function show_Alert(text_Alert)
    {
        alertObject.innerText =text_Alert ; 
    }
    function hide_Alert()
    {
        alertObject.innerText ="";
    }
</script>
<script type="text/JavaScript">

  <!---->

  function initCorners() {
    var settings = {
      tl: { radius: 12 },
      tr: { radius: 12 },
      bl: { radius: 12 },
      br: { radius: 12 },
      antiAlias: true
    }
    var settings1 = {
      tl: { radius: 7 },
      tr: { radius: 7 },
      bl: { radius: 7 },
      br: { radius: 7 },
      antiAlias: true
    }
    curvyCorners(settings, "#myBox");
    curvyCorners(settings, "#myBox1");
    curvyCorners(settings, "#myBox2");
    curvyCorners(settings, "#myBox3");
    curvyCorners(settings, "#myBox9");
    
    curvyCorners(settings, "#myBox11");
    curvyCorners(settings, "#myBox12");
    curvyCorners(settings, "#myBox13");
         <%
            if request.queryString("chart")=1 then
         %>
    curvyCorners(settings, "#myBox18");
    curvyCorners(settings, "#myBox19");
    curvyCorners(settings, "#myBox20");
    curvyCorners(settings, "#myBox21");
    <%
        end if
     %>
  
  }
  
  

</script>
</head>
<body  bgcolor ="#82A4D1">
    <form id="form1" runat="server">
    <div>
       <div id="myBox" style ="position :absolute;top:2.5cm;left:0.2cm;width:18.5cm;height:20cm;background-color :#EAF4FF">  
  </div>
  <!-- باکس سایه -->
  <div id="myBox1" style ="position :absolute ;top:2.6cm;left:0.3cm;width:18.5cm;height:20cm;background-color :#465A73;z-index:-1">  
  </div>
  <!-- باکس سورمه ای اصلی -->
  <div id="myBox2" style ="position :absolute ;top:2.7cm;left:0.4cm;width:18.2cm;height:19.7cm;background-color :#24588A">  
  </div>
  <!-- باکس سفید اصلی -->
  <div id="myBox3" style ="position :absolute ;top:3.2cm;left:0.8cm;width:17.4cm;height:18.8cm;background-color :#ffffff">  
  </div>
  
 
  <!-- منوی بالا هوائی -->
  <div id="myBox9" style ="position :absolute ;top:3cm;left:14.2cm;width:3.5cm;height:1cm;background-color :#ECF3FD;font-size:0pt;z-index:-1">  
  </div>
  
  
  <!-- باکس پیغام اصلی هوائی -->
  <div id="myBox11" style ="position :absolute;top:0.5cm;left:0.2cm;width:18.5cm;height:1.8cm;background-color :#EAF4FF">  
  </div>
  <!-- باکس پیغام اصلی سایه -->
  <div id="myBox12" style ="position :absolute;top:0.6cm;left:0.3cm;width:18.5cm;height:1.8cm;background-color :#465A73;z-index:-1">  
  </div>
  <!-- باکس پیغام اصلی سورمه ای -->
  <div id="myBox13" 
            style ="position :absolute;top:0.7cm;left:0.4cm;width:18.1cm; height:1.5cm;background-color :#24588A">  
    <!-- تصویر Alert -->
    <img src="images/book07.gif" style="position:absolute ;top:0.2cm;left:16.8cm"></div>
  
  <!-- باکس هوائی اصلی -->
  
 
     <p id="alertObject" 
            style="position :absolute;top:1.2cm;left:1.1cm;width:15.8cm; font-size:8pt;font-family :Tahoma;font-weight:600;color:white" 
            dir="rtl"></p>
            
        
        <span   style="position:absolute ;top:3.2cm;left:14.3cm;width:3cm;font-family:Tahoma ;font-size:8pt;font-weight:600;color:#1E5284" dir="rtl"><img src="images/new.gif" align ="middle" >لیست پرسنل</span>
        <table style="position :absolute ;top:5cm;left:1.2cm;width:16.5cm;font-size:8pt;font-family:Tahoma ;font-weight :600;border:0mm" dir="rtl">
            <tr>
                <td style ="border:0">منطقه : </td>
                <td style ="border:0"><asp:DropDownList  runat ="server" dir="rtl" ID="cmb_Organ" width="200" AutoPostBack="True"></asp:DropDownList></td>
            
                <td style ="border:0">واحد : </td>
                <td style ="border:0"><asp:DropDownList  runat ="server" dir="rtl" ID="cmb_Unit" width="200" AutoPostBack="True"></asp:DropDownList></td>
            </tr>
            <tr>
                <td style ="border:0">بخش : </td>
                <td style ="border:0"><asp:DropDownList  runat ="server" dir="rtl" ID="cmb_Section" width="200" AutoPostBack="True"></asp:DropDownList></td>
            
                <td style ="border:0">پست : </td>
                <td style ="border:0"><asp:DropDownList  runat ="server" dir="rtl" ID="cmb_Post" width="200" AutoPostBack="True"></asp:DropDownList></td>
            </tr>
            <tr>
                <td style ="border:0">نام خانوادگی : </td>
                <td style ="border:0"><asp:TextBox runat ="server" ID="LName_Person" style="width:160px;" AutoPostBack="True"></asp:TextBox></td>
            
                <td style ="border:0">شماره پرسنلی : </td>
                <td style ="border:0"><asp:TextBox runat ="server" ID="noPerson_Person" style="width: 160px;" AutoPostBack="True"></asp:TextBox></td>        
            </tr>
        </table>
        
       
        
        
        
        
            

    </div>
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
     <%
            if request.queryString("chart")=1 then
         %>
        <div style="position :absolute ;top:2.8cm;left:20.2cm;width:5cm;background-color:#ECF3FD;height:16.5cm;z-index:2" id="myBox18"></div>
        <div style="position :absolute ;top:3cm;left:20.4cm;width:5cm;background-color:#435269;height:16.5cm;z-index:0" id="myBox19"></div>
        <div style="position :absolute ;top:3cm;left:20.4cm;width:4.6cm;background-color:#24588A;height:16.1cm;z-index:3" id="myBox20"></div>
        <div style="position :absolute ;top:3.5cm;left:20.6cm;width:4.1cm;background-color:#ECF3FD;height:1.8cm;z-index:3;border:1px solid black" id="myBox21">
            <img src="images/m6.jpg" style ="position :relative ;top:0.3cm;left:2.9cm" />
            <span style="position :absolute;top:0.7cm;left:0cm; font-size:8pt;font-family:Tahoma;font-weight:600;cursor:pointer;width:2.8cm; height: 28px;" 
                onmouseover="this.style.color='#a20000'" 
                onmouseout="this.style.color='#000000'"   
                onclick="set_Menu('14.9','22.3');window.open('Person_AddToPost.aspx','managerFrame')"  
                dir="rtl">درج پرسنل در پست</span>
        </div>
        
        <%
            end if
         %>
</body>
</html>
