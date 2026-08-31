<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GasBoosterStation.aspx.vb" Inherits="Safe_GasBoosterStation" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" dir="ltr">
<head id="Head1" runat="server">
    <title>Gas pressure boosting facilities</title>
      <link href="graphic/BodyGraphic.css?v=bidiFix2" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <meta runat ="server"  name="description" id="description" content="Anhar Construction Company was established in 1353 and implements EPC projects, gas pressure boosting stations, pipelines, buildings and structures, facilities and equipment for oil, gas, petrochemical projects and water transmission pipelines.">
    <meta runat ="server" name="keywords" id="keywords" content="Construction company, Anhar, EPC contracting, gas pressure boosting stations, pipelines, construction contracting, implementation of facilities and equipment for oil, gas, petrochemical projects, gas supply, refinery maintenance, replacement of line lining, CGS gas pressure reduction, lines Water transfer pipe, petrochemical construction, maintenance assistant, concrete skeleton, residential building, reservoir, dam reservoir, map design">
    <meta name="author" content="BSFE.ir">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
   
    <link rel= "stylesheet" type="text/css" href="scrollMainPage/style.css" media="screen"/>
    <script src="scrollMainPage/js/jquery-1.6.1.min.js"></script>
    <script src="scrollMainPage/js/scroll_herbs.js?v=langFix1"></script>
    <link rel="stylesheet" type="text/css" href="slick-1.8.0/slick/slick.css">
  <link rel="stylesheet" type="text/css" href="slick-1.8.0/slick/slick-theme.css">

  <link href="LightBox_Simple/src/jquery.littlelightbox.css" rel="stylesheet" type="text/css">
    <link href="graphic/ProjectStack.css?v=3" rel="stylesheet" type="text/css" />
