<%@ Page Language="vb" ValidateRequest ="false"  AutoEventWireup="false" CodeBehind="Editor_New.aspx.vb" Inherits="W_ISM.Editor_new" %>
<%
    If Session("strEditor") = "" Then
        Session("strEditor") = Request.Form("myDoc")
    End If
    If Request.Form("txtHide") <> "" Then
        Session("strEditor") = Request.Form("myDoc")
    End If
%>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head >
 <title>Rich Text Editor</title>
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
<script type="text/javascript">
var oDoc, sDefTxt;

function initDoc() {
  oDoc = document.getElementById("textBox");
  sDefTxt = oDoc.innerHTML;
  if (document.compForm.switchMode.checked) { setDocMode(true); }
}

function formatDoc(sCmd, sValue) {
  if (validateMode()) { document.execCommand(sCmd, false, sValue); oDoc.focus(); }
}

function validateMode() {
  if (!document.compForm.switchMode.checked) { return true ; }
  alert("Uncheck \"Show HTML\".");
  oDoc.focus();
  return false;
}

function setDocMode(bToSource) {
  var oContent;
  if (bToSource) {
    oContent = document.createTextNode(oDoc.innerHTML);
    oDoc.innerHTML = "";
    var oPre = document.createElement("pre");
    oDoc.contentEditable = false;
    oPre.id = "sourceText";
    oPre.contentEditable = true;
    oPre.appendChild(oContent);
    oDoc.appendChild(oPre);
  } else {
    if (document.all) {
      oDoc.innerHTML = oDoc.innerText;
    } else {
      oContent = document.createRange();
      oContent.selectNodeContents(oDoc.firstChild);
      oDoc.innerHTML = oContent.toString();
    }
    oDoc.contentEditable = true;
  }
  oDoc.focus();
}

function printDoc() {
  if (!validateMode()) { return; }
  var oPrntWin = window.open("","_blank","width=450,height=470,left=400,top=100,menubar=yes,toolbar=no,location=no,scrollbars=yes");
  oPrntWin.document.open();
  oPrntWin.document.write("<!doctype html><html><head><title>Print</title><\/head><body onload=\"print();\">" + oDoc.innerHTML + "<\/body><\/html>");
  oPrntWin.document.close();
}
</script>
<style type="text/css">
.intLink { cursor: pointer; }
img.intLink { border: 0; }
#toolBar1 select { font-size:10px; }
#textBox {
  width: 95%;
  height: 150px;
  border: 2px solid #EEEEEE;
  border-radius:5px;
  padding: 12px;
  overflow: scroll;
  position :relative ;
  float :right ;
  right :0px;
}
#textBox #sourceText {
  padding: 0;
  margin: 0;
  min-width: 498px;
  min-height: 150px;
}
#editMode label { cursor: pointer; }
</style>
</head>
<body bgcolor="#ffffff" onload="initDoc();">
<form name="compForm" method="post" action="Editor_New.aspx" onsubmit="if(validateMode()){this.myDoc.value=oDoc.innerHTML;return true;}return false;">
<input type="hidden" name="myDoc">
<div id="toolBar1">
<select onchange="formatDoc('formatblock',this[this.selectedIndex].value);this.selectedIndex=0;">
<option selected>- formatting -</option>
<option value="h1">Title 1 &lt;h1&gt;</option>
<option value="h2">Title 2 &lt;h2&gt;</option>
<option value="h3">Title 3 &lt;h3&gt;</option>
<option value="h4">Title 4 &lt;h4&gt;</option>
<option value="h5">Title 5 &lt;h5&gt;</option>
<option value="h6">Subtitle &lt;h6&gt;</option>
<option value="p">Paragraph &lt;p&gt;</option>
<option value="pre">Preformatted &lt;pre&gt;</option>
</select>
<select onchange="formatDoc('fontname',this[this.selectedIndex].value);this.selectedIndex=0;">
<option class="heading" selected>- font -</option>
<option value="Tahoma">Tahoma</option>
<option value="Arial">Arial</option>
<option value="Arial Black">Arial Black</option>
<option value="Courier New">Courier New</option>
<option value="Times New Roman">Times New Roman</option>
<option value="calibri">calibri</option>
<option value="Yekan">Yekan</option>
<option value="BZiba">BZiba</option>
<option value="BZar">BZar</option>
<option value="BYekan">BYekan</option>
<option value="BYas">BYas</option>
<option value="BYagut">BYagut</option>
<option value="BVahidBold">BVahidBold</option>

