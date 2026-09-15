<%@ Page Language="vb"  AutoEventWireup="false" validateRequest="false" CodeBehind="Editor.aspx.vb" Inherits="W_ISM.Editor" Debug ="true"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    
    <script type="text/javascript" >
    var flg=0
    var flg1=0
	function setColorDemo(oname)
	{
		oshowColor.style.backgroundColor=oname
		oshowAmount.innerText=oname	
	}
	function selectBoxColor(oname)
	{
		cmdExec1('foreColor',oname)
	}
	function showColorTable()
	{
	    if (flg==0)
	    {
	        colorT .style .visibility ="visible"
	        flg=1
	    }
	    else
	    {
	        colorT .style .visibility ="Hidden"
	        flg=0
	    }
	}
	function closeColorBox()
	{
	    colorT.style .visibility ="hidden"
	    flg=0
	}
	
	function closeColorBox1()
	{
	    colorT1.style .visibility ="hidden"
	    flg1=0
	}
	
	function showColorTable1()
	{
	    if (flg1==0)
	    {
	        colorT1 .style .visibility ="visible"
	        flg1=1
	    }
	    else
	    {
	        colorT1 .style .visibility ="Hidden"
	        flg1=0
	    }
	}
	function setColorDemo1(oname)
	{
		oshowColor1.style.backgroundColor=oname
		oshowAmount1.innerText=oname	
	}
</script>
<script for=window event=onunload>
    event.returnValue=false
    exitForm.submit()
</script>
</head>
<body bgcolor="#ffffff">
    
  <form id="exitForm" action="" method="post">
    <input type=hidden name="txtHideExit" value='hide' id="h" />
  </form>
  <%
      If Request.Form("txtHideExit") <> "" Then
          Session("EndEditor") = 1
          Response.Write("<script>window.close()</script>")
      End If
  %>
 <%
     
     Dim nameObject As String = "textEditor1"
     Dim nameForm As String = "ofrm"
     Dim align As String = "right"
     Dim height As String = "12"
     Dim amount_Direction As String = "rtl"
%>

<style type ="text/css" >
	select{font-family:tahoma;font-size:8pt}
</style>
<html>
<head>
<title>Text Editor</title>

<script language="javascript">
<!--
function over(element) {
element.style.borderStyle= "solid";
element.style.borderWidth = "1px";
element.style.borderColor = "#000000";
element.style.backgroundColor = "#F1F1F1";
element.style.cursor = "hand";
}

function out(element) {
element.style.borderColor = "#CCCCCC";
element.style.backgroundColor = "#CCCCCC"
element.style.cursor = "default";
}


function readyDiv1() {
var theHTML1;
theHTML1 = document.all.tags('div')['<%=nameObject%>'].innerText;

document.all.tags('div')['<%=nameObject%>'].innerHTML = theHTML1;
}


function cmdExec1(cmd,opt) {

<%=nameForm%>.<%=nameObject%>.document.execCommand(cmd,"",opt);

document.body.all.tags('div')['<%=nameObject%>'].focus();
}

function createLink() {
cmdExec1("createLink");
}

function insertImage1() {
var sImgSrc = prompt("Image: ", "http://www.[domain].[ext]/[folder]/[file]");
if(sImgSrc!=null)
cmdExec1("InsertImage1",sImgSrc);
}

function div2hidden1(objForm) {
objForm.textEditor1.value = document.all.tags('div')['<%=nameObject%>'].innerHTML;
}

function go(where) {
window.location.href = where;
}
//-->
</script>
</head>



<form  id="ofrm" method="post" onsubmit="return div2hidden1(this);"  action="#">
<input style="" alt="برای ثبت اطلاعات در ویرایشگر متن روی این دکمه کلیک نمائید" type=image value="save" src="images/disket.jpg" onmouseover ="this.src='images/disket_over.jpg'" onmouseout="this.src='images/disket.jpg'">
<input type="hidden" name="<%=nameObject%>" value="">
<input type="hidden" name="update1" value="1">

<br>
<table width="640" cellpadding="2" cellspacing="2"  style="border-style: solid; border-width: 1px; border-color: #000000;font-family:tahoma" bgcolor="#CCCCCC">
<tr>
 <td width="100%" align="center">

 </td>