</head>
<body style="background :#fff;">

    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"><Services><asp:ServiceReference Path ="AutoCompletar.asmx" /></Services></asp:ToolkitScriptManager>
     <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txt_Search" ServiceMethod="Buscar" ServicePath="AutoCompletar.asmx" MinimumPrefixLength="2" CompletionInterval="1000" EnableCaching="true" CompletionSetCount="12"   CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"></asp:AutoCompleteExtender>  
            <div class ="backMobileMenu" id="mobileMenu0">
             <div class ="topMenuBox">
                    <table style="position:relative  ;top:0px;left:0px;margin :0;padding :0;width :100%;" cellpadding="0" cellspacing ="0" >
                        <colgroup><col width="15%" /><col width="70%" /><col width="15%" /></colgroup>
                        <tr style ="height:76px;">
                            
                            <td>&nbsp;</td>
                            <td align ="center"><a style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;">&nbsp;</a></td>
                            <td><a onclick="closeshowMobileMenu();" href="#" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-times" style="margin-left :15px;" ></i></a></td>
                        </tr>
                    </table>
                </div>            
                <div class ="boxMenuMobile"><a href="#" onclick="showMobileMenu1();" >About Us<i class='fa fa-angle-left'></i></a></div>
                <div class ="boxMenuMobile"><a href="#" onclick="showMobileMenu2();" >Projects <i class='fa fa-angle-left'></i></a></div>
                <div class ="boxMenuMobile"><a href="#" onclick="showMobileMenu3();"  >Services <i class='fa fa-angle-left'></i></a></div>
                <div class ="boxMenuMobile"><a href="#" onclick="showMobileMenu4();"  >Contact Us <i class='fa fa-angle-left'></i></a></div>
                <div class ="boxMenuMobile"><a href="news.aspx">News</a></div>
                <div class ="boxMenuMobile"><a href="Gallery.aspx">Gallery</a></div>
        </div>
        
        
        <div class ="backMobileMenu" id="mobileMenu1" style ="display:none;">
             <div class ="topMenuBox">
                    <table style="position:relative  ;top:0px;left:0px;margin :0;padding :0;width :100%;" cellpadding="0" cellspacing ="0" >
                        <colgroup><col width="15%" /><col width="70%" /><col width="15%" /></colgroup>
                        <tr style ="height:76px;">
                            
                            <td><a href="#" onclick="showMainmenuMobilePage();" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-arrow-left" style="margin-left :15px;" ></i></a></td>
                            <td align ="center"><a style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;">About Us</a></td>
                            <td><a onclick="closeshowMobileMenu();"  href="#" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-times" style="margin-left :15px;" ></i></a></td>
                        </tr>
                    </table>
                </div>            
                <div class ="boxMenuMobile"><a href="MessageCEO.aspx">Chairman of the Board Message</a></div>
                <div class ="boxMenuMobile"><a href="History.aspx">History</a></div>
                <div class ="boxMenuMobile"><a href="Pillars.aspx">Strategic Pillars</a></div>
                <div class ="boxMenuMobile"><a href="OrganizationPolicy.aspx">Policy of the Organization</a></div>
                <div class ="boxMenuMobile"><a href="leadership.aspx">ANHAR Leadership</a></div>
                <div class ="boxMenuMobile"><a href="Certificates.aspx">Certificates </a></div>
                <div class ="boxMenuMobile"><a href="Acknowledgments.aspx">Letters of Appreciation</a></div>
                <div class ="boxMenuMobile"><a href="news.aspx">News</a></div>
                <div class ="boxMenuMobile"><a href="Gallery.aspx">Gallery</a></div>
        </div>
        
        <div class ="backMobileMenu" id="mobileMenu2"  style ="display:none;">
             <div class ="topMenuBox">
                    <table style="position:relative  ;top:0px;left:0px;margin :0;padding :0;width :100%;" cellpadding="0" cellspacing ="0" >
                        <colgroup><col width="15%" /><col width="70%" /><col width="15%" /></colgroup>
                        <tr style ="height:76px;">
                            
                            <td><a href="#" onclick="showMainmenuMobilePage();" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-arrow-left" style="margin-left :15px;" ></i></a></td>
                            <td align ="center"><a style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;">Projects</a></td>
                            <td><a onclick="closeshowMobileMenu();"  href="#" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-times" style="margin-left :15px;" ></i></a></td>
                        </tr>
                    </table>
                </div>            
                <div class ="boxMenuMobile"><a href="GasBoosterStation.aspx">Gas pressure boosting facilities</a></div>
                <div class ="boxMenuMobile"><a href="pipelines.aspx">Oil and gas pipelines</a></div>
                <div class ="boxMenuMobile"><a href="building.aspx" >Construction and building</a></div>
                <div class ="boxMenuMobile"><a href="FacilitiesEquipment.aspx" >Facilities and Equipment</a></div>
                <div class ="boxMenuMobile"><a href="WateTransmissionPipelines.aspx" >Water transmission pipelines</a></div>
                <div class ="boxMenuMobile"><a href="news.aspx">News</a></div>
                <div class ="boxMenuMobile"><a href="Gallery.aspx">Gallery</a></div>
        </div>
        
        <div class ="backMobileMenu" id="mobileMenu3"  style ="display:none;">
             <div class ="topMenuBox">
                    <table style="position:relative  ;top:0px;left:0px;margin :0;padding :0;width :100%;" cellpadding="0" cellspacing ="0" >
                        <colgroup><col width="15%" /><col width="70%" /><col width="15%" /></colgroup>
                        <tr style ="height:76px;">
                            
                            <td><a href="#" onclick="showMainmenuMobilePage();" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-arrow-left" style="margin-left :15px;" ></i></a></td>
                            <td align ="center"><a style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;">Services</a></td>
                            <td><a onclick="closeshowMobileMenu();"  href="#" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-times" style="margin-left :15px;" ></i></a></td>
                        </tr>
                    </table>
                </div>            
                <div class ="boxMenuMobile"><a href="DesignServices.aspx">Engineering</a></div>
                <div class ="boxMenuMobile"><a href="BuyServices.aspx">Procurement</a></div>
                <div class ="boxMenuMobile"><a href="OperationsServices.aspx">Construction </a></div>
                <div class ="boxMenuMobile"><a href="news.aspx">News</a></div>
                <div class ="boxMenuMobile"><a href="Gallery.aspx">Gallery</a></div>
        </div>
        
        
        <div class ="backMobileMenu" id="mobileMenu4"  style ="display:none;">
             <div class ="topMenuBox">
                    <table style="position:relative  ;top:0px;left:0px;margin :0;padding :0;width :100%;" cellpadding="0" cellspacing ="0" >
                        <colgroup><col width="15%" /><col width="70%" /><col width="15%" /></colgroup>
                        <tr style ="height:76px;">
                            
                            <td><a href="#" onclick="showMainmenuMobilePage();" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-arrow-left" style="margin-left :15px;" ></i></a></td>
                            <td align ="center"><a style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;">Contact Us</a></td>
                            <td><a onclick="closeshowMobileMenu();"  href="#" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-times" style="margin-left :15px;" ></i></a></td>
                        </tr>
                    </table>
                </div>            
                <div class ="boxMenuMobile"><a href="ContactUs.aspx"   >Contact Us</a></div>
                <div class ="boxMenuMobile"><a href="news.aspx">News</a></div>
                <div class ="boxMenuMobile"><a href="Gallery.aspx">Gallery</a></div>
        </div>

           <div class ="mainScreenLayer">    
            
            <div class ="MessageCEO_SlideContainer" style="<%=SiteStudioStore.BgStyle("hero_GasBoosterStation")%>">
                <div class ="MessageCEO_Masked"></div>    
                                
            </div>
            
            
            
            <div class ="topContainer">
                <div class="topBarContainer">
                    <div class="searchBoxContainer">
                        <ul>
                            <li><i class="fa fa-search searchMenuTop" ></i></li>
                            <li id="careers"><a href="index.aspx">Home</a></li>
                            <li id="careers"><a href="Gallery.aspx">Gallery</a></li>
                            <li id="careers"><a href="news.aspx">News</a></li>
                            <li id="top_Lang"><a href="<%=SiteStudioStore.LangHref("ar")%>"><img src="<%=SiteStudioStore.Asset("flag_ar")%>" title="تغيير اللغة إلى العربية" style="width:40px;" /></a>&nbsp;&nbsp;<a href="<%=SiteStudioStore.LangHref("fa")%>"><img src="<%=SiteStudioStore.Asset("flag_fa")%>" title="تغییر زبان به فارسی" style="width:40px;" /></a></li>
                        </ul>
                    </div>
                    <div class ="logoContainer">
                        <img alt="Anhar Company" title="ANHAR Company" src="<%=SiteStudioStore.Asset("logo")%>" style="cursor :pointer ;" onclick ="location.href='index.aspx'"  />
                    </div>
                    
                    <div class ="mobileTopButton">
                        <a><i class ="fa fa-bars"></i></a>
                    </div>
                    
                    <div id='cssmenu'>
                         <ul>
                            <li><a onmouseover ="showBoxBackMenu();">About Us</a>
                                <ul id="obj-m-1">
                                    <li style="height:96px;"></li>
                                    <li><a href="MessageCEO.aspx">Chairman of the Board Message</a></li>
                                    <li><a href="History.aspx">History</a></li>
                                    <li><a href="Pillars.aspx">Strategic Pillars</a></li>
                                    <li><a href="OrganizationPolicy.aspx">Policy of the Organization</a></li>
                                    <li><a href="leadership.aspx">ANHAR Leadership</a></li>
                                    <li><a href="Certificates.aspx">Certificates</a></li>
                                    <li><a href="Acknowledgments.aspx">Letters of Appreciation</a></li>
                                </ul>
                            </li>
                            <li><a onmouseover ="showBoxBackMenu();">Projects</a>
                                <ul  id="obj-m-2">
                                    <li style="height:96px;"></li>
                                    <li><a href="GasBoosterStation.aspx">Gas pressure boosting facilities</a></li>
                                    <li><a href="pipelines.aspx">Oil and gas pipelines</a></li>
                                    <li><a href="building.aspx">Construction and building</a></li>
                                    <li><a href="FacilitiesEquipment.aspx">Facilities and equipment</a></li>
                                    <li><a href="WateTransmissionPipelines.aspx">Water pipeline</a></li>
                                </ul>
                            </li>
                            <li><a onmouseover ="showBoxBackMenu();">Services</a>
                                <ul id="obj-m-3">
                                    <li style="height:96px;"></li>
                                    <li><a href="DesignServices.aspx">Engineering</a></li>
                                    <li><a href="BuyServices.aspx">Procurement</a></li>
                                    <li><a href="OperationsServices.aspx">Construction</a></li>
                                </ul>
                            </li>
                            
                             <li><a onmouseover ="showBoxBackMenu();">Contact Us</a>
                                <ul  id="obj-m-4">
                                    <li style="height:96px;"></li>
                                    <li><a href="ContactUs.aspx">Contact Us</a></li>
                                </ul>
                            </li>
                        </ul> 
                    </div> 
                </div>
            </div>
            <div class ="menuBoxContainer" id="obj_backMenuBox" onmouseout ="hideBoxBackMenu();"></div>
            <div class ="searchMainContainer">
                <div class ="searchContainer">
                    <div class ="searchAction">
                        <div class ="searchPic">
                            <p><i class="fa fa-search" style="color:#000;font-size:9pt;"></i></p>
                            <p>Search</p>
                        </div>
                        <asp:TextBox class ="inputSearch" ID="txt_Search" runat ="server" placeholder="How can we help you?"></asp:TextBox>
                       
                            <a runat ="server" id="btn_Search">
                            <i class ="fa fa-arrow-left"></i>
                            </a>
                        
                    </div>
                </div>
            </div>
            <div class ="MessageCEO_HeaderTextContainer"><h1 class="<%=SiteStudioStore.AlignClass("copy_GasBoosterStation_h1")%>"><%=SiteStudioStore.Copy("copy_GasBoosterStation_h1", "Gas pressure boosting facilities")%></h1> </div>
            <div class ="MessageCEO_topTextContainer">
                <p class="<%=SiteStudioStore.AlignClass("copy_GasBoosterStation_p1")%>"><%=SiteStudioStore.Copy("copy_GasBoosterStation_p1", "Gas pressure boosting facilities are designed to provide the required pressure to transfer gas from one point to another. Due to the expansion of gas transmission pipelines in Iran, the need to build gas pressure boosting stations has increased especially in the country, and in this regard, Anhar Co. has successfully implemented several gas pressure boosting stations in its years of operation.")%></p>
            </div>
            <div class ="MessageCEO_TopLogoType">
                <img src="<%=SiteStudioStore.Asset("logotype")%>" alt="ANHAR Company" />
            </div>
            
          
            

           <div id="projectStackHost">
           <%=Session("initProject") %>
           </div>
  
  <div class ="footerMainPage">
    <div class ="footerContainer">
        <div class ="boxFooter">
            <div class ="topBox">
                <img src="<%=SiteStudioStore.Asset("footer_logo")%>" />
                <p>Anhar Co.</p>
            </div>
            <div class ="bottomBox">
                <p class="<%=SiteStudioStore.AlignClass("footer_about")%>"><%=SiteStudioStore.FooterAboutHtml()%></p>
                <p><%=SiteStudioStore.SocialHtml()%></p>
            </div>
          
        </div>
        <div class ="boxFooterMenu">
            <ul style="margin-bottom :15px;"><li><a style="font-weight:600;">Site Menus</a></li></ul>
            <ul><li><a href="Employers.aspx">Employers</a></li></ul>
            <ul><li><a href="FielsDownload.aspx">Downloads</a></li></ul>
            <ul><li><a href="Links.aspx">Links</a></li></ul>
            <ul><li><a href="Gallery.aspx">Gallery</a></li></ul>
            <ul><li><a href="Privacy.aspx">Privacy</a></li></ul>
            <ul><li><a href="law.aspx">Terms of Use</a></li></ul>
            <%--<ul><li><a href="#">نقشه سایت</a></li></ul>--%>
            <ul><li><a href="#"></a></li></ul>
            
            
             <ul style="margin-bottom :15px;"><li><a style="font-weight:600;">About Us</a></li></ul>
             <ul><li><a href="MessageCEO.aspx">Message</a></li></ul>
            <ul><li><a href="History.aspx">History</a></li></ul>
            <ul><li><a href="Pillars.aspx">Strategic Pillars</a></li></ul>
            <ul><li><a href="OrganizationPolicy.aspx">Policy</a></li></ul>
            <ul><li><a href="leadership.aspx">Leadership</a></li></ul>
            <ul><li><a href="Certificates.aspx">Certificates</a></li></ul>
            <ul><li><a href="Acknowledgments.aspx">Letters of Appreciation</a></li></ul>
            <ul><li><a href="#"></a></li></ul>
        </div>
        
        
        <div class ="boxFooterMenu">
            <ul style="margin-bottom :15px;"><li><a style="font-weight:600;">Projects</a></li></ul>
            <ul><li><a href="GasBoosterStation.aspx">Gas pressure boosting facilities</a></li></ul>
            <ul><li><a href="pipelines.aspx">Oil and gas pipelines</a></li></ul>
            <ul><li><a href="building.aspx">Construction and building</a></li></ul><ul><li><a href="FacilitiesEquipment.aspx">Facilities and equipment</a></li></ul><ul><li><a href="WateTransmissionPipelines.aspx">Water pipeline</a></li></ul>
            <ul><li><a href="#"></a></li></ul>
            
            
             <ul style="margin-bottom :15px;"><li><a style="font-weight:600;">Services</a></li></ul>
             <ul><li><a href="DesignServices.aspx">Engineering</a></li></ul>
            <ul><li><a href="BuyServices.aspx">Procurement</a></li></ul>
            <ul><li><a href="OperationsServices.aspx">Construction</a></li></ul>
            <ul><li><a href="#"></a></li></ul>
            
            <ul style="margin-bottom :15px;"><li><a style="font-weight:600;">Contact Us</a></li></ul>
            <ul><li><a href="ContactUs.aspx">Contact Us</a></li></ul>
        </div>
       <div class ="copyRight" style="text-align :center ;">
        <div class ="languageBox"><ul><li><a href="<%=SiteStudioStore.LangHref("fa")%>"><img src="<%=SiteStudioStore.Asset("flag_fa")%>" title="تغییر زبان به فارسی" style="width:40px;" /></a></li><li><a href="<%=SiteStudioStore.LangHref("ar")%>"><img src="<%=SiteStudioStore.Asset("flag_ar")%>" title="تغيير اللغة إلى العربية" style="width:40px;" /></a></li></ul></div>
        © 2026 Anhar Corporation. All rights reserved.</div>
    </div>
    </div>
    
    
  </div>
  