<option value="BTitrTGEBold">BTitrTGEBold</option>
<option value="BTitrBold">BTitrBold</option>
<option value="BTehran">BTehran</option>
<option value="BTabassom">BTabassom</option>
<option value="BSinaBold">BSinaBold</option>
<option value="BShiraz">BShiraz</option>
<option value="BLotus">BLotus</option>
<option value="BTraffic">BTraffic</option>
<option value="BMitra">BMitra</option>

<option value="BHoma">BHoma</option>
<option value="BHamid">BHamid</option>
<option value="BFarnaz">BFarnaz</option>
<option value="BNazanin">BNazanin</option>
<option value="BBCNassim">BBCNassim</option>
<option value="AdobeArabic">AdobeArabic</option>


</select>
<select onchange="formatDoc('fontsize',this[this.selectedIndex].value);this.selectedIndex=0;">
<option class="heading" selected>- size -</option>
<option value="1">خیلی کوچک</option>
<option value="2">کوچک</option>
<option value="3">معمولی</option>
<option value="4">معمولی رو بزرگ</option>
<option value="5">بزرگ</option>
<option value="6">خیلی بزرگ</option>
<option value="7">بیشترین سایز</option>
</select>
<select onchange="formatDoc('forecolor',this[this.selectedIndex].value);this.selectedIndex=0;">
<option class="heading" selected style="width:1cm">- color -</option>
<option value="#ffffff" style="background-color:#ffffff">&nbsp;</option>
<option value="#FFDD78" style="background-color:#FFDD78">&nbsp;</option>
<option value="#DDFF78" style="background-color:#DDFF78">&nbsp;</option>
<option value="#9B7400" style="background-color:#9B7400">&nbsp;</option>
<option value="#FF7C50" style="background-color:#FF7C50">&nbsp;</option>
<option value="#E13800" style="background-color:#E13800">&nbsp;</option>
<option value="#A51600" style="background-color:#A51600">&nbsp;</option>
<option value="#FF0000" style="background-color:#FF0000">&nbsp;</option>
<option value="#E10070" style="background-color:#E10070">&nbsp;</option>
<option value="#8300E1" style="background-color:#8300E1">&nbsp;</option>
<option value="#78D2FF" style="background-color:#78D2FF">&nbsp;</option>
<option value="#0000FF" style="background-color:#0000FF">&nbsp;</option>
<option value="#003869" style="background-color:#003869">&nbsp;</option>
<option value="#78FFDD" style="background-color:#78FFDD">&nbsp;</option>
<option value="#00694F" style="background-color:#00694F">&nbsp;</option>
<option value="#466900" style="background-color:#466900">&nbsp;</option>
<option value="#BCBCBC" style="background-color:#BCBCBC">&nbsp;</option>
<option value="#888888" style="background-color:#888888">&nbsp;</option>
<option value="#464646" style="background-color:#464646">&nbsp;</option>
<option value="#000000" style="background-color:#000000">&nbsp;</option>

</select>
<select onchange="formatDoc('backcolor',this[this.selectedIndex].value);this.selectedIndex=0;">
<option class="heading" selected>- background -</option>
<option value="#ffffff" style="background-color:#ffffff">&nbsp;</option>
<option value="#FFDD78" style="background-color:#FFDD78">&nbsp;</option>
<option value="#DDFF78" style="background-color:#DDFF78">&nbsp;</option>
<option value="#9B7400" style="background-color:#9B7400">&nbsp;</option>
<option value="#FF7C50" style="background-color:#FF7C50">&nbsp;</option>
<option value="#E13800" style="background-color:#E13800">&nbsp;</option>
<option value="#A51600" style="background-color:#A51600">&nbsp;</option>
<option value="#FF0000" style="background-color:#FF0000">&nbsp;</option>
<option value="#E10070" style="background-color:#E10070">&nbsp;</option>
<option value="#8300E1" style="background-color:#8300E1">&nbsp;</option>
<option value="#78D2FF" style="background-color:#78D2FF">&nbsp;</option>
<option value="#0000FF" style="background-color:#0000FF">&nbsp;</option>
<option value="#003869" style="background-color:#003869">&nbsp;</option>
<option value="#78FFDD" style="background-color:#78FFDD">&nbsp;</option>
<option value="#00694F" style="background-color:#00694F">&nbsp;</option>
<option value="#466900" style="background-color:#466900">&nbsp;</option>
<option value="#BCBCBC" style="background-color:#BCBCBC">&nbsp;</option>
<option value="#888888" style="background-color:#888888">&nbsp;</option>
<option value="#464646" style="background-color:#464646">&nbsp;</option>
<option value="#000000" style="background-color:#000000">&nbsp;</option>