</tr>
<tr>
 <td>
 <table width="100%" cellpadding="0" cellspacing="0" border="1" bordercolor="#CCCCCC">
 <tr>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('cut')">
  <img src="img/cut.gif" alt="CUT - Ctrl + X">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('copy')">
  <img src="img/copy.gif" alt="COPY - Ctrl + C">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('paste')">
  <img src="img/paste.gif" alt="PASTE - Ctrl + V">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('bold')">
  <img src="img/bold.gif" alt="برجسته - Ctrl + B">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('italic')">
  <img src="img/italic.gif" alt="ایتالیک - Ctrl + I">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('underline')">
  <img src="img/underline.gif" alt="زیر خط - Ctrl + U">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('justifyleft')">
  <img src="img/left.gif" alt="چپ چین">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('justifycenter')">
  <img src="img/center.gif" alt="وسط چین">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('justifyright')">
  <img src="img/right.gif" alt="راست چین">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('insertorderedlist')">
  <img hspace="2" vspace="1" src="img/numlist.gif" alt="Ordered List">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('insertunorderedlist')">
  <img hspace="2" vspace="1" src="img/bullist.gif" alt="Unordered List">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('outdent')">
  <img hspace="2" vspace="1" src="img/unindent.gif" alt="Decrease Indent">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('indent')">
  <img hspace="2" vspace="1" src="img/indent.gif" alt="ایجاد دندانه در متن">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="cmdExec1('createLink')">
  <img hspace="2" vspace="1" src="img/link.gif" alt="ایجاد یک پیوند - Ctrl + K">
  </div>
  </td>
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="15" height="20">
  <div onclick="insertImage1()">
  <img hspace="2" vspace="1" align="absmiddle" src="img/image.gif" alt="درج تصویر در ویرایشگر">
  </div>
  </td>
 
 </tr>
 <tr valign="middle">
  <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="35" height="20">
  <div >
  <img hspace="2" vspace="1" align="absmiddle" src="img/forecolor.gif" alt="تغییر رنگ متن"  onmousedown="showColorTable();colorT.style.top=event.y;colorT.style.left=event.x" >
  </div>
  </td>
   <td valign="center" align="center" onmouseover="over(this);" onmouseout="out(this);" width="35" height="20">
  <div style="width:0.6cm">
  <img hspace="2" vspace="1" align="absmiddle" src="img/backcolor.gif" alt="تغییر رنگ پس زمینه" onmousedown="showColorTable1();colorT1.style.top=event.y;colorT1.style.left=event.x" >
  </div>
  </td>
  <td colspan="16" width="100%">
  
  <!-- color palet -->
  <table id=colorT dir=rtl cellpadding=0 cellspacing=1 style='background-color:white;border:0.4mm groove black;position:absolute;top:0cm;left:0cm;visibility:hidden'>
	<tr>
		<td width='20' bgcolor="#000000" onmouseover=setColorDemo('#000000')  onclick="selectBoxColor('#000000');closeColorBox()"><input type=button style="border:0mm;background-color:#000000" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#000000')"></td>
		<td width='20' bgcolor="#2E2E2E" onmouseover=setColorDemo('#2E2E2E')  onclick=selectBoxColor('#2E2E2E');closeColorBox()><input type=button style="border:0mm;background-color:#2E2E2E" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#2E2E2E')"></td>
		<td width='20' bgcolor="#464646" onmouseover=setColorDemo('#464646')  onclick=selectBoxColor('#464646');closeColorBox()><input type=button style="border:0mm;background-color:#464646" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#464646')"></td>
		<td width='20' bgcolor="#747474" onmouseover=setColorDemo('#747474')  onclick=selectBoxColor('#747474');closeColorBox()><input type=button style="border:0mm;background-color:#747474" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#747474')"></td>
		<td width='20' bgcolor="#8C8C8C" onmouseover=setColorDemo('#8C8C8C')  onclick=selectBoxColor('#8C8C8C');closeColorBox()><input type=button style="border:0mm;background-color:#8C8C8C" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#8C8C8C')"></td>
		<td width='20' bgcolor="#A4A4A4" onmouseover=setColorDemo('#A4A4A4')  onclick=selectBoxColor('#A4A4A4');closeColorBox()><input type=button style="border:0mm;background-color:#A4A4A4" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#A4A4A4')"></td>
		<td width='20' bgcolor="#BCBCBC" onmouseover=setColorDemo('#BCBCBC')  onclick=selectBoxColor('#BCBCBC');closeColorBox()><input type=button style="border:0mm;background-color:#BCBCBC" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#BCBCBC')"></td>
		<td width='20' bgcolor="#EAEAEA" onmouseover=setColorDemo('#EAEAEA')  onclick=selectBoxColor('#EAEAEA');closeColorBox()><input type=button style="border:0mm;background-color:#EAEAEA" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#EAEAEA')"></td>
	</tr>

	<tr >
		<td width='20' bgcolor="#004669" onmouseover=setColorDemo('#004669')  onclick=selectBoxColor('#004669');closeColorBox()><input type=button style="border:0mm;background-color:#004669" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#004669')"></td>
		<td width='20' bgcolor="#005A87" onmouseover=setColorDemo('#005A87')  onclick=selectBoxColor('#005A87');closeColorBox()><input type=button style="border:0mm;background-color:#005A87" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#005A87')"></td>
		<td width='20' bgcolor="#006EA5" onmouseover=setColorDemo('#006EA5')  onclick=selectBoxColor('#006EA5');closeColorBox()><input type=button style="border:0mm;background-color:#006EA5" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#006EA5')"></td>
		<td width='20' bgcolor="#0082C3" onmouseover=setColorDemo('#0082C3')  onclick=selectBoxColor('#0082C3');closeColorBox()><input type=button style="border:0mm;background-color:#0082C3" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#0082C3')"></td>
		<td width='20' bgcolor="#0096E1" onmouseover=setColorDemo('#0096E1')  onclick=selectBoxColor('#0096E1');closeColorBox()><input type=button style="border:0mm;background-color:#0096E1" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#0096E1')"></td>
		<td width='20' bgcolor="#00AAFF" onmouseover=setColorDemo('#00AAFF')  onclick=selectBoxColor('#00AAFF');closeColorBox()><input type=button style="border:0mm;background-color:#00AAFF" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#00AAFF')"></td>
		<td width='20' bgcolor="#3CBEFF" onmouseover=setColorDemo('#3CBEFF')  onclick=selectBoxColor('#3CBEFF');closeColorBox()><input type=button style="border:0mm;background-color:#3CBEFF" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#3CBEFF')"></td>
		<td width='20' bgcolor="#78D2FF" onmouseover=setColorDemo('#78D2FF')  onclick=selectBoxColor('#78D2FF');closeColorBox()><input type=button style="border:0mm;background-color:#78D2FF" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#78D2FF')"></td>
		
	</tr>




	<tr >
		<td width='20' bgcolor="#001C69" onmouseover=setColorDemo('#001C69')  onclick=selectBoxColor('#001C69');closeColorBox()><input type=button style="border:0mm;background-color:#001C69" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#001C69')"></td>
		<td width='20' bgcolor="#002487" onmouseover=setColorDemo('#002487')  onclick=selectBoxColor('#002487');closeColorBox()><input type=button style="border:0mm;background-color:#002487" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#002487')"></td>
		<td width='20' bgcolor="#002CA5" onmouseover=setColorDemo('#002CA5')  onclick=selectBoxColor('#002CA5');closeColorBox()><input type=button style="border:0mm;background-color:#002CA5" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#002CA5')"></td>
		<td width='20' bgcolor="#0034C3" onmouseover=setColorDemo('#0034C3')  onclick=selectBoxColor('#0034C3');closeColorBox()><input type=button style="border:0mm;background-color:#0034C3" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#0034C3')"></td>
		<td width='20' bgcolor="#003CE1" onmouseover=setColorDemo('#003CE1')  onclick=selectBoxColor('#003CE1');closeColorBox()><input type=button style="border:0mm;background-color:#003CE1" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#003CE1')"></td>
		<td width='20' bgcolor="#0044FF" onmouseover=setColorDemo('#0044FF')  onclick=selectBoxColor('#0044FF');closeColorBox()><input type=button style="border:0mm;background-color:#0044FF" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#0044FF')"></td>
		<td width='20' bgcolor="#3C70FF" onmouseover=setColorDemo('#3C70FF')  onclick=selectBoxColor('#3C70FF');closeColorBox()><input type=button style="border:0mm;background-color:#3C70FF" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#3C70FF')"></td>
		<td width='20' bgcolor="#789CFF" onmouseover=setColorDemo('#789CFF')  onclick=selectBoxColor('#789CFF');closeColorBox()><input type=button style="border:0mm;background-color:#789CFF" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#789CFF')"></td>
		
	</tr>

	<tr >
		<td width='20' bgcolor="#006946" onmouseover=setColorDemo('#006946')  onclick=selectBoxColor('#006946');closeColorBox()><input type=button style="border:0mm;background-color:#006946" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#006946')"></td>
		<td width='20' bgcolor="#00875A" onmouseover=setColorDemo('#00875A')  onclick=selectBoxColor('#00875A');closeColorBox()><input type=button style="border:0mm;background-color:#00875A" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#00875A')"></td>
		<td width='20' bgcolor="#00A56E" onmouseover=setColorDemo('#00A56E')  onclick=selectBoxColor('#00A56E');closeColorBox()><input type=button style="border:0mm;background-color:#00A56E" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#00A56E')"></td>
		<td width='20' bgcolor="#00C382" onmouseover=setColorDemo('#00C382')  onclick=selectBoxColor('#00C382');closeColorBox()><input type=button style="border:0mm;background-color:#00C382" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#00C382')"></td>
		<td width='20' bgcolor="#00E196" onmouseover=setColorDemo('#00E196')  onclick=selectBoxColor('#00E196');closeColorBox()><input type=button style="border:0mm;background-color:#00E196" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#00E196')"></td>
		<td width='20' bgcolor="#00FFAA" onmouseover=setColorDemo('#00FFAA')  onclick=selectBoxColor('#00FFAA');closeColorBox()><input type=button style="border:0mm;background-color:#00FFAA" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#00FFAA')"></td>
		<td width='20' bgcolor="#00FFAA" onmouseover=setColorDemo('#00FFAA')  onclick=selectBoxColor('#00FFAA');closeColorBox()><input type=button style="border:0mm;background-color:#00FFAA" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#00FFAA')"></td>
		<td width='20' bgcolor="#78FFD2" onmouseover=setColorDemo('#78FFD2')  onclick=selectBoxColor('#78FFD2');closeColorBox()><input type=button style="border:0mm;background-color:#78FFD2" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#78FFD2')"></td>
		
	</tr>

	<tr >
		<td width='20' bgcolor="#466900" onmouseover=setColorDemo('#466900')  onclick=selectBoxColor('#466900');closeColorBox()><input type=button style="border:0mm;background-color:#466900" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#466900')"></td>
		<td width='20' bgcolor="#5A8700" onmouseover=setColorDemo('#5A8700')  onclick=selectBoxColor('#5A8700');closeColorBox()><input type=button style="border:0mm;background-color:#5A8700" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#5A8700')"></td>
		<td width='20' bgcolor="#6EA500" onmouseover=setColorDemo('#6EA500')  onclick=selectBoxColor('#6EA500');closeColorBox()><input type=button style="border:0mm;background-color:#6EA500" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#6EA500')"></td>
		<td width='20' bgcolor="#82C300" onmouseover=setColorDemo('#82C300')  onclick=selectBoxColor('#82C300');closeColorBox()><input type=button style="border:0mm;background-color:#82C300" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#82C300')"></td>
		<td width='20' bgcolor="#96E100" onmouseover=setColorDemo('#96E100')  onclick=selectBoxColor('#96E100');closeColorBox()><input type=button style="border:0mm;background-color:#96E100" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#96E100')"></td>
		<td width='20' bgcolor="#AAFF00" onmouseover=setColorDemo('#AAFF00')  onclick=selectBoxColor('#AAFF00');closeColorBox()><input type=button style="border:0mm;background-color:#AAFF00" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#AAFF00')"></td>
		<td width='20' bgcolor="#BEFF3C" onmouseover=setColorDemo('#BEFF3C')  onclick=selectBoxColor('#BEFF3C');closeColorBox()><input type=button style="border:0mm;background-color:#BEFF3C" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#BEFF3C')"></td>
		<td width='20' bgcolor="#D2FF78" onmouseover=setColorDemo('#D2FF78')  onclick=selectBoxColor('#D2FF78');closeColorBox()><input type=button style="border:0mm;background-color:#D2FF78" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#D2FF78')"></td>
		
	</tr>

	<tr >
		<td width='20' bgcolor="#690000" onmouseover=setColorDemo('#690000')  onclick=selectBoxColor('#690000');closeColorBox()><input type=button style="border:0mm;background-color:#690000" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#690000')"></td>
		<td width='20' bgcolor="#870000" onmouseover=setColorDemo('#870000')  onclick=selectBoxColor('#870000');closeColorBox()><input type=button style="border:0mm;background-color:#870000" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#870000')"></td>
		<td width='20' bgcolor="#A50000" onmouseover=setColorDemo('#A50000')  onclick=selectBoxColor('#A50000');closeColorBox()><input type=button style="border:0mm;background-color:#A50000" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#A50000')"></td>
		<td width='20' bgcolor="#C30000" onmouseover=setColorDemo('#C30000')  onclick=selectBoxColor('#C30000');closeColorBox()><input type=button style="border:0mm;background-color:#C30000" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#C30000')"></td>
		<td width='20' bgcolor="#E10000" onmouseover=setColorDemo('#E10000')  onclick=selectBoxColor('#E10000');closeColorBox()><input type=button style="border:0mm;background-color:#E10000" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#E10000')"></td>
		<td width='20' bgcolor="#FF0000" onmouseover=setColorDemo('#FF0000')  onclick=selectBoxColor('#FF0000');closeColorBox()><input type=button style="border:0mm;background-color:#FF0000" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#FF0000')"></td>
		<td width='20' bgcolor="#FF2828" onmouseover=setColorDemo('#FF2828')  onclick=selectBoxColor('#FF2828');closeColorBox()><input type=button style="border:0mm;background-color:#FF2828" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#FF2828')"></td>
		<td width='20' bgcolor="#FF5050" onmouseover=setColorDemo('#FF5050')  onclick=selectBoxColor('#FF5050');closeColorBox()><input type=button style="border:0mm;background-color:#FF5050" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#FF5050')"></td>
	</tr>

	<tr >
		<td width='20' bgcolor="#693A00" onmouseover=setColorDemo('#693A00') onclick=selectBoxColor('#693A00');closeColorBox()><input type=button style="border:0mm;background-color:#693A00" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#693A00')"></td>
		<td width='20' bgcolor="#874A00" onmouseover=setColorDemo('#874A00') onclick=selectBoxColor('#874A00');closeColorBox()><input type=button style="border:0mm;background-color:#874A00" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#874A00')"></td>
		<td width='20' bgcolor="#A55B00" onmouseover=setColorDemo('#A55B00') onclick=selectBoxColor('#A55B00');closeColorBox()><input type=button style="border:0mm;background-color:#A55B00" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#A55B00')"></td>
		<td width='20' bgcolor="#C36B00" onmouseover=setColorDemo('#C36B00') onclick=selectBoxColor('#C36B00');closeColorBox()><input type=button style="border:0mm;background-color:#C36B00" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#C36B00')"></td>
		<td width='20' bgcolor="#E17C00" onmouseover=setColorDemo('#E17C00') onclick=selectBoxColor('#E17C00');closeColorBox()><input type=button style="border:0mm;background-color:#E17C00" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#E17C00')"></td>
		<td width='20' bgcolor="#FF8C00" onmouseover=setColorDemo('#FF8C00') onclick=selectBoxColor('#FF8C00');closeColorBox()><input type=button style="border:0mm;background-color:#FF8C00" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#FF8C00')"></td>
		<td width='20' bgcolor="#FF9E28" onmouseover=setColorDemo('#FF9E28') onclick=selectBoxColor('#FF9E28');closeColorBox()><input type=button style="border:0mm;background-color:#FF9E28" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#FF9E28')"></td>
		<td width='20' bgcolor="#FFB050" onmouseover=setColorDemo('#FFB050') onclick=selectBoxColor('#FFB050');closeColorBox()><input type=button style="border:0mm;background-color:#FFB050" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#FFB050')"></td>
	</tr>

	<tr >
		<td width='20' bgcolor="#9B9B00" onmouseover=setColorDemo('#9B9B00') onclick=selectBoxColor('#9B9B00');closeColorBox()><input type=button style="border:0mm;background-color:#9B9B00" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#9B9B00')"></td>
		<td width='20' bgcolor="#AFAF00" onmouseover=setColorDemo('#AFAF00') onclick=selectBoxColor('#AFAF00');closeColorBox()><input type=button style="border:0mm;background-color:#AFAF00" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#AFAF00')"></td>
		<td width='20' bgcolor="#C3C300" onmouseover=setColorDemo('#C3C300') onclick=selectBoxColor('#C3C300');closeColorBox()><input type=button style="border:0mm;background-color:#C3C300" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#C3C300')"></td>
		<td width='20' bgcolor="#D7D700" onmouseover=setColorDemo('#D7D700') onclick=selectBoxColor('#D7D700');closeColorBox()><input type=button style="border:0mm;background-color:#D7D700" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#D7D700')"></td>
		<td width='20' bgcolor="#EBEB00" onmouseover=setColorDemo('#EBEB00') onclick=selectBoxColor('#EBEB00');closeColorBox()><input type=button style="border:0mm;background-color:#EBEB00" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#EBEB00')"></td>
		<td width='20' bgcolor="#FFFF00" onmouseover=setColorDemo('#FFFF00') onclick=selectBoxColor('#FFFF00');closeColorBox()><input type=button style="border:0mm;background-color:#FFFF00" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#FFFF00')"></td>
		<td width='20' bgcolor="#FFFF3C" onmouseover=setColorDemo('#FFFF3C') onclick ="closeColorBox()"><input type=button style="border:0mm;background-color:#FFFF3C" style="height:20px;width:20px" onclick="cmdExec1('foreColor','#FFFF3C')"></td>
		<td width='20' bgcolor="#FFFFFF" onmouseover=setColorDemo('#FFFFFF') onclick="selectBoxColor('#FFFFFF')">&nbsp</td>
	</tr>
	<tr>
		<td colspan=4 id=oshowColor>&nbsp</td>
		<td colspan=4 dir=ltr align=center style='font-size:8pt' id=oshowAmount>&nbsp</td>
	</tr>