</div>
    
        
       
     <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>

        <a class="scrollToTop" id="topObject" title="Top"></a>
        <asp:HiddenField runat="server" ID="hidden_Mobile_version" />
    </form>
</body>
</html>



<script type="text/javascript" src="Scroll.js"></script>


    
    <script type ="text/javascript" >
        
        var counterSlide = 1;
        var slide1 = document.getElementById("s1")
        var slide2 = document.getElementById("s2")
        var slide3 = document.getElementById("s3")
        var slide4 = document.getElementById("s4")

        var box_text1 = document.getElementById("s11")
        var box_text2 = document.getElementById("s22")
        var box_text3 = document.getElementById("s33")
        var box_text4 = document.getElementById("s44")
        window.onload = initSlide;
        function initSlide() {
            slide1 = document.getElementById("s1")
            slide1.style.display = "block";
            slide2 = document.getElementById("s2")
            slide2.style.display = "none";
            slide3 = document.getElementById("s3")
            slide3.style.display = "none";
            slide4 = document.getElementById("s4")
            slide4.style.display = "none";
            
            if (hidden_Mobile_version.value == 1) {
                s11.style.left = "0.5%";
            }
            else {
                s11.style.left = "20%";
            }
            counterObjSlide2.style.backgroundColor = "rgb(116,116,116)";
            counterObjSlide3.style.backgroundColor = "rgb(116,116,116)";
            counterObjSlide4.style.backgroundColor = "rgb(116,116,116)";
            counterObjSlide1.style.backgroundColor = "#0066B2";
            window.setTimeout(growSlideTopShow0, 500); 
            counterSlide++;
            window.setInterval(showSlideTop, 10000); 
        }

        function showSlideTop() {
            if (counterSlide == 5) {
                counterSlide = 1;
            }
           if (counterSlide==1) {
                    slide1.style.backgroundSize = "150%";
                    slide1.style.display = "block";
                    slide2.style.display = "none";
                    slide3.style.display = "none";
                    slide4.style.display = "none";
                    s44.style.left = "-10000px";
                    if (hidden_Mobile_version.value == 1) {
                        s11.style.left = "0.5%";
                    }
                    else {
                        s11.style.left = "20%";
                    }
                    
                    counterObjSlide2.style.backgroundColor = "rgb(116,116,116)";
                    counterObjSlide3.style.backgroundColor = "rgb(116,116,116)";
                    counterObjSlide4.style.backgroundColor = "rgb(116,116,116)";
                    counterObjSlide1.style.backgroundColor = "#0066B2";
                    window.setTimeout(growSlideTopShow0, 500); 
                    }
              if (counterSlide==2) {
                    slide2.style.backgroundSize = "150%";
                    slide1.style.display = "none";
                    slide2.style.display = "block";
                    slide3.style.display = "none";
                    s11.style.left = "-10000px";
                    if (hidden_Mobile_version.value == 1) {
                        s22.style.left = "0.5%";
                    }
                    else {
                        s22.style.left = "20%";
                    }
                    counterObjSlide1.style.backgroundColor = "rgb(116,116,116)";
                    counterObjSlide3.style.backgroundColor = "rgb(116,116,116)";
                    counterObjSlide4.style.backgroundColor = "rgb(116,116,116)";
                    counterObjSlide2.style.backgroundColor = "#0066B2";
                    window.setTimeout(growSlideTopShow, 500); 
               }
            if (counterSlide==3) {
                    slide3.style.backgroundSize = "150%";
                    slide1.style.display = "none";
                    slide2.style.display = "none";
                    slide3.style.display = "block";
                    slide4.style.display = "none";
                    s22.style.left = "-10000px";
                    if (hidden_Mobile_version.value == 1) {
                        s33.style.left = "0.5%";
                    }
                    else {
                        s33.style.left = "20%";
                    }
                    counterObjSlide1.style.backgroundColor = "rgb(116,116,116)";
                    counterObjSlide2.style.backgroundColor = "rgb(116,116,116)";
                    counterObjSlide4.style.backgroundColor = "rgb(116,116,116)";
                    counterObjSlide3.style.backgroundColor = "#0066B2";
                    window.setTimeout(growSlideTopShow2, 500); 
                    }
                  if (counterSlide==4) {
                    slide4.style.backgroundSize = "150%";
                    slide1.style.display = "none";
                    slide2.style.display = "none";
                    slide3.style.display = "none";
                    slide4.style.display = "block";
                    s33.style.left = "-10000px";
                    if (hidden_Mobile_version.value == 1) {
                        s44.style.left = "0.5%";
                    }
                    else {
                        s44.style.left = "20%";
                    }
                    counterObjSlide1.style.backgroundColor = "rgb(116,116,116)";
                    counterObjSlide2.style.backgroundColor = "rgb(116,116,116)";
                    counterObjSlide3.style.backgroundColor = "rgb(116,116,116)";
                    counterObjSlide4.style.backgroundColor = "#0066B2";
                    window.setTimeout(growSlideTopShow3, 500); 
                    }


            counterSlide=counterSlide+1;

        }

        function growSlideTopShow0() {

            slide1.style.backgroundSize = "100%";

        }
        
        function growSlideTopShow() {
           
            slide2.style.backgroundSize = "100%";
             
        }

        function growSlideTopShow2() {

            slide3.style.backgroundSize = "100%";

        }

        function growSlideTopShow3() {

            slide4.style.backgroundSize = "100%";

        }



        
    </script>
    <script src="js/2.1.0/jquery.min.js"></script>
        <script type ="text/javascript"  >
            $(document).on('ready', function() {
               
                if ($(window).width() < 770) {

                    $("#hidden_Mobile_version").val("1");
                }

            });
    
    </script>
    <script type ="text/javascript" >
        function showBoxBackMenu() {
            var b = document.getElementById("obj_backMenuBox");
            b.classList.add("menuBoxContainerShow");
        }

        function hideBoxBackMenu() {
            var b1 = document.getElementById("obj_backMenuBox");
            b1.classList.remove("menuBoxContainerShow");
        }

    
