<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="W_ISM.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <script type="text/javascript" src="js/ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>

    <link rel="stylesheet" href="../fontawesome/css/font-awesome.min.css" />
    <link href="../graphic/GraphicLayer.css" rel="Stylesheet" />
    <link rel="stylesheet" type="text/css" href="src/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="src/css/wenk.min.css">
    <link rel="stylesheet" type="text/css" href="src/css/style.css">
    <link rel="stylesheet" type="text/css" href="src/css/jquery.ezdz.min.css">
    <link rel="stylesheet" type="text/css" href="src/css/jquery.minicolors-2.1.2.css">
    <style type="text/css">
        @import url('src/persian-font.css');
        body
        {
            -moz-transform: scale(0.8, 0.8);
            zoom: 0.8;
            zoom: 80%;
        }
        button
        {
            font-size: 10pt;
            font-family: yekan,arial;
        }
    </style>

    <script type="text/javascript" src="../jquery.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('body').css('zoom', '80%'); /* Webkit browsers */
            $('body').css('zoom', '0.8'); /* Other non-webkit browsers */
            $('body').css('-moz-transform', scale(0.8, 0.8)); /* Moz-browsers */
        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTA1IiBoZWlnaHQ9IjEwNSIgdmlld0JveD0iMCAwIDEwNSAxMDUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgZmlsbD0iI2M1YzViOSI+CiAgICA8Y2lyY2xlIGN4PSIxMi41IiBjeT0iMTIuNSIgcj0iMTIuNSI+CiAgICAgICAgPGFuaW1hdGUgYXR0cmlidXRlTmFtZT0iZmlsbC1vcGFjaXR5IgogICAgICAgICBiZWdpbj0iMHMiIGR1cj0iMXMiCiAgICAgICAgIHZhbHVlcz0iMTsuMjsxIiBjYWxjTW9kZT0ibGluZWFyIgogICAgICAgICByZXBlYXRDb3VudD0iaW5kZWZpbml0ZSIgLz4KICAgIDwvY2lyY2xlPgogICAgPGNpcmNsZSBjeD0iMTIuNSIgY3k9IjUyLjUiIHI9IjEyLjUiIGZpbGwtb3BhY2l0eT0iLjUiPgogICAgICAgIDxhbmltYXRlIGF0dHJpYnV0ZU5hbWU9ImZpbGwtb3BhY2l0eSIKICAgICAgICAgYmVnaW49IjEwMG1zIiBkdXI9IjFzIgogICAgICAgICB2YWx1ZXM9IjE7LjI7MSIgY2FsY01vZGU9ImxpbmVhciIKICAgICAgICAgcmVwZWF0Q291bnQ9ImluZGVmaW5pdGUiIC8+CiAgICA8L2NpcmNsZT4KICAgIDxjaXJjbGUgY3g9IjUyLjUiIGN5PSIxMi41IiByPSIxMi41Ij4KICAgICAgICA8YW5pbWF0ZSBhdHRyaWJ1dGVOYW1lPSJmaWxsLW9wYWNpdHkiCiAgICAgICAgIGJlZ2luPSIzMDBtcyIgZHVyPSIxcyIKICAgICAgICAgdmFsdWVzPSIxOy4yOzEiIGNhbGNNb2RlPSJsaW5lYXIiCiAgICAgICAgIHJlcGVhdENvdW50PSJpbmRlZmluaXRlIiAvPgogICAgPC9jaXJjbGU+CiAgICA8Y2lyY2xlIGN4PSI1Mi41IiBjeT0iNTIuNSIgcj0iMTIuNSI+CiAgICAgICAgPGFuaW1hdGUgYXR0cmlidXRlTmFtZT0iZmlsbC1vcGFjaXR5IgogICAgICAgICBiZWdpbj0iNjAwbXMiIGR1cj0iMXMiCiAgICAgICAgIHZhbHVlcz0iMTsuMjsxIiBjYWxjTW9kZT0ibGluZWFyIgogICAgICAgICByZXBlYXRDb3VudD0iaW5kZWZpbml0ZSIgLz4KICAgIDwvY2lyY2xlPgogICAgPGNpcmNsZSBjeD0iOTIuNSIgY3k9IjEyLjUiIHI9IjEyLjUiPgogICAgICAgIDxhbmltYXRlIGF0dHJpYnV0ZU5hbWU9ImZpbGwtb3BhY2l0eSIKICAgICAgICAgYmVnaW49IjgwMG1zIiBkdXI9IjFzIgogICAgICAgICB2YWx1ZXM9IjE7LjI7MSIgY2FsY01vZGU9ImxpbmVhciIKICAgICAgICAgcmVwZWF0Q291bnQ9ImluZGVmaW5pdGUiIC8+CiAgICA8L2NpcmNsZT4KICAgIDxjaXJjbGUgY3g9IjkyLjUiIGN5PSI1Mi41IiByPSIxMi41Ij4KICAgICAgICA8YW5pbWF0ZSBhdHRyaWJ1dGVOYW1lPSJmaWxsLW9wYWNpdHkiCiAgICAgICAgIGJlZ2luPSI0MDBtcyIgZHVyPSIxcyIKICAgICAgICAgdmFsdWVzPSIxOy4yOzEiIGNhbGNNb2RlPSJsaW5lYXIiCiAgICAgICAgIHJlcGVhdENvdW50PSJpbmRlZmluaXRlIiAvPgogICAgPC9jaXJjbGU+CiAgICA8Y2lyY2xlIGN4PSIxMi41IiBjeT0iOTIuNSIgcj0iMTIuNSI+CiAgICAgICAgPGFuaW1hdGUgYXR0cmlidXRlTmFtZT0iZmlsbC1vcGFjaXR5IgogICAgICAgICBiZWdpbj0iNzAwbXMiIGR1cj0iMXMiCiAgICAgICAgIHZhbHVlcz0iMTsuMjsxIiBjYWxjTW9kZT0ibGluZWFyIgogICAgICAgICByZXBlYXRDb3VudD0iaW5kZWZpbml0ZSIgLz4KICAgIDwvY2lyY2xlPgogICAgPGNpcmNsZSBjeD0iNTIuNSIgY3k9IjkyLjUiIHI9IjEyLjUiPgogICAgICAgIDxhbmltYXRlIGF0dHJpYnV0ZU5hbWU9ImZpbGwtb3BhY2l0eSIKICAgICAgICAgYmVnaW49IjUwMG1zIiBkdXI9IjFzIgogICAgICAgICB2YWx1ZXM9IjE7LjI7MSIgY2FsY01vZGU9ImxpbmVhciIKICAgICAgICAgcmVwZWF0Q291bnQ9ImluZGVmaW5pdGUiIC8+CiAgICA8L2NpcmNsZT4KICAgIDxjaXJjbGUgY3g9IjkyLjUiIGN5PSI5Mi41IiByPSIxMi41Ij4KICAgICAgICA8YW5pbWF0ZSBhdHRyaWJ1dGVOYW1lPSJmaWxsLW9wYWNpdHkiCiAgICAgICAgIGJlZ2luPSIyMDBtcyIgZHVyPSIxcyIKICAgICAgICAgdmFsdWVzPSIxOy4yOzEiIGNhbGNNb2RlPSJsaW5lYXIiCiAgICAgICAgIHJlcGVhdENvdW50PSJpbmRlZmluaXRlIiAvPgogICAgPC9jaXJjbGU+Cjwvc3ZnPgo="
        class="loader">
    <div class="page_wrapper">
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
        <table style="position:absolute ;top:0px;left:0px;width:100%;direction:rtl;">
            <tr>
                <td align ="center" >
                    <table style="width: 90%; font-family: yekan,arial; font-size: 9pt; direction: rtl;">
            <tr>
                <td>
                    <input type="file" onchange="previewFile()" name="image" accept="image/jpeg , image/jpg , image/png" style="background :red;">
                </td>
                <td>
                    <table style="width:100%;height:100px;padding-left :20px;"  >
                        <tr style="height:60px;">
                            <td >
                                <button id="image-background" style="width:120px;">درج تصویر پی زمینه</button>                            
                            </td>
                            <td>
                                 رنگ پس زمینه :<input type="text" id="Text1" class="canvas-background-color" data-control="hue">
                            </td>
                        </tr>
                        <tr style="height:60px;">
                            <td>
                                <button id="image-on" style="width:120px;">اضافه نمودن تصویر</button>
                            </td>
                            
                            <td>
                                <select id="cmbCut">
                                <option value="0">خط برش</option>
                                <option value="1">Ellipse</option>
                                <option value="2">Rounded Rectangle</option>
                                <option value="3">Triangle</option>
                                <option value="4">Rhombus</option>
                                <option value="5">Circle</option>
                                <option value="6">Rounded Square</option>
                                <option value="7">Equilatral Triangle</option>
                                <option value="8">Diamond</option>
                                <option value="9">Pentagon</option>            
                                </select>
                            </td>
                        </tr>    
                    </table>
                    
                </td>
                
                <td>
                    <table style="width:100%;height:100px;padding-left :20px;"  >
                        <tr style="height:60px;">
                           
                            <td>
                                <input type="text" id="text" dir="rtl" style="text-align :right;padding-right :5px;" placeholder="متن مورد نظر را درج نمائید" /> 
                            </td>
                             <td>
                                <button id="btnaddtest" style="width:60px;">درج متن</button> 
                            </td>
                        </tr>
                        <tr style="height:60px;">
                            <td>
                                رنگ متن:<input type="text" id="hue" class="text-color" data-control="hue">
                            </td>
                        
                            <td>
                                نوع فونت : <select id="text-font">
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
                            </td>
                        </tr>
                    </table>
                          
                </td>
                <td>
                    <table style="width:100%;height:100px;">
                         <tr style="height:60px;">
                            <td>
                                <button id="selection"  style="width:120px;"> حالت انتخابی </button>
                            </td>
                            <td>
                                <button id="draw"  style="width:120px;"> حالت طراحی</button>
                            </td>
                            <td style="min-width:100px;">
                                <ul id="zoom_triggers" style="display:inline-block"><li style="display:inline-block;min-width:20px;"><a href="#" style="color:#A6A6A6;font-size :14pt;" id="zoom_in"><i class="fa fa-search-plus"></i></a></li><li style="display:inline-block;min-width:25px;"><a href="#" style="color:#A6A6A6;font-size :14pt;"  id="zoom_out"><i class="fa fa-search-minus"></i></a></li><li style="display:inline-block;min-width:20px;"><a  href="#" style="color:#A6A6A6;font-size :14pt;"  id="zoom_reset"><i class="fa fa-refresh"></i></a></li></ul>
                            </td>
                         </tr>
                         <tr style="height:60px;">
                            <td>
                                رنگ قلم :<input type="text" id="Text2" class="draw-color" data-control="hue">
                            </td>
                            <td colspan ="2">
                                <div class="wrap-range"><input type="range" id="range" min="1" max="50" value="1"><input type="text" id="value" value="1"></div>
                            </td>
                            
                            <td>
                               
                            </td>
                         </tr>
                    </table>
                        
                </td>
                <td>
                    <table style="width:100%;height:100px;">
                        <tr style="height:60px;">
                            <td>
                                <button id="delete" style="width:120px">حذف ابجکت انتخابی</button>
                            </td>
                            <td>
                                <button id="delete-all" style="width:120px"> حذف همه ابجکت ها</button>
                            </td>
                            <td>
                                 <button id="save"  style="width:120px"> پیش نمایش</button>
                            </td>
                        </tr>
                        <tr style="height:60px;">
                            <td>
                                <input type ="button" id="saveFinal" value="ذخیره طرح"   class="button_save_OnlinePlan"  style="width:120px"/>
                            </td>
                            <td>
                                <asp:Button ID="btnSave" runat ="server"  class="button_save_OnlinePlan" Text="ارسال به مدیریت فایل" style="width:120px"/>
                            </td>
                            <td>
                                <input type ="button" id="exitOnlinePlan" value="خروج"   class="button_save_OnlinePlan" onclick="location.href='http://pounechap.com'"  style="width:120px"/>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
           
            
        </table>
                </td>
            </tr>
             <tr>
                <td>
                    <div class="wrap-canvas" id="master" style="background :#F1F5F8"><canvas id="c"  width="<%=Session("size_width") %>" height="<%=Session("size_height") %>"></canvas></div> 
                </td>
            </tr>
        </table> 
        
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
<%=Session("scriptSave") %>

