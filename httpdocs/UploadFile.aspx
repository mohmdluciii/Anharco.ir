<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UploadFile.aspx.vb" Inherits="W_ISM.UploadFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"><link href="graphic/design.css" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <%--loading click--%>
   <script type="text/javascript" src="JS/1.6.2/jquery.min.js"></script>
	    
	    <script language="javascript" type="text/javascript">
	        function StartProgressBar() {
	            var myExtender = $find('m');
	            myExtender.show();
	            return true;
	        }
    </script>
	    <style type ="text/css" >
    .ModalBackground
    {
	    background-color:black;

	    filter:alpha(opacity=50);
	    -moz-opacity:0.5;
	    -khtml-opacity: 0.5;
	    opacity: 0.5;
    }
    
    .button_Send
    {
        position :relative ;
        top:0px;
        float :right;
        border-style :solid;
        border-width :0;
        background :#888888;
        color:#fff;
        text-align :center ;
        padding :5px 10px 5px 10px;
        cursor :pointer ;
        font-family :Yekan,arial;
        font-size :9pt;
        margin-top :35px;
    }
    .button_Send:hover
    {
        background :#9D9D9D;
    }
    </style>
      <script type="text/javascript" src="JS/code.jquery.com/jquery.min.js"></script> 
    <%--loading click--%>
     <script>
         function just_persian(str) {
             var p = /^[\u0600-\u06FF\s]+$/;

             if (p.test(str)) {
                 alert("not format");
             }
         }
         function updateSize() {
             document.getElementById("uploadFile2").value = document.getElementById("FileUpload1").value;
             var myfile = document.getElementById("FileUpload1").value;
             var myfile = "How are you doing today?";
             var res = myfile.split("/");
            
             
//             alert(myfile);
//             var n = Myfile.indexOf("ض");
//             var n1 = Myfile.indexOf("ص");
//             var n2 = Myfile.indexOf("ث");
//             var n3 = Myfile.indexOf("ق");
//             var n4 = Myfile.indexOf("ف");
//             var n5 = Myfile.indexOf("غ");
//             var n6 = Myfile.indexOf("ع");
//             var n7 = Myfile.indexOf("ه");
//             var n8 = Myfile.indexOf("خ");
//             var n9 = Myfile.indexOf("ح");
//             var n10 = Myfile.indexOf("ج");
//             var n11 = Myfile.indexOf("چ");
//             var n12 = Myfile.indexOf("ص");
//             var n13 = Myfile.indexOf("ش");
//             var n14 = Myfile.indexOf("س");
//             var n15 = Myfile.indexOf("ی");
//             var n16 = Myfile.indexOf("ب");
//             var n17 = Myfile.indexOf("ل");
//             var n18 = Myfile.indexOf("ا");
//             var n19 = Myfile.indexOf("ت");
//             var n20 = Myfile.indexOf("ن");
//             var n21 = Myfile.indexOf("م");
//             var n22 = Myfile.indexOf("ک");
//             var n23 = Myfile.indexOf("گ");
//             var n24 = Myfile.indexOf("ظ");
//             var n25 = Myfile.indexOf("ط");
//             var n26 = Myfile.indexOf("ز");
//             var n27 = Myfile.indexOf("ر");
//             var n28 = Myfile.indexOf("ذ");
//             var n29 = Myfile.indexOf("د");
//             var n30 = Myfile.indexOf("و");
//             alert(n6);
             if ((n == 0) && (n1 == 0) && (n2 == 0) && (n3 == 0) && (n4 == 0) && (n5 == 0) && (n6 == 0) && (n7 == 0) && (n8 == 0) && (n9 == 0) && (n10 == 0) && (n11 == 0) && (n12 == 0) && (n13 == 0) && (n14 == 0) && (n15 == 0) && (n16 == 0) && (n17 == 0) && (n18 == 0) && (n19 == 0) && (n20 == 0) && (n21 == 0) && (n22 == 0) && (n23 == 0) && (n24 == 0) && (n25 == 0) && (n26 == 0) && (n27 == 0) && (n28 == 0) && (n29 == 0) && (n30 == 0))   {
                 var nBytes = 0,

      oFiles = document.getElementById("FileUpload1").files,
      nFiles = oFiles.length;
                 for (var nFileId = 0; nFileId < nFiles; nFileId++) {
                     nBytes += oFiles[nFileId].size;
                 }
                 var sOutput = nBytes + " bytes";
                 // optional code for multiples approximation
                 for (var aMultiples = ["کیلو بایت", "مگابایت", "GB", "TB", "PB", "EB", "ZB", "YB"], nMultiple = 0, nApprox = nBytes / 1024; nApprox > 1; nApprox /= 1024, nMultiple++) {
                     sOutput = nApprox.toFixed(3) + " " + aMultiples[nMultiple];
                 }
                 // end of optional code
                 document.getElementById("fileNum").innerHTML = nFiles;
                 document.getElementById("fileSize").innerHTML = sOutput;
                 var ss = document.getElementById("txtspeed");
                 var amount_Upload = parseInt(parseInt(nBytes / 1024) / ss.value);

                 if (amount_Upload > 60) {
                     amount_Upload = parseInt(amount_Upload / 60);
                     document.getElementById("TimeUploadObj").innerHTML = amount_Upload + " دقیقه ";
                 }
                 else {
                     document.getElementById("TimeUploadObj").innerHTML = amount_Upload + " ثانیه ";
                 }
             }
             else {
                 alert("نام فایل نیابد از حروف فارسی استفاده شود لطفا نام را تغییر دهید");
                 document.getElementById("FileUpload1").value = "";
             }
         }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div class ="uploadFileMainBox" style="direction:rtl;">
        <div style="position:relative ;top:0px;left:0px;float:left;font-family :yekan,arial;font-size :10pt;color:#000;direction:rtl;width :100%;min-height:40px;line-height:40px;text-align :right ;">فایل های انتخاب شده: <span id="fileNum">0</span> عدد &nbsp;|<span> سایز فایل &nbsp;</span><span id="fileSize" style="direction:rtl;"></span>&nbsp;|&nbsp;زمان تقریبی ارسال<span id="TimeUploadObj" ></span></div> 
        <div style="position:relative ;top:0px;left:0px;">

                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">انتخاب فایل &nbsp;  <asp:Label id="lblBanner_728_90_BuyPackage" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_Banner_728_90_BuyPackage"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">فایل ویدئو را از هارد کامپیوتر خود انتخاب نمائید . نوع فایل  FLV یا Mp4 می تواند باشد</div></li></ul></a></li>
                                    <li><input id="uploadFile2" tabindex="3"  placeholder="انتخاب فایل" disabled="disabled"  class="fileUpload_Style" /><div class="upload-btn-wrapper"><a href="#"  class="btn" style="height :38px;position:relative ;top:2px;left:0px;margin :0;"><i class="fa  fa-upload"></i></a><asp:FileUpload   runat ="server"  id="FileUpload1" onchange="updateSize();"  /></div> </li>
                                </ul>
                            </div>
                        </div>
        
        </div>
        <div style="position:relative ;top:0px;left:0px;">
        <asp:Button ID="Button1" Text="ارسال فایل فیلم" runat="server" OnClick="FTPUpload" class="button_Send"   OnClientClick="StartProgressBar()" />
        </div> 
    </div>
        
        <hr />
    <div style="position:relative ;top:0px;left:0px;direction:rtl;text-align :right ;">
        <asp:Label ID="lblMessage" runat="server" style="font-family :yekan,arial;font-size:9pt;direction :rtl;text-align :right ;" />
    </div>
        
    <%--loading click--%>
        <asp:ModalPopupExtender BackgroundCssClass="ModalBackground" ID="m" runat="server"  PopupControlID ="Panel1" TargetControlID ="hiddenField">
        </asp:ModalPopupExtender>    
        <asp:Panel ID="panel1" Direction= "RightToLeft"  runat="server"   style="z-index:1000">
        <center ><img src="images/loading.gif" style ="z-index :1000" align="middle"    /></center>
        </asp:Panel> 
        <asp:HiddenField ID="hiddenField" runat ="server" />
        <%--loading click--%>
        <input type="hidden" id="txtspeed" /> 
        
    </form>