</table>

<!-- color palet backColor -->
<!-- color palet -->
  <table id="colorT1" dir="rtl" cellpadding=0 cellspacing=1 style='background-color:white;border:0.4mm groove black;position:absolute;top:0cm;left:0cm;visibility:hidden'>
	<tr>
		<td width='20' bgcolor="#000000" onmouseover=setColorDemo1('#000000')  onclick="selectBoxColor('#000000');closeColorBox1()"><input type=button style="border:0mm;background-color:#000000" style="height:20px;width:20px" onclick="cmdExec1('backColor','#000000')"></td>
		<td width='20' bgcolor="#2E2E2E" onmouseover=setColorDemo1('#2E2E2E')  onclick=selectBoxColor('#2E2E2E');closeColorBox1()><input type=button style="border:0mm;background-color:#2E2E2E" style="height:20px;width:20px" onclick="cmdExec1('backColor','#2E2E2E')"></td>
		<td width='20' bgcolor="#464646" onmouseover=setColorDemo1('#464646')  onclick=selectBoxColor('#464646');closeColorBox1()><input type=button style="border:0mm;background-color:#464646" style="height:20px;width:20px" onclick="cmdExec1('backColor','#464646')"></td>
		<td width='20' bgcolor="#747474" onmouseover=setColorDemo1('#747474')  onclick=selectBoxColor('#747474');closeColorBox1()><input type=button style="border:0mm;background-color:#747474" style="height:20px;width:20px" onclick="cmdExec1('backColor','#747474')"></td>
		<td width='20' bgcolor="#8C8C8C" onmouseover=setColorDemo1('#8C8C8C')  onclick=selectBoxColor('#8C8C8C');closeColorBox1()><input type=button style="border:0mm;background-color:#8C8C8C" style="height:20px;width:20px" onclick="cmdExec1('backColor','#8C8C8C')"></td>
		<td width='20' bgcolor="#A4A4A4" onmouseover=setColorDemo1('#A4A4A4')  onclick=selectBoxColor('#A4A4A4');closeColorBox1()><input type=button style="border:0mm;background-color:#A4A4A4" style="height:20px;width:20px" onclick="cmdExec1('backColor','#A4A4A4')"></td>
		<td width='20' bgcolor="#BCBCBC" onmouseover=setColorDemo1('#BCBCBC')  onclick=selectBoxColor('#BCBCBC');closeColorBox1()><input type=button style="border:0mm;background-color:#BCBCBC" style="height:20px;width:20px" onclick="cmdExec1('backColor','#BCBCBC')"></td>
		<td width='20' bgcolor="#EAEAEA" onmouseover=setColorDemo1('#EAEAEA')  onclick=selectBoxColor('#EAEAEA');closeColorBox1()><input type=button style="border:0mm;background-color:#EAEAEA" style="height:20px;width:20px" onclick="cmdExec1('backColor','#EAEAEA')"></td>
	</tr>

	<tr >
		<td width='20' bgcolor="#004669" onmouseover=setColorDemo1('#004669')  onclick=selectBoxColor('#004669');closeColorBox1()><input type=button style="border:0mm;background-color:#004669" style="height:20px;width:20px" onclick="cmdExec1('backColor','#004669')"></td>
		<td width='20' bgcolor="#005A87" onmouseover=setColorDemo1('#005A87')  onclick=selectBoxColor('#005A87');closeColorBox1()><input type=button style="border:0mm;background-color:#005A87" style="height:20px;width:20px" onclick="cmdExec1('backColor','#005A87')"></td>
		<td width='20' bgcolor="#006EA5" onmouseover=setColorDemo1('#006EA5')  onclick=selectBoxColor('#006EA5');closeColorBox1()><input type=button style="border:0mm;background-color:#006EA5" style="height:20px;width:20px" onclick="cmdExec1('backColor','#006EA5')"></td>
		<td width='20' bgcolor="#0082C3" onmouseover=setColorDemo1('#0082C3')  onclick=selectBoxColor('#0082C3');closeColorBox1()><input type=button style="border:0mm;background-color:#0082C3" style="height:20px;width:20px" onclick="cmdExec1('backColor','#0082C3')"></td>
		<td width='20' bgcolor="#0096E1" onmouseover=setColorDemo1('#0096E1')  onclick=selectBoxColor('#0096E1');closeColorBox1()><input type=button style="border:0mm;background-color:#0096E1" style="height:20px;width:20px" onclick="cmdExec1('backColor','#0096E1')"></td>
		<td width='20' bgcolor="#00AAFF" onmouseover=setColorDemo1('#00AAFF')  onclick=selectBoxColor('#00AAFF');closeColorBox1()><input type=button style="border:0mm;background-color:#00AAFF" style="height:20px;width:20px" onclick="cmdExec1('backColor','#00AAFF')"></td>
		<td width='20' bgcolor="#3CBEFF" onmouseover=setColorDemo1('#3CBEFF')  onclick=selectBoxColor('#3CBEFF');closeColorBox1()><input type=button style="border:0mm;background-color:#3CBEFF" style="height:20px;width:20px" onclick="cmdExec1('backColor','#3CBEFF')"></td>
		<td width='20' bgcolor="#78D2FF" onmouseover=setColorDemo1('#78D2FF')  onclick=selectBoxColor('#78D2FF');closeColorBox1()><input type=button style="border:0mm;background-color:#78D2FF" style="height:20px;width:20px" onclick="cmdExec1('backColor','#78D2FF')"></td>
		
	</tr>




	<tr >
		<td width='20' bgcolor="#001C69" onmouseover=setColorDemo1('#001C69')  onclick=selectBoxColor('#001C69');closeColorBox1()><input type=button style="border:0mm;background-color:#001C69" style="height:20px;width:20px" onclick="cmdExec1('backColor','#001C69')"></td>
		<td width='20' bgcolor="#002487" onmouseover=setColorDemo1('#002487')  onclick=selectBoxColor('#002487');closeColorBox1()><input type=button style="border:0mm;background-color:#002487" style="height:20px;width:20px" onclick="cmdExec1('backColor','#002487')"></td>
		<td width='20' bgcolor="#002CA5" onmouseover=setColorDemo1('#002CA5')  onclick=selectBoxColor('#002CA5');closeColorBox1()><input type=button style="border:0mm;background-color:#002CA5" style="height:20px;width:20px" onclick="cmdExec1('backColor','#002CA5')"></td>
		<td width='20' bgcolor="#0034C3" onmouseover=setColorDemo1('#0034C3')  onclick=selectBoxColor('#0034C3');closeColorBox1()><input type=button style="border:0mm;background-color:#0034C3" style="height:20px;width:20px" onclick="cmdExec1('backColor','#0034C3')"></td>
		<td width='20' bgcolor="#003CE1" onmouseover=setColorDemo1('#003CE1')  onclick=selectBoxColor('#003CE1');closeColorBox1()><input type=button style="border:0mm;background-color:#003CE1" style="height:20px;width:20px" onclick="cmdExec1('backColor','#003CE1')"></td>
		<td width='20' bgcolor="#0044FF" onmouseover=setColorDemo1('#0044FF')  onclick=selectBoxColor('#0044FF');closeColorBox1()><input type=button style="border:0mm;background-color:#0044FF" style="height:20px;width:20px" onclick="cmdExec1('backColor','#0044FF')"></td>
		<td width='20' bgcolor="#3C70FF" onmouseover=setColorDemo1('#3C70FF')  onclick=selectBoxColor('#3C70FF');closeColorBox1()><input type=button style="border:0mm;background-color:#3C70FF" style="height:20px;width:20px" onclick="cmdExec1('backColor','#3C70FF')"></td>
		<td width='20' bgcolor="#789CFF" onmouseover=setColorDemo1('#789CFF')  onclick=selectBoxColor('#789CFF');closeColorBox1()><input type=button style="border:0mm;background-color:#789CFF" style="height:20px;width:20px" onclick="cmdExec1('backColor','#789CFF')"></td>
		
	</tr>

	<tr >
		<td width='20' bgcolor="#006946" onmouseover=setColorDemo1('#006946')  onclick=selectBoxColor('#006946');closeColorBox1()><input type=button style="border:0mm;background-color:#006946" style="height:20px;width:20px" onclick="cmdExec1('backColor','#006946')"></td>
		<td width='20' bgcolor="#00875A" onmouseover=setColorDemo1('#00875A')  onclick=selectBoxColor('#00875A');closeColorBox1()><input type=button style="border:0mm;background-color:#00875A" style="height:20px;width:20px" onclick="cmdExec1('backColor','#00875A')"></td>
		<td width='20' bgcolor="#00A56E" onmouseover=setColorDemo1('#00A56E')  onclick=selectBoxColor('#00A56E');closeColorBox1()><input type=button style="border:0mm;background-color:#00A56E" style="height:20px;width:20px" onclick="cmdExec1('backColor','#00A56E')"></td>
		<td width='20' bgcolor="#00C382" onmouseover=setColorDemo1('#00C382')  onclick=selectBoxColor('#00C382');closeColorBox1()><input type=button style="border:0mm;background-color:#00C382" style="height:20px;width:20px" onclick="cmdExec1('backColor','#00C382')"></td>
		<td width='20' bgcolor="#00E196" onmouseover=setColorDemo1('#00E196')  onclick=selectBoxColor('#00E196');closeColorBox1()><input type=button style="border:0mm;background-color:#00E196" style="height:20px;width:20px" onclick="cmdExec1('backColor','#00E196')"></td>
		<td width='20' bgcolor="#00FFAA" onmouseover=setColorDemo1('#00FFAA')  onclick=selectBoxColor('#00FFAA');closeColorBox1()><input type=button style="border:0mm;background-color:#00FFAA" style="height:20px;width:20px" onclick="cmdExec1('backColor','#00FFAA')"></td>
		<td width='20' bgcolor="#00FFAA" onmouseover=setColorDemo1('#00FFAA')  onclick=selectBoxColor('#00FFAA');closeColorBox1()><input type=button style="border:0mm;background-color:#00FFAA" style="height:20px;width:20px" onclick="cmdExec1('backColor','#00FFAA')"></td>
		<td width='20' bgcolor="#78FFD2" onmouseover=setColorDemo1('#78FFD2')  onclick=selectBoxColor('#78FFD2');closeColorBox1()><input type=button style="border:0mm;background-color:#78FFD2" style="height:20px;width:20px" onclick="cmdExec1('backColor','#78FFD2')"></td>
		
	</tr>

	<tr >
		<td width='20' bgcolor="#466900" onmouseover=setColorDemo1('#466900')  onclick=selectBoxColor('#466900');closeColorBox1()><input type=button style="border:0mm;background-color:#466900" style="height:20px;width:20px" onclick="cmdExec1('backColor','#466900')"></td>
		<td width='20' bgcolor="#5A8700" onmouseover=setColorDemo1('#5A8700')  onclick=selectBoxColor('#5A8700');closeColorBox1()><input type=button style="border:0mm;background-color:#5A8700" style="height:20px;width:20px" onclick="cmdExec1('backColor','#5A8700')"></td>
		<td width='20' bgcolor="#6EA500" onmouseover=setColorDemo1('#6EA500')  onclick=selectBoxColor('#6EA500');closeColorBox1()><input type=button style="border:0mm;background-color:#6EA500" style="height:20px;width:20px" onclick="cmdExec1('backColor','#6EA500')"></td>
		<td width='20' bgcolor="#82C300" onmouseover=setColorDemo1('#82C300')  onclick=selectBoxColor('#82C300');closeColorBox1()><input type=button style="border:0mm;background-color:#82C300" style="height:20px;width:20px" onclick="cmdExec1('backColor','#82C300')"></td>
		<td width='20' bgcolor="#96E100" onmouseover=setColorDemo1('#96E100')  onclick=selectBoxColor('#96E100');closeColorBox1()><input type=button style="border:0mm;background-color:#96E100" style="height:20px;width:20px" onclick="cmdExec1('backColor','#96E100')"></td>
		<td width='20' bgcolor="#AAFF00" onmouseover=setColorDemo1('#AAFF00')  onclick=selectBoxColor('#AAFF00');closeColorBox1()><input type=button style="border:0mm;background-color:#AAFF00" style="height:20px;width:20px" onclick="cmdExec1('backColor','#AAFF00')"></td>
		<td width='20' bgcolor="#BEFF3C" onmouseover=setColorDemo1('#BEFF3C')  onclick=selectBoxColor('#BEFF3C');closeColorBox1()><input type=button style="border:0mm;background-color:#BEFF3C" style="height:20px;width:20px" onclick="cmdExec1('backColor','#BEFF3C')"></td>
		<td width='20' bgcolor="#D2FF78" onmouseover=setColorDemo1('#D2FF78')  onclick=selectBoxColor('#D2FF78');closeColorBox1()><input type=button style="border:0mm;background-color:#D2FF78" style="height:20px;width:20px" onclick="cmdExec1('backColor','#D2FF78')"></td>
		
	</tr>

	<tr >
		<td width='20' bgcolor="#690000" onmouseover=setColorDemo1('#690000')  onclick=selectBoxColor('#690000');closeColorBox1()><input type=button style="border:0mm;background-color:#690000" style="height:20px;width:20px" onclick="cmdExec1('backColor','#690000')"></td>
		<td width='20' bgcolor="#870000" onmouseover=setColorDemo1('#870000')  onclick=selectBoxColor('#870000');closeColorBox1()><input type=button style="border:0mm;background-color:#870000" style="height:20px;width:20px" onclick="cmdExec1('backColor','#870000')"></td>
		<td width='20' bgcolor="#A50000" onmouseover=setColorDemo1('#A50000')  onclick=selectBoxColor('#A50000');closeColorBox1()><input type=button style="border:0mm;background-color:#A50000" style="height:20px;width:20px" onclick="cmdExec1('backColor','#A50000')"></td>
		<td width='20' bgcolor="#C30000" onmouseover=setColorDemo1('#C30000')  onclick=selectBoxColor('#C30000');closeColorBox1()><input type=button style="border:0mm;background-color:#C30000" style="height:20px;width:20px" onclick="cmdExec1('backColor','#C30000')"></td>
		<td width='20' bgcolor="#E10000" onmouseover=setColorDemo1('#E10000')  onclick=selectBoxColor('#E10000');closeColorBox1()><input type=button style="border:0mm;background-color:#E10000" style="height:20px;width:20px" onclick="cmdExec1('backColor','#E10000')"></td>
		<td width='20' bgcolor="#FF0000" onmouseover=setColorDemo1('#FF0000')  onclick=selectBoxColor('#FF0000');closeColorBox1()><input type=button style="border:0mm;background-color:#FF0000" style="height:20px;width:20px" onclick="cmdExec1('backColor','#FF0000')"></td>
		<td width='20' bgcolor="#FF2828" onmouseover=setColorDemo1('#FF2828')  onclick=selectBoxColor('#FF2828');closeColorBox1()><input type=button style="border:0mm;background-color:#FF2828" style="height:20px;width:20px" onclick="cmdExec1('backColor','#FF2828')"></td>
		<td width='20' bgcolor="#FF5050" onmouseover=setColorDemo1('#FF5050')  onclick=selectBoxColor('#FF5050');closeColorBox1()><input type=button style="border:0mm;background-color:#FF5050" style="height:20px;width:20px" onclick="cmdExec1('backColor','#FF5050')"></td>
	</tr>

	<tr >
		<td width='20' bgcolor="#693A00" onmouseover=setColorDemo1('#693A00') onclick=selectBoxColor('#693A00');closeColorBox1()><input type=button style="border:0mm;background-color:#693A00" style="height:20px;width:20px" onclick="cmdExec1('backColor','#693A00')"></td>
		<td width='20' bgcolor="#874A00" onmouseover=setColorDemo1('#874A00') onclick=selectBoxColor('#874A00');closeColorBox1()><input type=button style="border:0mm;background-color:#874A00" style="height:20px;width:20px" onclick="cmdExec1('backColor','#874A00')"></td>
		<td width='20' bgcolor="#A55B00" onmouseover=setColorDemo1('#A55B00') onclick=selectBoxColor('#A55B00');closeColorBox1()><input type=button style="border:0mm;background-color:#A55B00" style="height:20px;width:20px" onclick="cmdExec1('backColor','#A55B00')"></td>
		<td width='20' bgcolor="#C36B00" onmouseover=setColorDemo1('#C36B00') onclick=selectBoxColor('#C36B00');closeColorBox1()><input type=button style="border:0mm;background-color:#C36B00" style="height:20px;width:20px" onclick="cmdExec1('backColor','#C36B00')"></td>
		<td width='20' bgcolor="#E17C00" onmouseover=setColorDemo1('#E17C00') onclick=selectBoxColor('#E17C00');closeColorBox1()><input type=button style="border:0mm;background-color:#E17C00" style="height:20px;width:20px" onclick="cmdExec1('backColor','#E17C00')"></td>
		<td width='20' bgcolor="#FF8C00" onmouseover=setColorDemo1('#FF8C00') onclick=selectBoxColor('#FF8C00');closeColorBox1()><input type=button style="border:0mm;background-color:#FF8C00" style="height:20px;width:20px" onclick="cmdExec1('backColor','#FF8C00')"></td>
		<td width='20' bgcolor="#FF9E28" onmouseover=setColorDemo1('#FF9E28') onclick=selectBoxColor('#FF9E28');closeColorBox1()><input type=button style="border:0mm;background-color:#FF9E28" style="height:20px;width:20px" onclick="cmdExec1('backColor','#FF9E28')"></td>
		<td width='20' bgcolor="#FFB050" onmouseover=setColorDemo1('#FFB050') onclick=selectBoxColor('#FFB050');closeColorBox1()><input type=button style="border:0mm;background-color:#FFB050" style="height:20px;width:20px" onclick="cmdExec1('backColor','#FFB050')"></td>
	</tr>

	<tr >
		<td width='20' bgcolor="#9B9B00" onmouseover=setColorDemo1('#9B9B00') onclick=selectBoxColor('#9B9B00');closeColorBox1()><input type=button style="border:0mm;background-color:#9B9B00" style="height:20px;width:20px" onclick="cmdExec1('backColor','#9B9B00')"></td>
		<td width='20' bgcolor="#AFAF00" onmouseover=setColorDemo1('#AFAF00') onclick=selectBoxColor('#AFAF00');closeColorBox1()><input type=button style="border:0mm;background-color:#AFAF00" style="height:20px;width:20px" onclick="cmdExec1('backColor','#AFAF00')"></td>
		<td width='20' bgcolor="#C3C300" onmouseover=setColorDemo1('#C3C300') onclick=selectBoxColor('#C3C300');closeColorBox1()><input type=button style="border:0mm;background-color:#C3C300" style="height:20px;width:20px" onclick="cmdExec1('backColor','#C3C300')"></td>
		<td width='20' bgcolor="#D7D700" onmouseover=setColorDemo1('#D7D700') onclick=selectBoxColor('#D7D700');closeColorBox1()><input type=button style="border:0mm;background-color:#D7D700" style="height:20px;width:20px" onclick="cmdExec1('backColor','#D7D700')"></td>
		<td width='20' bgcolor="#EBEB00" onmouseover=setColorDemo1('#EBEB00') onclick=selectBoxColor('#EBEB00');closeColorBox1()><input type=button style="border:0mm;background-color:#EBEB00" style="height:20px;width:20px" onclick="cmdExec1('backColor','#EBEB00')"></td>
		<td width='20' bgcolor="#FFFF00" onmouseover=setColorDemo1('#FFFF00') onclick=selectBoxColor('#FFFF00');closeColorBox1()><input type=button style="border:0mm;background-color:#FFFF00" style="height:20px;width:20px" onclick="cmdExec1('backColor','#FFFF00')"></td>
		<td width='20' bgcolor="#FFFF3C" onmouseover=setColorDemo1('#FFFF3C') onclick ="closeColorBox1()"><input type=button style="border:0mm;background-color:#FFFF3C" style="height:20px;width:20px" onclick="cmdExec1('backColor','#FFFF3C')"></td>
		<td width='20' bgcolor="#FFFFFF" onmouseover=setColorDemo1('#FFFFFF') onclick="selectBoxColor('#FFFFFF')">&nbsp</td>
	</tr>
	<tr>
		<td colspan=4 id=oshowColor1>&nbsp</td>
		<td colspan=4 dir=ltr align=center style='font-size:8pt' id=oshowAmount1>&nbsp</td>
	</tr>