<script>
    jQuery(document).ready(function($) {
        // Set initial zoom level
        var zoom_level = 100;

        // Click events
        $('#zoom_in').click(function() { zoom_page(10, $(this)) });
        $('#zoom_out').click(function() { zoom_page(-10, $(this)) });
        $('#zoom_reset').click(function() { zoom_page(0, $(this)) });

        // Zoom function
        function zoom_page(step, trigger) {
            // Zoom just to steps in or out
            if (zoom_level >= 120 && step > 0 || zoom_level <= 10 && step < 0) return;

            // Set / reset zoom
            if (step == 0) zoom_level = 100;
            else zoom_level = zoom_level + step;

            // Set page zoom via CSS
            $('#c').css({
                transform: 'scale(' + (zoom_level / 100) + ')', // set zoom
                transformOrigin: '50% 0' // set transform scale base
            });
            $('#master').css({
                transform: 'scale(' + (zoom_level / 100) + ')', // set zoom
                transformOrigin: '50% 0' // set transform scale base
            });
            // Adjust page to zoom width
            if (zoom_level > 100) $('body').css({ width: (zoom_level * 1.2) + '%' });
            else {
                $('#c').css({ width: '100%' });
                $('#master').css({ width: '100%' });
            }

            // Activate / deaktivate trigger (use CSS to make them look different)
            if (zoom_level >= 120 || zoom_level <= 10) trigger.addClass('disabled');
            else trigger.parents('ul').find('.disabled').removeClass('disabled');
            if (zoom_level != 100) $('#zoom_reset').removeClass('disabled');
            else $('#zoom_reset').addClass('disabled');
        }
    });
</script>