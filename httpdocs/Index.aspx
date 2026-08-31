<%@ Page Language="vb" AutoEventWireup="false" Inherits="IndexSafe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" dir="ltr">
<head runat="server">
    <title><%=Session("site_title")%></title>
      <link href="graphic/BodyGraphic.css?v=bidiFix2" rel="stylesheet" />
    <link href="graphic/UiRefresh.css?v=centerFix2" rel="stylesheet" />
    <link href="JS/swiper-bundle.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="<%=Session("site_favicon")%>" />
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
</head>
<body>
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
                            
                            <td><a href="#" onclick="showMainmenuMobilePage();" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-arrow-right" style="margin-left :15px;" ></i></a></td>
                            <td align ="center"><a style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;">About Us</a></td>
                            <td><a onclick="closeshowMobileMenu();"  href="#" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-times" style="margin-left :15px;" ></i></a></td>
                        </tr>
                    </table>
                </div>            
                <div class ="boxMenuMobile"><a href="MessageCEO.aspx">Chairman of the Board Message</a></div>
                <div class ="boxMenuMobile"><a href="History.aspx">History</a></div>
                <div class ="boxMenuMobile"><a href="Pillars.aspx">Strategic Pillars </a></div>
                <div class ="boxMenuMobile"><a href="OrganizationPolicy.aspx">Policy of the Organization </a></div>
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
                            
                            <td><a href="#" onclick="showMainmenuMobilePage();" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-arrow-right" style="margin-left :15px;" ></i></a></td>
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
                            
                            <td><a href="#" onclick="showMainmenuMobilePage();" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-arrow-right" style="margin-left :15px;" ></i></a></td>
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
                            
                            <td><a href="#" onclick="showMainmenuMobilePage();" style="font-family:iranyekanwebmediumfanum ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-arrow-right" style="margin-left :15px;" ></i></a></td>
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
            <div class ="topSlideContainer" id="bannerSliderContainer">
                <%If Session("MobileVersion") = 1 Then%>
                <div id="s1" class ="imageSlidBox" <%=SiteStudioStore.SlideStyle(1, True)%>></div>
                <div id="s2" class ="imageSlidBox" <%=SiteStudioStore.SlideStyle(2, True)%>></div>
                <div id="s3" class ="imageSlidBox" <%=SiteStudioStore.SlideStyle(3, True)%>></div>
                <div id="s4" class ="imageSlidBox" <%=SiteStudioStore.SlideStyle(4, True)%>></div>
                
                <%Else%>
                <div id="s1" class ="imageSlidBox" <%=SiteStudioStore.SlideStyle(1, False)%>></div>
                <div id="s2" class ="imageSlidBox" <%=SiteStudioStore.SlideStyle(2, False)%>></div>
                <div id="s3" class ="imageSlidBox" <%=SiteStudioStore.SlideStyle(3, False)%>></div>
                <div id="s4" class ="imageSlidBox" <%=SiteStudioStore.SlideStyle(4, False)%>></div>
                
                <%End If%>
                
                
                <div class="maskSlide"></div>
                
                <div class="boxTextSlide1 back1" id="s11"  >
                    <p class ="headText <%=SiteStudioStore.AlignClass("slider1_name")%>"><%=Session("name_TopBanner1")%></p>
                    <p class="titleText <%=SiteStudioStore.AlignClass("slider1_text")%>"><%=Session("text_TopBanner1")%></p>
                    <p class ="bottomText <%=SiteStudioStore.AlignClass("slider1_button")%>"  ><a href="<%=Session("link_TopBanner1")%>"><i style="margin-right :10px;" class="fa fa-arrow-right"></i>&nbsp;<%=Session("small_TopBanner1")%></a></p>
                </div>
                
                
                <div class="boxTextSlide2 back2" id="s22">
                    <p class ="headText <%=SiteStudioStore.AlignClass("slider2_name")%>"><%=Session("name_TopBanner2")%></p>
                    <p class="titleText <%=SiteStudioStore.AlignClass("slider2_text")%>"><%=Session("text_TopBanner2")%></p>
                    <p class ="bottomText <%=SiteStudioStore.AlignClass("slider2_button")%>"  ><a href="<%=Session("link_TopBanner2")%>"><i style="margin-right :10px;" class="fa fa-arrow-right"></i>&nbsp;<%=Session("small_TopBanner2")%></a></p>
                </div>
                
                <div class="boxTextSlide3 back3" id="s33">
                    <p class ="headText <%=SiteStudioStore.AlignClass("slider3_name")%>"><%=Session("name_TopBanner3")%></p>
                    <p class="titleText <%=SiteStudioStore.AlignClass("slider3_text")%>"><%=Session("text_TopBanner3")%></p>
                    <p class ="bottomText <%=SiteStudioStore.AlignClass("slider3_button")%>"  ><a href="<%=Session("link_TopBanner3")%>"><i style="margin-right :10px;" class="fa fa-arrow-right"></i>&nbsp;<%=Session("small_TopBanner3")%></a></p>
                </div>
                
                
                <div class="boxTextSlide4 back4" id="s44">
                    <p class ="headText <%=SiteStudioStore.AlignClass("slider4_name")%>"><%=Session("name_TopBanner4")%></p>
                    <p class="titleText <%=SiteStudioStore.AlignClass("slider4_text")%>"><%=Session("text_TopBanner4")%></p>
                    <p class ="bottomText <%=SiteStudioStore.AlignClass("slider4_button")%>"  ><a href="<%=Session("link_TopBanner4")%>"><i style="margin-right :10px;" class="fa fa-arrow-right"></i>&nbsp;<%=Session("small_TopBanner4")%></a></p>
                </div>
                <div class ="arowSlideMain">
                    <div class ="arowSlideContainer">
                        <div id="counterObjSlide1" class ="counterBox" onclick="clickSlideTop(1);"></div>
                        <div id="counterObjSlide2" class ="counterBox" onclick="clickSlideTop(2);"></div>
                        <div id="counterObjSlide3" class ="counterBox" onclick="clickSlideTop(3);"></div>
                        <div id="counterObjSlide4" class ="counterBox" onclick="clickSlideTop(4);"></div>
                    </div>
                    <div class ="pauseSlideContainer" onclick="pauseSlide();">
                        <i id="pauseSlideContainerObject"  class ="fa fa-pause" style="font-size:8pt;color:#fff;margin-top :10px;margin-left :auto;margin-right :auto ;"></i>
                    </div>
                </div>
                
                
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
                        <img alt="Anhar Company" title="ANHAR Company" src="<%=Session("site_logo")%>" style="cursor :pointer ;" onclick ="location.href='index.aspx'"  />
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
                            <i class ="fa fa-arrow-right"></i>
                            </a>
                        
                    </div>
                </div>
            </div>
  
         
      <div id="wrap_out">
  <div id='wrap'>
    
    <div id="separation">
      <div></div>
       </div>
    <section>
      <div  id="coriander" class="element">
        <div style="color:#fff;font-family:iranyekanwebmediumfanum;direction:ltr;font-size :14pt;">Water pipeline</div>
        <img src="scrollMainPage/images/coriander1.jpg" width="286" height="232" alt="Coriander" style="border-radius:15px;">
        <p style="color:#000;font-family:iranyekanwebmediumfanum;direction:ltr;">Considering the vital role of water in human life and the lack of this life liquid in the new century</p>
      </div>
      <div  id="rosemary" class="element"><img src="scrollMainPage/images/rosemary1.jpg" width="370" height="143" alt="Rosemary" style="border-radius:15px;">
        <div style="color:#fff;font-family:iranyekanwebmediumfanum;direction:ltr;font-size :14pt;">Construction and building </div>
        <p style="color:#000;font-family:iranyekanwebmediumfanum;direction:ltr;">Anhar company started its activity with the construction and school building projects and so far </p>
      </div>
      <div  id="lemonbalm" class="element">
        <div style="color:#fff;font-family:iranyekanwebmediumfanum;direction:ltr;font-size :14pt;">Social Responsibility</div>
        <img src="scrollMainPage/images/lemonbalm1.jpg" width="265" height="193" alt="Lemonbalm" style="border-radius:15px;">
        <p style="color:#000;font-family:iranyekanwebmediumfanum;direction:ltr;">The history and performance of Anhar company from the beginning until now shows the effort of this group to improve the level of culture and education of the young generation of the society</p>
      </div>
      <div  id="chives" class="element">
        <div style="color:#fff;font-family:iranyekanwebmediumfanum;direction:ltr;font-size :14pt;">Looking to the future</div>
        <img src="scrollMainPage/images/chives1.jpg" width="197" height="474" alt="Chives" style="border-radius:15px;">
        <p style="color:#000;font-family:iranyekanwebmediumfanum;direction:ltr;">It is hoped that with the help of God, we can take a small step in the path of development and progress in order to advance the goals of our beloved country</p>
      </div>
      <div  id="basil" class="element">
        <div style="color:#fff;font-family:iranyekanwebmediumfanum;direction:ltr;font-size :14pt;">Presence at International Arena</div>
        <img src="scrollMainPage/images/basilic1.jpg" width="368" height="223" alt="Basil" style="border-radius:15px;">
        <p style="color:#000;font-family:iranyekanwebmediumfanum;direction:ltr;">One of the aspects of the excellence of companies active in the field of oil</p>
      </div>
    </section>
    
  </div>