</table>
  
  
 
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <select dir=rtl onchange="cmdExec1('fontname',this[this.selectedIndex].value);this.selectedIndex=0">
  <option selected>نوع فونت</option>
  <option value="Arial">Arial</option>
  <option value="Times New Roman">Times New Roman</option>
  <option value="Verdana">Verdana</option>
  <option value="Tahoma">Tahoma</option>
  <option value="B Elham">Elham</option>
  <option value="B Davat">Davat</option>
  <option value="B Homa">Homa</option>
  <option value="B Lotus">Lotus</option>
  <option value="B Mirta">Mitra</option>
  <option value="B Nazanin">Nazanin</option>
  <option value="B Traffic">Traffic</option>
  <option value="B Zar">Zar</option>
  </select>
  &nbsp;
  <select dir=rtl onchange="cmdExec1('fontsize',this[this.selectedIndex].value);">
  <option selected>سایز</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
  <option value="8">8</option>
  </select>
  </td>
 </tr>
 </table>
 </td>
</tr>
<tr>
 <td align="center">
 <!-- page content div -->
 <div contentEditable="true" id="<%=nameObject%>"  style="border-style: solid; border-width: 1px; border-color: #000000; background-color: #FFFFFF; padding-left: 3px; padding-right: 3px; padding-top: 3px; padding-bottom: 3px; width: 640px; height:<%=height%>cm;text-align:<%=align%>;overflow:auto;font-size:8pt" dir="<%=amount_Direction %>" >
 <%
     If Request.Form("txtStrEditor") <> "" Then
 %>
 <%=Request.form("txtStrEditor")%>
 <%
 Else
 %>
<%=request.form(nameObject)%>
<%
End If
%>
 </div>

 </td>
</tr>
<tr>
 <td width="100%" align="center">

 </td>
</tr>
</table>

  </form>
   
</body>

</html>
<%
    If Request.Form("textEditor1") <> "" Then
        Session("strEditor") = Request.Form("textEditor1")
        Response.Write("<script>window.close()</script>")
    End If
%>