</script>

<script>
    $(document).ready(function() {
        $('div[data-type="parallax_section"]').each(function() {
            var $bgobj = $(".bottomBoxService"); // Variable para asignacion de objeto
            $(window).scroll(function() {
            $window = $(window);
            var x = $(".MainPage_Service").position();
            
                var yPos = -($window.scrollTop() - x.top);
                // cordinadas del background
                var coords = yPos + 'px';

                // moviendo el background
                $bgobj.css({ top: coords });
            });
        });
    });

		</script>  
     <script type="text/javascript" src="jquery.js"></script>
     
<script type="text/javascript">


    var $window = $(window);
    var $animation_elements4 = $('.MessageCEO_Box5Container_Project');
    function check_if_in_view4() {
        var window_height = $window.height();
        var window_top_position = $window.scrollTop();
        var window_bottom_position = (window_top_position + window_height);

        $.each($animation_elements4, function() {

            var $element = $(this);
            var element_height = $element.outerHeight();
            var element_top_position = $element.offset().top;
            var element_bottom_position = (element_top_position + element_height);

            //check to see if this current container is within viewport
            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {

                $element.addClass('boxView_MessageCEO');
            } else {

            }
        });
    }

    $window.on('scroll resize', check_if_in_view4);
    $window.trigger('scroll');