</body>
</html>

<script type ="text/javascript" >
    function checkUploadSpeed(iterations, update) {
        var average = 0,
        index = 0,
        timer = window.setInterval(check, 1000); //check every 5 seconds
        check();

        function check() {
            var xhr = new XMLHttpRequest(),
            url = '?cache=' + Math.floor(Math.random() * 10000), //prevent url cache
            data = getRandomString(1), //1 meg POST size handled by all servers
            startTime,
            speed = 0;
            xhr.onreadystatechange = function(event) {
                if (xhr.readyState == 4) {
                    speed = Math.round(1024 / ((new Date() - startTime) / 1000));
                    average == 0
                    ? average = speed
                    : average = Math.round((average + speed) / 2);
                    update(speed, average);
                    index++;
                    if (index == iterations) {
                        window.clearInterval(timer);
                    };
                };
            };
            xhr.open('POST', url, true);
            startTime = new Date();
            xhr.send(data);
        };

        function getRandomString(sizeInMb) {
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~!@#$%^&*()_+`-=[]\{}|;':,./<>?", //random data prevents gzip effect
            iterations = sizeInMb * 1024 * 1024, //get byte count
            result = '';
            for (var index = 0; index < iterations; index++) {
                result += chars.charAt(Math.floor(Math.random() * chars.length));
            };
            return result;
        };
    };

    checkUploadSpeed(30, function(speed, average) {
        //        document.getElementById('speed').textContent = 'speed: ' + speed + 'kbs';
        //        document.getElementById('average').textContent = 'average: ' + average + 'kbs';
        document.getElementById("txtspeed").value = speed;
    });

</script>