</div>



          <div class ="adsContainer">
                <div class ="titleTextAds">Primary Values</div>
                 <div class ="TextAds" id="tAds1">Attachment</div>
                <div class ="TextAds1" id="tAds2">Balanced Interests of Stakeholders</div>
                <div class ="TextAds2"  id="tAds3">Sustainable Development</div>
                <div class ="TextAds3"  id="tAds4">Creativity and Agility</div>
                <div class ="TextAds4"  id="tAds5">Transparency and Accountability</div>
          </div>
          <div class ="boxWhatWeDo">
            <div class ="boxTitleTex">
                <p>ANHAR Company</p>
            </div>    
            <div class ="boxTitleTexBig">
                <p>Introduction of the Major Projects</p>
            </div>
            <div class ="boxTitleTexSmall">
                <p>Gas pressure boosting facilities, oil and gas pipelines, construction and building projects, supply of facilities and equipment and water pipeline projects are the main activities of ANHAR Company.</p>
            </div>
            <div class ="boxbuttonsee">
                <a href="<%=Session("initProject_Button") %>" class="buttonSee"><span class ="arrowBox"><i class ="fa fa-arrow-right"></i></span><span class="<%=SiteStudioStore.AlignClass("copy_Index_exhibit_btn")%>"><%=SiteStudioStore.Copy("copy_Index_exhibit_btn", "More Projects")%></span></a>
            </div>
            <div class ="picBoxMainPage">
                <img alt="<%=Session("title1_FirstPage_PicAbout") %>" title="<%=Session("title1_FirstPage_PicAbout") %>" class="imgClass5" src="<%=Session("url_PicAbout1")%>" style="<%=SiteStudioStore.ImgFitCss("gallery1_image")%><%If Session("Link1_FirstPage_PicAbout") <> "" Then%>;cursor:pointer;<%End If%>" <%If Session("Link1_FirstPage_PicAbout") <> "" Then%>onclick="location.href='<%=Session("Link1_FirstPage_PicAbout") %>'"<%End If%> />
                <img alt="<%=Session("title2_FirstPage_PicAbout") %>" title="<%=Session("title2_FirstPage_PicAbout") %>" class="imgClass5" src="<%=Session("url_PicAbout2")%>" style="<%=SiteStudioStore.ImgFitCss("gallery2_image")%><%If Session("Link2_FirstPage_PicAbout") <> "" Then%>;cursor:pointer;<%End If%>" <%If Session("Link2_FirstPage_PicAbout") <> "" Then%>onclick="location.href='<%=Session("Link2_FirstPage_PicAbout") %>'"<%End If%> />
                <img alt="<%=Session("title3_FirstPage_PicAbout") %>" title="<%=Session("title3_FirstPage_PicAbout") %>" class="imgClass5" src="<%=Session("url_PicAbout3")%>" style="<%=SiteStudioStore.ImgFitCss("gallery3_image")%><%If Session("Link3_FirstPage_PicAbout") <> "" Then%>;cursor:pointer;<%End If%>" <%If Session("Link3_FirstPage_PicAbout") <> "" Then%>onclick="location.href='<%=Session("Link3_FirstPage_PicAbout") %>'"<%End If%> />
                <img alt="<%=Session("title4_FirstPage_PicAbout") %>" title="<%=Session("title4_FirstPage_PicAbout") %>" class="imgClass5" src="<%=Session("url_PicAbout4")%>" style="<%=SiteStudioStore.ImgFitCss("gallery4_image")%><%If Session("Link4_FirstPage_PicAbout") <> "" Then%>;cursor:pointer;<%End If%>" <%If Session("Link4_FirstPage_PicAbout") <> "" Then%>onclick="location.href='<%=Session("Link4_FirstPage_PicAbout") %>'"<%End If%> />
                <img alt="<%=Session("title5_FirstPage_PicAbout") %>" title="<%=Session("title5_FirstPage_PicAbout") %>" class="imgClass5" src="<%=Session("url_PicAbout5")%>" style="<%=SiteStudioStore.ImgFitCss("gallery5_image")%><%If Session("Link5_FirstPage_PicAbout") <> "" Then%>;cursor:pointer;<%End If%>" <%If Session("Link5_FirstPage_PicAbout") <> "" Then%>onclick="location.href='<%=Session("Link5_FirstPage_PicAbout") %>'"<%End If%> />
                <img alt="<%=Session("title6_FirstPage_PicAbout") %>" title="<%=Session("title6_FirstPage_PicAbout") %>" class="imgClass5" src="<%=Session("url_PicAbout6")%>" style="<%=SiteStudioStore.ImgFitCss("gallery6_image")%><%If Session("Link6_FirstPage_PicAbout") <> "" Then%>;cursor:pointer;<%End If%>" <%If Session("Link6_FirstPage_PicAbout") <> "" Then%>onclick="location.href='<%=Session("Link6_FirstPage_PicAbout") %>'"<%End If%> />
                <img alt="<%=Session("title7_FirstPage_PicAbout") %>" title="<%=Session("title7_FirstPage_PicAbout") %>" class="imgClass5" src="<%=Session("url_PicAbout7")%>" style="<%=SiteStudioStore.ImgFitCss("gallery7_image")%><%If Session("Link7_FirstPage_PicAbout") <> "" Then%>;cursor:pointer;<%End If%>" <%If Session("Link7_FirstPage_PicAbout") <> "" Then%>onclick="location.href='<%=Session("Link7_FirstPage_PicAbout") %>'"<%End If%> />
                <img alt="<%=Session("title8_FirstPage_PicAbout") %>" title="<%=Session("title8_FirstPage_PicAbout") %>" class="imgClass5" src="<%=Session("url_PicAbout8")%>" style="<%=SiteStudioStore.ImgFitCss("gallery8_image")%><%If Session("Link8_FirstPage_PicAbout") <> "" Then%>;cursor:pointer;<%End If%>" <%If Session("Link8_FirstPage_PicAbout") <> "" Then%>onclick="location.href='<%=Session("Link8_FirstPage_PicAbout") %>'"<%End If%> />
            </div>
          </div>
          
         <div class="MainPage_Service"    data-type="parallax_section" data-speed="10">
            <div class="textServiceBox">
                <div class ="textService"><span class="<%=SiteStudioStore.AlignClass("copy_Index_exhibit_kicker")%>"><%=SiteStudioStore.Copy("copy_Index_exhibit_kicker", "Presence at International Arena")%></span></div>
                <div class ="bottomBoxService">
                    <div class ="innerBoxBottom">
                        <div class ="box">
                            <p class ="title <%=SiteStudioStore.AlignClass("copy_Index_exhibit_title")%>"><%=SiteStudioStore.Copy("copy_Index_exhibit_title", "Participation in international exhibitions")%></p>
                            <p class ="AmountText <%=SiteStudioStore.AlignClass("copy_Index_exhibit_text")%>"><%=SiteStudioStore.Copy("copy_Index_exhibit_text", "One of the aspects of the excellence of companies active in the field of oil, gas and petrochemicals is the development of scientific and economic relations in the international arena. In this regard, as some of Anhar company’s presences in the international arena, this company has considered attending international exhibitions and establishing representative offices in the countries of the Middle East. Participation in oil and gas and petrochemical exhibitions in Tehran, participation in the exhibition of Iranian production and industrial capabilities in Turkmenistan, participation in the international exhibition of oil, gas and petrochemical and refinery industries in Pakistan (which is one of the crude oil producing countries in the western Asia region) as per the invitation of National Iranian Gas Engineering and Development Company (NIGEC) in 2022.")%></p>
                            <div class ="boxbuttonsee">
                                <a href="InternationalArena.aspx" class="buttonSee"><span class ="arrowBox"><i class ="fa fa-arrow-right"></i></span>More Information </a>
                            </div>
                        </div>
                        <div class ="box">
                            <img src="<%=SiteStudioStore.Asset("home_pic9")%>" <%=SiteStudioStore.ImgFitStyle("home_pic9")%> />
                        </div>
                    </div>
                </div>
            </div>
         </div>   
         
         
         <div class ="NewsFirstPage">
            <div class ="NewsFirstPageContainer">
                  <div class ="titleBarNews">
                    <div class ="smallTitleNews"><span class="<%=SiteStudioStore.AlignClass("copy_Index_news_small")%>"><%=SiteStudioStore.Copy("copy_Index_news_small", "News")%></span></div>
                    <div class ="BigTitleNews"><span class="<%=SiteStudioStore.AlignClass("copy_Index_news_big")%>"><%=SiteStudioStore.Copy("copy_Index_news_big", "Latest news")%></span></div>
                  </div>
                  <section class="center slider">

 <%=Session("initTopNews")%>
    
  </section>
  </div>
  </div>
  
  <div class ="footerMainPage">
    <div class ="footerContainer">
        <div class ="boxFooter">
            <div class ="topBox">
                <img src="<%=Session("footer_logo")%>" />
                <p><%=Session("footer_title")%></p>
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
        
        <div class="copyRight">
        <div class="languageBox"><ul><li><a href="<%=SiteStudioStore.LangHref("fa")%>"><img src="<%=SiteStudioStore.Asset("flag_fa")%>" title="تغییر زبان به فارسی" style="width:40px;" /></a></li><li><a href="<%=SiteStudioStore.LangHref("ar")%>"><img src="<%=SiteStudioStore.Asset("flag_ar")%>" title="تغيير اللغة إلى العربية" style="width:40px;" /></a></li></ul></div>
        <span class="copyRightText <%=SiteStudioStore.AlignClass("footer_copy")%>"><%=SiteStudioStore.FooterCopyHtml()%></span></div>
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
        var objectInterval; 
        var counterSlide = 1;
        var slide1 = document.getElementById("s1")
        var slide2 = document.getElementById("s2")
        var slide3 = document.getElementById("s3")
        var slide4 = document.getElementById("s4")

        var box_text1 = document.getElementById("s11")
        var box_text2 = document.getElementById("s22")
        var box_text3 = document.getElementById("s33")
        var box_text4 = document.getElementById("s44")

        function setCaptionBox(el, show) {
            if (!el) {
                return;
            }
            if (show) {
                el.style.left = "50%";
                el.style.right = "auto";
                el.style.top = "50%";
                el.style.transform = "translate(-50%, -50%)";
            } else {
                el.style.left = "-10000px";
                el.style.transform = "translateY(-50%)";
            }
        }

        window.onload = initSlide;
        
        function clickSlideTop(oname){
            if (objectInterval) {
                window.clearInterval(objectInterval);
            }
            counterSlide = oname;
            showSlideTop();
            if (flgpauseSlide == 0) {
                objectInterval = window.setInterval(showSlideTop, 4000);
            }
        }
        
        function initSlide() {
            if (objectInterval) {
                window.clearInterval(objectInterval);
            }
            slide1 = document.getElementById("s1")
            slide1.style.display = "block";
            slide2 = document.getElementById("s2")
            slide2.style.display = "none";
            slide3 = document.getElementById("s3")
            slide3.style.display = "none";
            slide4 = document.getElementById("s4")
            slide4.style.display = "none";
            
            setCaptionBox(s11, true);
            slide1.style.backgroundSize = "cover";
            counterObjSlide2.style.backgroundColor = "rgba(255,255,255,0.38)";
            counterObjSlide3.style.backgroundColor = "rgba(255,255,255,0.38)";
            counterObjSlide4.style.backgroundColor = "rgba(255,255,255,0.38)";
            counterObjSlide1.style.backgroundColor = "#FFCC0A";
            window.setTimeout(growSlideTopShow0, 500); 
            counterSlide++;
            objectInterval = window.setInterval(showSlideTop, 4000); 
        }
        var flgpauseSlide = 0;

        function pauseSlide() {
            if (flgpauseSlide == 0) {
                window.clearInterval(objectInterval);
                var ad = document.getElementById("pauseSlideContainerObject");
                ad.classList.remove("fa-pause");
                ad.classList.add("fa-play");
                flgpauseSlide = 1;
            }
            else {
                objectInterval = window.setInterval(showSlideTop, 4000);
                var ad = document.getElementById("pauseSlideContainerObject");
                ad.classList.remove("fa-play");
                ad.classList.add("fa-pause");
                flgpauseSlide = 0;
            }

        }
        function showSlideTop() {
            if (counterSlide == 5) {
                counterSlide = 1;
            }
            setCaptionBox(s11, false);
            setCaptionBox(s22, false);
            setCaptionBox(s33, false);
            setCaptionBox(s44, false);
           if (counterSlide==1) {
                   
                    slide1.style.display = "block";
                    slide2.style.display = "none";
                    slide3.style.display = "none";
                    slide4.style.display = "none";
                    setCaptionBox(s11, true);
                    slide1.style.backgroundSize = "cover";
                    
                    counterObjSlide2.style.backgroundColor = "rgba(255,255,255,0.38)";
                    counterObjSlide3.style.backgroundColor = "rgba(255,255,255,0.38)";
                    counterObjSlide4.style.backgroundColor = "rgba(255,255,255,0.38)";
                    counterObjSlide1.style.backgroundColor = "#FFCC0A";
                    window.setTimeout(growSlideTopShow0, 500); 
                    }
              if (counterSlide==2) {
                    slide2.style.backgroundSize = "cover";
                    slide1.style.display = "none";
                    slide2.style.display = "block";
                    slide3.style.display = "none";
                    setCaptionBox(s22, true);
                    counterObjSlide1.style.backgroundColor = "rgba(255,255,255,0.38)";
                    counterObjSlide3.style.backgroundColor = "rgba(255,255,255,0.38)";
                    counterObjSlide4.style.backgroundColor = "rgba(255,255,255,0.38)";
                    counterObjSlide2.style.backgroundColor = "#FFCC0A";
                    window.setTimeout(growSlideTopShow, 500); 
               }
            if (counterSlide==3) {
                    slide3.style.backgroundSize = "cover";
                    slide1.style.display = "none";
                    slide2.style.display = "none";
                    slide3.style.display = "block";
                    slide4.style.display = "none";
                    setCaptionBox(s33, true);
                    counterObjSlide1.style.backgroundColor = "rgba(255,255,255,0.38)";
                    counterObjSlide2.style.backgroundColor = "rgba(255,255,255,0.38)";
                    counterObjSlide4.style.backgroundColor = "rgba(255,255,255,0.38)";
                    counterObjSlide3.style.backgroundColor = "#FFCC0A";
                    window.setTimeout(growSlideTopShow2, 500); 
                    }
                  if (counterSlide==4) {
                    slide4.style.backgroundSize = "cover";
                    slide1.style.display = "none";
                    slide2.style.display = "none";
                    slide3.style.display = "none";
                    slide4.style.display = "block";
                    setCaptionBox(s44, true);
                    counterObjSlide1.style.backgroundColor = "rgba(255,255,255,0.38)";
                    counterObjSlide2.style.backgroundColor = "rgba(255,255,255,0.38)";
                    counterObjSlide3.style.backgroundColor = "rgba(255,255,255,0.38)";
                    counterObjSlide4.style.backgroundColor = "#FFCC0A";
                    window.setTimeout(growSlideTopShow3, 500); 
                    }


            counterSlide=counterSlide+1;

        }

        function growSlideTopShow0() {
            if (hidden_Mobile_version.value != 1) {
                slide1.style.backgroundSize = "cover";
            }
        }
        
        function growSlideTopShow() {

            if (hidden_Mobile_version.value != 1) {
                slide2.style.backgroundSize = "cover";
            }
             
        }

        function growSlideTopShow2() {

            if (hidden_Mobile_version.value != 1) {
                slide3.style.backgroundSize = "cover";
            }

        }

        function growSlideTopShow3() {

            if (hidden_Mobile_version.value != 1) {
                slide4.style.backgroundSize = "cover";
            }

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
    var $animation_elements4 = $('.TextAds');
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

                $element.addClass('TextAdsAction');
            } else {
                $element.removeClass('TextAdsAction');
            }
        });
    }

    var $window = $(window);
    var $animation_elements3 = $('.TextAds1');
    function check_if_in_view3() {
        var window_height = $window.height();
        var window_top_position = $window.scrollTop();
        var window_bottom_position = (window_top_position + window_height);

        $.each($animation_elements3, function() {

            var $element = $(this);
            var element_height = $element.outerHeight();
            var element_top_position = $element.offset().top;
            var element_bottom_position = (element_top_position + element_height);

            //check to see if this current container is within viewport
            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {

                $element.addClass('TextAdsAction1');
            } else {
                $element.removeClass('TextAdsAction1');
            }
        });
    }

    var $window = $(window);
    var $animation_elements2 = $('.TextAds2');
    function check_if_in_view2() {
        var window_height = $window.height();
        var window_top_position = $window.scrollTop();
        var window_bottom_position = (window_top_position + window_height);

        $.each($animation_elements2, function() {

            var $element = $(this);
            var element_height = $element.outerHeight();
            var element_top_position = $element.offset().top;
            var element_bottom_position = (element_top_position + element_height);

            //check to see if this current container is within viewport
            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {

                $element.addClass('TextAdsAction2');
            } else {
                $element.removeClass('TextAdsAction2');
            }
        });
    }

    var $window = $(window);
    var $animation_elements1 = $('.TextAds3');
    function check_if_in_view1() {
        var window_height = $window.height();
        var window_top_position = $window.scrollTop();
        var window_bottom_position = (window_top_position + window_height);

        $.each($animation_elements1, function() {

            var $element = $(this);
            var element_height = $element.outerHeight();
            var element_top_position = $element.offset().top;
            var element_bottom_position = (element_top_position + element_height);

            //check to see if this current container is within viewport
            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {

                $element.addClass('TextAdsAction3');
            } else {
                $element.removeClass('TextAdsAction3');
            }
        });
    }

    var $window = $(window);
    var $animation_elements5 = $('.TextAds4');
    function check_if_in_view5() {
        var window_height = $window.height();
        var window_top_position = $window.scrollTop();
        var window_bottom_position = (window_top_position + window_height);

        $.each($animation_elements5, function() {

            var $element = $(this);
            var element_height = $element.outerHeight();
            var element_top_position = $element.offset().top;
            var element_bottom_position = (element_top_position + element_height);

            //check to see if this current container is within viewport
            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {

                $element.addClass('TextAdsAction4');
            } else {
                $element.removeClass('TextAdsAction4');
            }
        });
    }

    $window.on('scroll resize', check_if_in_view4);
    $window.on('scroll resize', check_if_in_view3);
    $window.on('scroll resize', check_if_in_view2);
    $window.on('scroll resize', check_if_in_view1);
    $window.on('scroll resize', check_if_in_view5);
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
<script src="JS/swiper-bundle.min.js" type="text/javascript"></script>
<script src="JS/news-slider.js?v=newsRtl1" type="text/javascript"></script>


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