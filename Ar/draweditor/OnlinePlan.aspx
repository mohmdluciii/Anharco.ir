<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="OnlinePlan.aspx.vb" Inherits="W_ISM.OnlinePlan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
  
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <style type ="text/css" >
    @import "../persian-font.css";    
    button
    {
    	font-family:Yekan,tahoma;
    }
    </style>
    <title>Draweditor | Quickly draw sketches, edit images</title>
    <link rel="shortcut icon" href="src/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="src/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="src/css/wenk.min.css">
    <link rel="stylesheet" type="text/css" href="src/css/style.css">
    <link rel="stylesheet" type="text/css" href="src/css/jquery.ezdz.min.css">
    <link rel="stylesheet" type="text/css" href="src/css/jquery.minicolors-2.1.2.css">

  
</head>
<body style="font-family:Yekan;">
    <form id="form1" runat="server">
    <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTA1IiBoZWlnaHQ9IjEwNSIgdmlld0JveD0iMCAwIDEwNSAxMDUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgZmlsbD0iI2M1YzViOSI+CiAgICA8Y2lyY2xlIGN4PSIxMi41IiBjeT0iMTIuNSIgcj0iMTIuNSI+CiAgICAgICAgPGFuaW1hdGUgYXR0cmlidXRlTmFtZT0iZmlsbC1vcGFjaXR5IgogICAgICAgICBiZWdpbj0iMHMiIGR1cj0iMXMiCiAgICAgICAgIHZhbHVlcz0iMTsuMjsxIiBjYWxjTW9kZT0ibGluZWFyIgogICAgICAgICByZXBlYXRDb3VudD0iaW5kZWZpbml0ZSIgLz4KICAgIDwvY2lyY2xlPgogICAgPGNpcmNsZSBjeD0iMTIuNSIgY3k9IjUyLjUiIHI9IjEyLjUiIGZpbGwtb3BhY2l0eT0iLjUiPgogICAgICAgIDxhbmltYXRlIGF0dHJpYnV0ZU5hbWU9ImZpbGwtb3BhY2l0eSIKICAgICAgICAgYmVnaW49IjEwMG1zIiBkdXI9IjFzIgogICAgICAgICB2YWx1ZXM9IjE7LjI7MSIgY2FsY01vZGU9ImxpbmVhciIKICAgICAgICAgcmVwZWF0Q291bnQ9ImluZGVmaW5pdGUiIC8+CiAgICA8L2NpcmNsZT4KICAgIDxjaXJjbGUgY3g9IjUyLjUiIGN5PSIxMi41IiByPSIxMi41Ij4KICAgICAgICA8YW5pbWF0ZSBhdHRyaWJ1dGVOYW1lPSJmaWxsLW9wYWNpdHkiCiAgICAgICAgIGJlZ2luPSIzMDBtcyIgZHVyPSIxcyIKICAgICAgICAgdmFsdWVzPSIxOy4yOzEiIGNhbGNNb2RlPSJsaW5lYXIiCiAgICAgICAgIHJlcGVhdENvdW50PSJpbmRlZmluaXRlIiAvPgogICAgPC9jaXJjbGU+CiAgICA8Y2lyY2xlIGN4PSI1Mi41IiBjeT0iNTIuNSIgcj0iMTIuNSI+CiAgICAgICAgPGFuaW1hdGUgYXR0cmlidXRlTmFtZT0iZmlsbC1vcGFjaXR5IgogICAgICAgICBiZWdpbj0iNjAwbXMiIGR1cj0iMXMiCiAgICAgICAgIHZhbHVlcz0iMTsuMjsxIiBjYWxjTW9kZT0ibGluZWFyIgogICAgICAgICByZXBlYXRDb3VudD0iaW5kZWZpbml0ZSIgLz4KICAgIDwvY2lyY2xlPgogICAgPGNpcmNsZSBjeD0iOTIuNSIgY3k9IjEyLjUiIHI9IjEyLjUiPgogICAgICAgIDxhbmltYXRlIGF0dHJpYnV0ZU5hbWU9ImZpbGwtb3BhY2l0eSIKICAgICAgICAgYmVnaW49IjgwMG1zIiBkdXI9IjFzIgogICAgICAgICB2YWx1ZXM9IjE7LjI7MSIgY2FsY01vZGU9ImxpbmVhciIKICAgICAgICAgcmVwZWF0Q291bnQ9ImluZGVmaW5pdGUiIC8+CiAgICA8L2NpcmNsZT4KICAgIDxjaXJjbGUgY3g9IjkyLjUiIGN5PSI1Mi41IiByPSIxMi41Ij4KICAgICAgICA8YW5pbWF0ZSBhdHRyaWJ1dGVOYW1lPSJmaWxsLW9wYWNpdHkiCiAgICAgICAgIGJlZ2luPSI0MDBtcyIgZHVyPSIxcyIKICAgICAgICAgdmFsdWVzPSIxOy4yOzEiIGNhbGNNb2RlPSJsaW5lYXIiCiAgICAgICAgIHJlcGVhdENvdW50PSJpbmRlZmluaXRlIiAvPgogICAgPC9jaXJjbGU+CiAgICA8Y2lyY2xlIGN4PSIxMi41IiBjeT0iOTIuNSIgcj0iMTIuNSI+CiAgICAgICAgPGFuaW1hdGUgYXR0cmlidXRlTmFtZT0iZmlsbC1vcGFjaXR5IgogICAgICAgICBiZWdpbj0iNzAwbXMiIGR1cj0iMXMiCiAgICAgICAgIHZhbHVlcz0iMTsuMjsxIiBjYWxjTW9kZT0ibGluZWFyIgogICAgICAgICByZXBlYXRDb3VudD0iaW5kZWZpbml0ZSIgLz4KICAgIDwvY2lyY2xlPgogICAgPGNpcmNsZSBjeD0iNTIuNSIgY3k9IjkyLjUiIHI9IjEyLjUiPgogICAgICAgIDxhbmltYXRlIGF0dHJpYnV0ZU5hbWU9ImZpbGwtb3BhY2l0eSIKICAgICAgICAgYmVnaW49IjUwMG1zIiBkdXI9IjFzIgogICAgICAgICB2YWx1ZXM9IjE7LjI7MSIgY2FsY01vZGU9ImxpbmVhciIKICAgICAgICAgcmVwZWF0Q291bnQ9ImluZGVmaW5pdGUiIC8+CiAgICA8L2NpcmNsZT4KICAgIDxjaXJjbGUgY3g9IjkyLjUiIGN5PSI5Mi41IiByPSIxMi41Ij4KICAgICAgICA8YW5pbWF0ZSBhdHRyaWJ1dGVOYW1lPSJmaWxsLW9wYWNpdHkiCiAgICAgICAgIGJlZ2luPSIyMDBtcyIgZHVyPSIxcyIKICAgICAgICAgdmFsdWVzPSIxOy4yOzEiIGNhbGNNb2RlPSJsaW5lYXIiCiAgICAgICAgIHJlcGVhdENvdW50PSJpbmRlZmluaXRlIiAvPgogICAgPC9jaXJjbGU+Cjwvc3ZnPgo="
        class="loader">

        <style>
            .github-corner:hover .octo-arm
            {
                animation: octocat-wave 560ms ease-in-out;
            }
            @keyframes@keyframesoctocat-wave{0%,100%{transform:rotate(0)}20%,60%{transform:rotate(-25deg)}40%,80%{transform:rotate(10deg)}@media(max-width:500px){
            .github-corner:hover .octo-arm
            {
                animation: none;
            }
            .github-corner .octo-arm
            {
                animation: octocat-wave 560ms ease-in-out;
            }
            }
          
        </style>
           <div class="wrap-drop">
        <input  style="font-family:yekan;" type="file" onchange="previewFile()" name="image" accept="image/jpeg , image/jpg , image/png">
        <br>
    </div>

             <div class="wrap-image-buttons">
        <button id="image-background" style="font-family:yekan;">
            <svg class="svgIcons backgroundSvg" width="16px" height="16px" viewBox="0 0 459 459" style="enable-background:new 0 0 459 459;" xml:space="preserve">
                <g id="image">
                    <path d="M459,408V51c0-28.05-22.95-51-51-51H51C22.95,0,0,22.95,0,51v357c0,28.05,22.95,51,51,51h357    C436.05,459,459,436.05,459,408z M140.25,267.75l63.75,76.5l89.25-114.75L408,382.5H51L140.25,267.75z" fill="#fff" />
                </g>
            </svg> تصویر را به پس زمینه بیاندازید</button>
        <button id="image-on"  style="font-family:yekan;">
            <svg class="svgIcons imageSvg" width="16px" height="16px" viewBox="0 0 561 561" style="enable-background:new 0 0 561 561;" xml:space="preserve">
                <g id="photo-library">
                    <path d="M561,408V51c0-28.05-22.95-51-51-51H153c-28.05,0-51,22.95-51,51v357c0,28.05,22.95,51,51,51h357    C538.05,459,561,436.05,561,408z M242.25,267.75l63.75,76.5l89.25-114.75L510,382.5H153L242.25,267.75z M0,102v408    c0,28.05,22.95,51,51,51h408v-51H51V102H0z" fill="#fff" />
                </g>
            </svg> افزودن تصویر</button>
    </div>

    <div class="wrap-canvas-background-color" >
        <p  style="font-family:yekan;">با رنگ پس زمینه ای انتخاب کنید</p>
        <input type="text" id="hue" class="canvas-background-color" data-control="hue" >
    </div>



    <div class="wrap-text"  style="font-family:yekan;">
        <input type="text" id="text" style="direction :rtl;text-align :right ;" placeholder=" متنی را درج نمائید" /> رنگ متن:
        <input type="text" id="hue" class="text-color" data-control="hue">
        <select id="text-font">
            </br>
           <option value="Arial">Arial</option>
                                    <option value="Times New Roman">Times New Roman</option>
                                    <option value="Comic Sans Ms">Comic Sans MS</option>
                                    <option value="Cleanwork">Cleanwork</option>
                                    <option value="DaunPenh">DaunPenh</option>
                                    <option value="Orator Std">Orator Std</option>
                                    <option value="Tahoma">Tahoma</option>
                                    <option value="Verdana">Verdana</option>
                                    <option value="Calibri">Calibri</option>
                                    <option value="Yekan">Yekan</option>
                                    <option value="bnazanin">bnazanin</option>
                                    <option value="BZiba">BZiba</option>
                                    <option value="BZar">BZar</option>
                                    <option value="BYas">BYas</option>
                                    <option value="BYagut">BYagut</option>
                                    <option value="BVahidBold">BVahidBold</option>
                                    <option value="BTitrTGEBold">BTitrTGEBold</option>
                                    <option value="BTitrBold">BTitrBold</option>
                                    <option value="BTehran">BTehran</option>
                                    <option value="BTabassom">BTabassom</option>
                                    <option value="BSinaBold">BSinaBold</option>
                                    <option value="BShiraz">BShiraz</option>
                                    <option value="BTraffic">BTraffic</option>
                                    <option value="BMitra">BMitra</option>
                                    <option value="BLotus">BLotus</option>
                                    <option value="BHamid">BHamid</option>
                                    <option value="BFarnaz">BFarnaz</option>
                                    <option value="BBCNassim">BBCNassim</option>
        </select>
    </div>
 <div class="wrap-canvas" id="master" style="background :#F1F5F8"><canvas id="c"  width="<%=Session("size_width") %>px" height="<%=Session("size_height") %>px"></canvas></div> 
    <div class="wrap-modes">
        <button id="selection"  style="font-family:yekan;">
            <svg class="svgIcons selectionSvg" width="16px" height="16px" viewBox="0 0 511.626 511.626" style="enable-background:new 0 0 511.626 511.626;" xml:space="preserve">
                <g>
                    <path d="M506.199,242.968l-73.09-73.089c-3.614-3.617-7.898-5.424-12.848-5.424c-4.948,0-9.229,1.807-12.847,5.424   c-3.613,3.619-5.424,7.902-5.424,12.85v36.547H292.355V109.641h36.549c4.948,0,9.232-1.809,12.847-5.424   c3.614-3.617,5.421-7.896,5.421-12.847c0-4.952-1.807-9.235-5.421-12.851L268.66,5.429c-3.613-3.616-7.895-5.424-12.847-5.424   c-4.952,0-9.232,1.809-12.85,5.424l-73.088,73.09c-3.618,3.619-5.424,7.902-5.424,12.851c0,4.946,1.807,9.229,5.424,12.847   c3.619,3.615,7.898,5.424,12.85,5.424h36.545v109.636H109.636v-36.547c0-4.952-1.809-9.234-5.426-12.85   c-3.619-3.617-7.902-5.424-12.85-5.424c-4.947,0-9.23,1.807-12.847,5.424L5.424,242.968C1.809,246.585,0,250.866,0,255.815   s1.809,9.233,5.424,12.847l73.089,73.087c3.617,3.613,7.897,5.431,12.847,5.431c4.952,0,9.234-1.817,12.85-5.431   c3.617-3.61,5.426-7.898,5.426-12.847v-36.549H219.27v109.636h-36.542c-4.952,0-9.235,1.811-12.851,5.424   c-3.617,3.617-5.424,7.898-5.424,12.847s1.807,9.233,5.424,12.854l73.089,73.084c3.621,3.614,7.902,5.424,12.851,5.424   c4.948,0,9.236-1.81,12.847-5.424l73.087-73.084c3.621-3.62,5.428-7.905,5.428-12.854s-1.807-9.229-5.428-12.847   c-3.614-3.613-7.898-5.424-12.847-5.424h-36.542V292.356h109.633v36.553c0,4.948,1.807,9.232,5.42,12.847   c3.621,3.613,7.905,5.428,12.854,5.428c4.944,0,9.226-1.814,12.847-5.428l73.087-73.091c3.617-3.617,5.424-7.901,5.424-12.85   S509.82,246.585,506.199,242.968z" fill="#fff" />
                </g>
            </svg> حالت انتخابی</button>
        <button id="draw"  style="font-family:yekan;">
            <svg class="svgIcons drawSvg" width="16px" height="16px" viewBox="0 0 459 459" style="enable-background:new 0 0 459 459;" xml:space="preserve">
                <g id="create">
                    <path d="M0,362.1V459h96.9l280.5-283.05l-96.9-96.9L0,362.1z M451.35,102c10.2-10.2,10.2-25.5,0-35.7L392.7,7.649    c-10.2-10.2-25.5-10.2-35.7,0l-45.9,45.9l96.9,96.9L451.35,102z" fill="#fff" />
                </g>
            </svg> حالت نقاشی</button>
        <div class="wrap-range"  style="font-family:yekan;">
            <input type="range" id="range" min="1" max="50" value="1">
            <input type="text" id="value" value="1">
        </div>
        <span  style="font-family:yekan;">رنگ قلم :</span>
        <input type="text" id="hue" class="draw-color" data-control="hue">
    </div>

    <div class="wrap-delete">
        <span style="font-family:yekan;text-align :right ;direction:rtl;" data-wenk="برای انتخاب یک شی اطراف آن با ماوس کلیک کنید تا حالت انتخابی آن فعال شود" data-wenk-pos="bottom" data-wenk-length="medium">
<button id="delete"  style="font-family:yekan;"><svg class="svgIcons deleteSelectedSvg" width="16px" height="16px" viewBox="0 0 510 510" style="enable-background:new 0 0 510 510;" xml:space="preserve">
<g id="cancel">
<path d="M255,0C114.75,0,0,114.75,0,255s114.75,255,255,255s255-114.75,255-255S395.25,0,255,0z M382.5,346.8l-35.7,35.7    L255,290.7l-91.8,91.8l-35.7-35.7l91.8-91.8l-91.8-91.8l35.7-35.7l91.8,91.8l91.8-91.8l35.7,35.7L290.7,255L382.5,346.8z" fill="#fff"/></g></svg> حذف شی انتخابی</button></span>
        <button id="delete-all"  style="font-family:yekan;">
            <svg  class="svgIcons deleteAllSvg" width="16px" height="16px" viewBox="0 0 357 357" style="enable-background:new 0 0 357 357;" xml:space="preserve">
                <g id="clear">
                    <polygon points="357,35.7 321.3,0 178.5,142.8 35.7,0 0,35.7 142.8,178.5 0,321.3 35.7,357 178.5,214.2 321.3,357 357,321.3     214.2,178.5   " fill="#fff" />
                </g>
            </svg> حذف تمام شی ها</button>
    </div>
                <p style="text-align :center ;width :100%;">
                <button id="save"  style="width:120px;font-family:Yekan;"> پیش نمایش</button>
                </p>
                <p style="text-align :center ;width :100%;">
                    <input type ="button" id="saveFinal" value="ذخیره طرح"   class="button_save_OnlinePlan"  />
                    <asp:Button ID="btnSave" runat ="server"  class="button_save_OnlinePlan" Text="ارسال به مدیریت فایل" />
                    <input type ="button" id="exitOnlinePlan" value="خروج"   class="button_save_OnlinePlan" onclick="location.href='http://pounechap.com'"  />                
                </p>
                

       
           
   

                

        
        <script type="text/javascript" src="src/js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="src/js/fabric-1.6.3.min.js"></script>
    <script type="text/javascript" src="src/js/jquery.ezdz.min.js"></script>
    <script type="text/javascript" src="src/js/jquery.minicolors-2.1.2.min.js"></script>
    <script type="text/javascript" src="src/js/script.js"></script>
    
    <asp:TextBox id="txtPath" runat ="server" style="position:absolute  ;top:-1000px;" ></asp:TextBox>
    <div onclick="saveDialog.style.display='none';" id="saveDialog" style="position:fixed  ;top:0px;left:0px;width:100%;height:100%;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.5);text-align :center ;z-index:1000000" >
        <div style="position:relative ;float:inherit;margin-left :auto ;margin-right :auto ;margin-top :auto ;margin-bottom :auto  ">
            <asp:Label ID="lblShow" runat ="server"  ></asp:Label>
        </div>
    </div>
    
    </form>
</body>
</html>
  <script type="text/javascript">
      $(document).ready(function() {
          $('body').css('zoom', '100%'); /* Webkit browsers */
          $('body').css('zoom', '1'); /* Other non-webkit browsers */
          $('body').css('-moz-transform', scale(0.8, 0.8)); /* Moz-browsers */
      });
    </script>
<%=Session("scriptSave") %>

<style type="text/css" >
    .button_save_OnlinePlan
    {
    	border:0;
    	padding :8px 5px 8px 5px;
    	border-radius:5px;
    	cursor:pointer ;
    	font-size:11pt;
    	font-family :yekan;
    	color:#fff;
    	background :#6598FD;
    	margin-top :10px;
    }
    .button_save_OnlinePlan:hover
    {
    	background :#333;
    }
</style>