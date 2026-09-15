<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Person_AddToPost_Save.aspx.vb" Inherits="W_ISM.Person_AddToPost_Save" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>درج پرسنل موجود در پست سازمانی</title>
        <link href="StandardCSS.css" type="text/css" rel="styleSheet"/>
	<script type="text/javascript"  language="javascript" src="checkNumber.js"></script>
		
	
	
	<script type="text/JavaScript" src="curvycorners.src.js"></script>
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

<style type ="text/css" >
	    BODY {
           scrollbar-base-color:#24578A;
           scrollbar-track-color:#82A4D1;
           scrollbar-highlight-color:#82A4D1;
           scrollbar-arrow-color:#EDF3FC
           }
	</style>
</head>
<body bgcolor ="#82A4D1" >
    <form id="form1" runat="server">
    <div>
    <div id="myBox" style ="position :absolute;top:1cm;left:1cm;width:17cm;height:17cm;background-color :#EAF4FF">  
  </div>
  <!-- باکس سایه -->
  <div id="myBox1" style ="position :absolute ;top:1.1cm;left:1.1cm;width:17cm;height:17cm;background-color :#465A73;z-index:-1">  
  </div>
  <!-- باکس سورمه ای اصلی -->
  <div id="myBox2" style ="position :absolute ;top:1.2cm;left:1.2cm;width:16.7cm;height:16.7cm;background-color :#24588A">  
  </div>
  <!-- باکس سفید اصلی -->
  <div id="myBox3" style ="position :absolute ;top:3.2cm;left:1.6cm;width:15.9cm;height:14.4cm;background-color :#ffffff">  
  </div>
  
  <!-- باکس منو هوائی شماره 1 از شمت راست -->
  <div id="myBox4" style ="position :absolute ;top:1.4cm;left:16.7cm;width:0.7cm;height:1.6cm;background-color :#ECF3FD;font-size:0pt">  
    <img src="images/lArow.gif" style ="position :absolute ;top:0.7cm;left:0.25cm" />
  </div>
  <!-- باکس منو هوائی شماره 2 از شمت راست -->
  <div id="myBox5" style ="position :absolute ;top:1.4cm;left:14.9cm;width:1.6cm;height:1.6cm;background-color :#ECF3FD;font-size:0pt">  
    <img src="images/Organ.jpg" style ="position :absolute ;top:0cm;left:0.3cm" />
  </div>
  <!-- باکس منو هوائی شماره 3 از شمت راست -->
  <div id="myBox6" style ="position :absolute ;top:1.4cm;left:10.7cm;width:4cm;height:1.6cm;background-color :#ECF3FD;font-size:0pt">  
  </div>
  
  <!-- باکس منو هوائی شماره 5 از شمت راست -->
  <div id="myBox8" style ="position :absolute ;top:1.4cm;left:9.8cm;width:0.7cm;height:1.6cm;background-color :#ECF3FD;font-size:0pt">  
    <img src="images/rArow.gif" style ="position :absolute ;top:0.7cm;left:0.25cm" />
  </div>
  <!-- منوی بالا هوائی -->
  <div id="myBox9" style ="position :absolute ;top:0.3cm;left:13.5cm;width:3.5cm;height:1cm;background-color :#ECF3FD;font-size:0pt;z-index:-1">  
  </div>
  
  
  <!-- باکس پیغام اصلی هوائی -->
  <div id="myBox11" style ="position :absolute;top:19cm;left:1cm;width:17cm;height:1.8cm;background-color :#EAF4FF">  
  </div>
  <!-- باکس پیغام اصلی سایه -->
  <div id="myBox12" style ="position :absolute;top:19.1cm;left:1.1cm;width:17cm;height:1.8cm;background-color :#465A73;z-index:-1">  
  </div>
  <!-- باکس پیغام اصلی سورمه ای -->
  <div id="myBox13" style ="position :absolute;top:19.18cm;left:1.2cm;width:16.7cm;height:1.5cm;background-color :#24588A">  
    <!-- تصویر Alert -->
    <img src="images/book07.gif" style="position:absolute ;top:0.2cm;left:15.2cm"></div>
  
  <!-- باکس هوائی اصلی -->
  <div id="myBox14" style ="position :absolute;top:22.2cm;left:1cm;width:17cm;height:6cm;background-color :#EAF4FF">  
  </div>
  <!-- باکس هوائی اصلی -->
  <div id="myBox15" style ="position :absolute;top:22.3cm;left:1.1cm;width:17cm;height:6cm;background-color :#465A73;z-index:-1">  
  </div>
  <!-- باکس سورمه ای اصلی -->
  <div id="myBox16" style ="position :absolute ;top:22.4cm;left:1.2cm;width:16.7cm;height:5.6cm;background-color :#24588A">  
  </div>
  <!-- منوی بالا هوائی -->
  <div id="myBox17" style ="position :absolute ;top:21.4cm;left:14cm;width:3.5cm;height:1cm;background-color :#ECF3FD;font-size:0pt;z-index:-1">  
    &nbsp;<span 
          style ="position :absolute;top:0.2cm;left:0.6cm;width:2.1cm; font-size:8pt;font-family :Tahoma;font-weight:600;color:#24588A; height: 13px;" 
          dir="rtl">لیست خطا
    </span>
  </div>
    <%
      If Session("AlertSave") = 1 Then
       %>
            <p id="P1" 
                style="position :absolute;top:19.6cm; left:1.4cm;width:14.1cm;font-size:8pt;font-family :Tahoma;font-weight:600;color:white" 
                dir="rtl">اطلاعات با موفقیت در سیستم ثبت شد.</p>
       <%
      Else
      
     %>
     <p id="alertObject" 
                style="position :absolute;top:19.5cm; left:1.4cm;width:14.1cm;font-size:8pt;font-family :Tahoma;font-weight:600;color:white" 
                dir="rtl"></p>
     <%
      End If
      %>
        
        
        <span   style="position:absolute ;top:0.5cm;left:13.3cm;width:3cm;font-family:Tahoma ;font-size:8pt;font-weight:600;color:#1E5284" dir="rtl"><img src="images/add.gif" align ="middle" >درج اطلاعات</span>
    <table cellpadding="5"  style="position:absolute;top:3.5cm;left:1.5cm;width:15.8cm" dir="rtl" >
            <tr><td>عنوان پست جدید : </td><td colspan ="3"><asp:TextBox  Enabled="false"   ID="TitlePost" runat="server" Width ="400" Font-Names ="tahoma" Font-Size ="8pt"></asp:TextBox> </td></tr>
            <tr><td>منطقه : <b style="color:#a20000">*</b></td><td ><asp:DropDownList  Enabled="false" AutoPostBack ="true"  runat="server" ID="cmb_Organ" width="180"></asp:DropDownList> </td><td rowspan ="4"><asp:Image  ID="img_pathPic_Person" runat="server" style="z-index:100;width:3cm;height:4cm" BorderStyle="Groove" BorderWidth="2px" /></td></tr>
            <tr><td>واحد : <b style="color:#a20000">*</b></td><td ><asp:DropDownList AutoPostBack ="true"  Enabled="false"  runat="server" ID="cmb_Unit" width="180"></asp:DropDownList> </td></tr>
            <tr><td>بخش : <b style="color:#a20000">*</b></td><td ><asp:DropDownList AutoPostBack ="true"  runat="server"  Enabled="false" ID="cmb_Section" width="180"></asp:DropDownList> </td></tr>
            <tr><td>پست سازمانی : <b style="color:#a20000">*</b></td><td ><asp:DropDownList AutoPostBack ="true"  runat="server"  Enabled="false" ID="cmb_Post" width="180"></asp:DropDownList> </td></tr>
            <tr><td>نام : <b style="color:#a20000">*</b></td><td><asp:TextBox  runat ="server"  Enabled="false" ID="Name_Person"></asp:TextBox> </td>
            <td>نام خانوادگی : <b style="color:#a20000">*</b></td><td><asp:TextBox runat ="server"  Enabled="false" Width="140" ID="LName_Person"  ></asp:TextBox> </td></tr>
            <tr><td>عنوان : </td><td><asp:TextBox Width="180px" runat ="server" ID="Title_person"   Enabled="false"  ></asp:TextBox> </td>
            <td>شماره شناسنامه : </td><td><asp:TextBox Width="140" runat ="server" ID="Id_Person"   Enabled="false"></asp:TextBox> </td></tr>
            <tr><td>شماره کد ملی : </td><td><asp:TextBox runat ="server" ID="MeliID_Person" dir="rtl" Width="150"   Enabled="false"></asp:TextBox> </td>
            <td>مدرک تحصیلی : <b style="color:#a20000">*</b></td><td ><asp:DropDownList   runat="server" ID="cmb_doc" width="140"   Enabled="false" ></asp:DropDownList> </td></tr>
            <tr><td>تلفن منزل : </td><td><asp:TextBox runat ="server" ID="homePhone_person" dir="rtl" Width="150"   Enabled="false" ></asp:TextBox> </td>
            <td>تلفن همراه : </td><td><asp:TextBox runat ="server" ID="Mobile_Person" dir="rtl" Width="150"   Enabled="false" ></asp:TextBox> </td></tr>            
            <tr><td>آدرس منزل : </td><td colspan="3"><asp:TextBox runat ="server" ID="HomeAddress_Person" TextMode ="MultiLine"  Enabled="false" dir="rtl" Width="450"   ></asp:TextBox> </td></tr>
            <tr><td>تاریخ تولد : </td>
            <td>
            <div dir="ltr" style="border:1px solid black;width:3.5cm">
				13
				<asp:TextBox  Enabled="false" BackColor ="White"   runat ="server" id="Year_birthDate_Person"  
                        style="font-size:8pt;font-family:tahoma;width:0.4cm;border:0mm" MaxLength ="2" Width="256px"></asp:TextBox>
                <asp:label id="Label13" style="Z-INDEX: 101"
				runat="server" Height="16px" Font-Names="Tahoma" Font-Size="8pt">/</asp:label>
			    <asp:TextBox  Enabled="false"  BackColor ="White" runat ="server" id="month_birthDate_Person"  
                        style="font-size:8pt;font-family:tahoma;width:0.4cm;border:0mm" MaxLength ="2"    Width="256px"></asp:TextBox>
                <asp:label id="Label140" style="Z-INDEX: 101"
				runat="server" Height="16px" Font-Names="Tahoma" Font-Size="8pt">/</asp:label>
				<asp:TextBox  Enabled="false"  BackColor ="White"  runat ="server" id="day_birthDate_Person"  
                        style="font-size:8pt;font-family:tahoma;width:0.4cm;border:0mm" MaxLength ="2" Width="256px"   ></asp:TextBox>
                </div>
            </td>
            <td>شماره پرسنلی : </td><td><asp:TextBox  Enabled="false" runat ="server" ID="noPerson_Person" dir="rtl" Width="150"  ></asp:TextBox> </td></tr>
            
            <tr><td>تصویر پرسنلی : </td><td colspan="3"><asp:FileUpload  Enabled="false"  Width="450px" dir="ltr" runat ="server" ID="pathPic_Person" TextMode=""   ></asp:FileUpload > </td></tr>
            <tr><td>تصویر امضاء : </td><td colspan="3"><asp:FileUpload  Enabled="false"  Width="450px" dir="ltr" runat ="server" ID="pic_Sign" TextMode=""   ></asp:FileUpload > </td></tr>
            <tr><td>رمز اعضاء : </td><td><asp:TextBox runat ="server"  Enabled="false" ID="password_Sign" dir="rtl" Width="150" TextMode ="Password"   ></asp:TextBox> </td></tr>                        
            <tr style ="visibility:hidden "><td>شناسه کاربری : <b style="color:#a20000">*</b></td><td><asp:TextBox MaxLength="10"  runat ="server" ID="uid_Person"></asp:TextBox> </td>
            <td>کلمه عبوری : <b style="color:#a20000">*</b></td><td>
                <asp:TextBox runat ="server" MaxLength="10" ID="pwd_Person"  ></asp:TextBox> </td></tr>
           
        </table>
        <asp:ImageButton  style="cursor:pointer;position:absolute ;top:1.6cm;left:10.8cm" ID="btnSave" Font-Names ="tahoma" Font-Size ="8pt" runat ="server" alt ="ثبت اطلاعات" src="images/button_save.jpg" onmouseover="this.src='images/button_save_over.jpg'" onmouseout="this.src='images/button_save.jpg'" />
       
        <asp:TextBox runat="server" Visible ="false"  ID="RowID_person" Enabled ="false" ></asp:TextBox>
    </div>
       <%
            If Request.QueryString("chart") = 1 and Request .QueryString ("n")<>1 Then
        %>
            <img src="images/backArow.jpg"  style="position:absolute;top:0cm;left:0cm; cursor:pointer" onmouseover="this.src='images/backArow_Over.jpg'" onmouseout="this.src='images/backArow.jpg'"  alt="بازگشت به صفحه نمایش چارت سازمانی"  onclick="location.href='ChartOrgan_Tree.aspx?reback=1'" />            
       <%
       Else
       %>&nbsp;            
       <%
       End If
       %>
    
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
      <%
            if request.queryString("chart")=1 and Request .QueryString ("n")<>1 then
         %>
        <div style="position :absolute ;top:2.8cm;left:20.2cm;width:5cm;background-color:#ECF3FD;height:16.5cm;z-index:2" id="myBox18"></div>
        <div style="position :absolute ;top:3cm;left:20.4cm;width:5cm;background-color:#435269;height:16.5cm;z-index:0" id="myBox19"></div>
        <div style="position :absolute ;top:3cm;left:20.4cm;width:4.6cm;background-color:#24588A;height:16.1cm;z-index:3" id="myBox20"></div>
        <div style="position :absolute ;top:3.5cm;left:20.6cm;width:4.1cm;background-color:#ECF3FD;height:1.8cm;z-index:3;border:1px solid black" id="myBox21">
            <img src="images/m6.jpg" style ="position :relative ;top:0.3cm;left:2.9cm" />
            <span style="position :absolute;top:0.7cm;left:0.1cm; font-size:8pt;font-family:Tahoma;font-weight:600;cursor:pointer;width:2.8cm; height: 13px;" 
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