</script> 

<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
  <script src="slick-1.8.0/slick/slick.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript">
    $(document).on('ready', function() {
      $(".vertical-center-4").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 4,
        slidesToScroll: 2
      });
      $(".vertical-center-3").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      $(".vertical-center-2").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 2,
        slidesToScroll: 2
      });
      $(".vertical-center").slick({
        dots: true,
        vertical: true,
        centerMode: true,
      });
      $(".vertical").slick({
        dots: true,
        vertical: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      if ($(window).width()<470){
      $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
      }
      else if ($(window).width()<785){
        $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
      }
      else if ($(window).width()<1279){
         $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      }
      else{
        $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 4,
        slidesToScroll: 3
      });
      }
      
      
      $(".variable").slick({
        dots: true,
        infinite: true,
        variableWidth: true
      });
      $(".lazy").slick({
        lazyLoad: 'ondemand', // ondemand progressive anticipated
        infinite: true
      });
    });
</script>

<script type="text/javascript">
    $(function() {
        $('.searchMainContainer').hide();$(".searchMainContainer").css("left", "0");
        $('.searchMenuTop').click(function() {
            $('.searchMainContainer')
            .toggle('slow', function() {
                $(this).closest('.searchMainContainer')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
        });


        $('.mobileTopButton').click(function() {
        $('#mobileMenu0')
            .toggle('slow', function() {
        $(this).closest('#mobileMenu0')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
        });


    });
    </script>
    
    
    <script type="text/javascript" >

        function showMainmenuMobilePage() {
            mobileMenu0.style.display = "block";
            mobileMenu1.style.display = "none";
            mobileMenu2.style.display = "none";
            mobileMenu3.style.display = "none";
            mobileMenu4.style.display = "none";
        }
    
        function showMobileMenu() {
            mobileMenu0.style.display = "block";
            mobileMenu1.style.display = "none";
            mobileMenu2.style.display = "none";
            mobileMenu3.style.display = "none";
            mobileMenu4.style.display = "none";

        }

        function showMobileMenu1() {
            mobileMenu0.style.display = "none";
            mobileMenu1.style.display = "block";
            mobileMenu2.style.display = "none";
            mobileMenu3.style.display = "none";
            mobileMenu4.style.display = "none";
        }

        function showMobileMenu2() {
            mobileMenu0.style.display = "none";
            mobileMenu1.style.display = "none";
            mobileMenu2.style.display = "block";
            mobileMenu3.style.display = "none";
            mobileMenu4.style.display = "none";

        }

        function showMobileMenu3() {
            mobileMenu0.style.display = "none";
            mobileMenu1.style.display = "none";
            mobileMenu2.style.display = "none";
            mobileMenu3.style.display = "block";
            mobileMenu4.style.display = "none";

        }

        function showMobileMenu4() {
            mobileMenu0.style.display = "none";
            mobileMenu1.style.display = "none";
            mobileMenu2.style.display = "none";
            mobileMenu3.style.display = "none";
            mobileMenu4.style.display = "block";

        }

        function closeshowMobileMenu() {
            mobileMenu0.style.display = "none";
            mobileMenu1.style.display = "none";
            mobileMenu2.style.display = "none";
            mobileMenu3.style.display = "none";
        }

</script>
<script src="LightBox_Simple/src/jquery.littlelightbox.js"></script>
<script>
    $('.lightbox').littleLightBox();
</script>
<script src="js/project-stack.js?v=3"></script>