</select>
</div>
<div id="toolBar2">
<img class="intLink" title="Clean" onclick="if(validateMode()&&confirm('Are you sure?')){oDoc.innerHTML=sDefTxt};" src="picture/clean.png" />
<img class="intLink" title="Print" onclick="printDoc();" src="picture/print.png">
<img class="intLink" title="Undo" onclick="formatDoc('undo');" src="picture/undo.png" />
<img class="intLink" title="Redo" onclick="formatDoc('redo');" src="picture/redo.png" />
<img class="intLink" title="Remove formatting" onclick="formatDoc('removeFormat')" src="picture/RemoveFormatting.png">
<img class="intLink" title="Bold" onclick="formatDoc('bold');" src="picture/bold.png" />
<img class="intLink" title="Italic" onclick="formatDoc('italic');" src="picture/italic.png" />
<img class="intLink" title="Underline" onclick="formatDoc('underline');" src="picture/underline.png" />
<img class="intLink" title="Left align" onclick="formatDoc('justifyleft');" src="picture/LeftAlign.png" />
<img class="intLink" title="Center align" onclick="formatDoc('justifycenter');" src="picture/CenterAlign.png" />
<img class="intLink" title="Right align" onclick="formatDoc('justifyright');" src="picture/rightAlign.png" />
<img class="intLink" title="Numbered list" onclick="formatDoc('insertorderedlist');" src="picture/NumberList.png" />
<img class="intLink" title="Dotted list" onclick="formatDoc('insertunorderedlist');" src="picture/DottedList.png" />
<img class="intLink" title="Quote" onclick="formatDoc('formatblock','blockquote');" src="picture/Quote.png" />
<img class="intLink" title="Add indentation" onclick="formatDoc('outdent');" src="picture/AddIndentation.png" />
<img class="intLink" title="Delete indentation" onclick="formatDoc('indent');" src="picture/DeleteIndentation.png" />
<img class="intLink" title="Hyperlink" onclick="var sLnk=prompt('آدرس لینک را درج کنید','http:\/\/');if(sLnk&&sLnk!=''&&sLnk!='http://'){formatDoc('createlink',sLnk)}" src="picture/HyperLink.png" />
<img class="intLink" title="Add Picture" onclick="var sLnk=prompt('آدرس تصویر را درج کنید','http:\/\/');if(sLnk&&sLnk!=''&&sLnk!='http://'){formatDoc('insertimage',sLnk);}"  src="img/image.gif" />
<img class="intLink" title="Cut" onclick="formatDoc('cut');" src="picture/cut.png" />
<img class="intLink" title="Copy" onclick="formatDoc('copy');" src="picture/copy.png" />
<img class="intLink" title="Paste" onclick="formatDoc('paste');" src="picture/paste.png" />
</div>



 <%If Request.Form("txtHide") <> "" Then%>
    <div id="textBox" contenteditable="true" dir="rtl" style="font-family :yekan;font-size :9pt"  ><%=Request.Form("myDoc")%></div>
 <%Else%>
    <%  If Session("strEditor") <> "" Then%>
        <div id="textBox" contenteditable="true" dir="rtl" style="font-family :yekan;font-size :9pt"   ><%=Session("strEditor")%></div>
    <%Else%>   
        <div id="textBox" contenteditable="true" dir="rtl" style="font-family :yekan;font-size :9pt"   ><%=Request.Form("myDoc")%></div>
    <%End If%>
   
<%End If%>

<p id="editMode"><input type="checkbox" name="switchMode" id="switchBox" onchange="setDocMode(this.checked);" /> <label for="switchBox" style="font-size:8pt;font-family:Tahoma" dir="rtl">نمایش بصورت HTML</label></p>
<p><input style="" alt="برای ثبت اطلاعات در ویرایشگر متن روی این دکمه کلیک نمائید" type="image" value="save" src="images/disket.jpg" onmouseover ="this.src='images/disket_over.jpg'" onmouseout="this.src='images/disket.jpg'" ></p>
<input type="hidden" name="txtHide" value ="hide" />
</form>
</body>
</html>