<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Law.aspx.vb" Inherits="W_ISM.Law" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="ar" dir="rtl">
<head id="Head1" runat="server">
 <title>قواعد التنظيم شركة أنهار الإنشائية </title>
      <link href="graphic/BodyGraphic.css?v=align1" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <meta runat ="server"  name="description" id="description" content="تأسست شركة أنهار للإنشاءات عام 1353هـ وتقوم بتنفيذ مشاريع EPC ومحطات تعزيز ضغط الغاز وخطوط الأنابيب والمباني والهياكل والمرافق والمعدات لمشاريع النفط والغاز والبتروكيماويات وخطوط أنابيب نقل المياه.">
    <meta runat ="server" name="keywords" id="keywords" content="شركة إنشاءات، أنهار، مقاولات EPC، محطات تعزيز ضغط الغاز، خطوط الأنابيب، مقاولات البناء، تنفيذ مرافق ومعدات مشاريع النفط والغاز والبتروكيماويات، إمداد الغاز، صيانة المصافي، استبدال بطانة الخطوط، تخفيض ضغط الغاز CGS، خطوط نقل المياه الأنابيب، البناء البتروكيماوي، مساعد الصيانة، الهيكل الخرساني، المبنى السكني، الخزان، خزان السد، تصميم الخريطة">
    <meta name="author" content="BSFE.ir">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
   
    <link rel= "stylesheet" type="text/css" href="scrollMainPage/style.css" media="screen"/>
    <script src="scrollMainPage/js/jquery-1.6.1.min.js"></script>
    <script src="scrollMainPage/js/scroll_herbs.js?v=langFix1"></script>
    <link rel="stylesheet" type="text/css" href="slick-1.8.0/slick/slick.css">
  <link rel="stylesheet" type="text/css" href="slick-1.8.0/slick/slick-theme.css">

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
                            <td align ="center"><a style="font-family:Nassim ,Century;font-size:18pt;color:#fff;">&nbsp;</a></td>
                            <td><a onclick="closeshowMobileMenu();" href="#" style="font-family:Nassim ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-times" style="margin-left :15px;" ></i></a></td>
                        </tr>
                    </table>
                </div>            
                <div class ="boxMenuMobile"><a href="#" onclick="showMobileMenu1();" >معلومات عنا<i class='fa fa-angle-left'></i></a></div>
                <div class ="boxMenuMobile"><a href="#" onclick="showMobileMenu2();" >المشاریع <i class='fa fa-angle-left'></i></a></div>
                <div class ="boxMenuMobile"><a href="#" onclick="showMobileMenu3();"  >خدمات <i class='fa fa-angle-left'></i></a></div>
                <div class ="boxMenuMobile"><a href="#" onclick="showMobileMenu4();"  >التواصل معنا <i class='fa fa-angle-left'></i></a></div>
                <div class ="boxMenuMobile"><a href="">أخبار</a></div>
                <div class ="boxMenuMobile"><a href="">معرض</a></div>
        </div>
        
        
        <div class ="backMobileMenu" id="mobileMenu1" style ="display:none;">
             <div class ="topMenuBox">
                    <table style="position:relative  ;top:0px;left:0px;margin :0;padding :0;width :100%;" cellpadding="0" cellspacing ="0" >
                        <colgroup><col width="15%" /><col width="70%" /><col width="15%" /></colgroup>
                        <tr style ="height:76px;">
                            
                            <td><a href="#" onclick="showMainmenuMobilePage();" style="font-family:Nassim ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-arrow-left" style="margin-left :15px;" ></i></a></td>
                            <td align ="center"><a style="font-family:Nassim ,Century;font-size:18pt;color:#fff;">معلومات عنا</a></td>
                            <td><a onclick="closeshowMobileMenu();"  href="#" style="font-family:Nassim ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-times" style="margin-left :15px;" ></i></a></td>
                        </tr>
                    </table>
                </div>            
                <div class ="boxMenuMobile"><a href="MessageCEO.aspx">کلمة رئیس مجلس إدارة الشرکة</a></div>
                <div class ="boxMenuMobile"><a href="History.aspx">التاريخ والسجلات </a></div>
                <div class ="boxMenuMobile"><a href="Pillars.aspx">صلاحیات الشرکة</a></div>
                <div class ="boxMenuMobile"><a href="OrganizationPolicy.aspx">سیاسات الشرکة و HSE</a></div>
                <div class ="boxMenuMobile"><a href="leadership.aspx">تعريف أعضاء مجلس إدارة الشركة </a></div>
                <div class ="boxMenuMobile"><a href="Certificates.aspx">شهادات الصلاحیة  </a></div>
                <div class ="boxMenuMobile"><a href="Acknowledgments.aspx">خطابات الشکر والتقدیر</a></div>
                <div class ="boxMenuMobile"><a href="news.aspx">أخبار</a></div>
                <div class ="boxMenuMobile"><a href="Gallery.aspx">معرض</a></div>
        </div>
        
        <div class ="backMobileMenu" id="mobileMenu2"  style ="display:none;">
             <div class ="topMenuBox">
                    <table style="position:relative  ;top:0px;left:0px;margin :0;padding :0;width :100%;" cellpadding="0" cellspacing ="0" >
                        <colgroup><col width="15%" /><col width="70%" /><col width="15%" /></colgroup>
                        <tr style ="height:76px;">
                            
                            <td><a href="#" onclick="showMainmenuMobilePage();" style="font-family:Nassim ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-arrow-left" style="margin-left :15px;" ></i></a></td>
                            <td align ="center"><a style="font-family:Nassim ,Century;font-size:18pt;color:#fff;">المشاریع</a></td>
                            <td><a onclick="closeshowMobileMenu();"  href="#" style="font-family:Nassim ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-times" style="margin-left :15px;" ></i></a></td>
                        </tr>
                    </table>
                </div>            
                <div class ="boxMenuMobile"><a href="GasBoosterStation.aspx">محطات تعزیز ضغط الغاز </a></div>
                <div class ="boxMenuMobile"><a href="pipelines.aspx">شبکة خطوط أنابیب النفط والغاز </a></div>
                <div class ="boxMenuMobile"><a href="building.aspx" >البناء والإعمار   </a></div>
                <div class ="boxMenuMobile"><a href="FacilitiesEquipment.aspx" >الأجهزة والمنشآت</a></div>
                <div class ="boxMenuMobile"><a href="WateTransmissionPipelines.aspx" >شبکة خطوط نقل المیاه </a></div>
                <div class ="boxMenuMobile"><a href="news.aspx">أخبار</a></div>
                <div class ="boxMenuMobile"><a href="Gallery.aspx">معرض</a></div>
        </div>
        
        <div class ="backMobileMenu" id="mobileMenu3"  style ="display:none;">
             <div class ="topMenuBox">
                    <table style="position:relative  ;top:0px;left:0px;margin :0;padding :0;width :100%;" cellpadding="0" cellspacing ="0" >
                        <colgroup><col width="15%" /><col width="70%" /><col width="15%" /></colgroup>
                        <tr style ="height:76px;">
                            
                            <td><a href="#" onclick="showMainmenuMobilePage();" style="font-family:Nassim ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-arrow-left" style="margin-left :15px;" ></i></a></td>
                            <td align ="center"><a style="font-family:Nassim ,Century;font-size:18pt;color:#fff;">خدمات</a></td>
                            <td><a onclick="closeshowMobileMenu();"  href="#" style="font-family:Nassim ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-times" style="margin-left :15px;" ></i></a></td>
                        </tr>
                    </table>
                </div>            
                <div class ="boxMenuMobile"><a href="DesignServices.aspx">تصميم</a></div>
                <div class ="boxMenuMobile"><a href="BuyServices.aspx">التوريد </a></div>
                <div class ="boxMenuMobile"><a href="OperationsServices.aspx">تنفيذ </a></div>
                <div class ="boxMenuMobile"><a href="news.aspx">أخبار</a></div>
                <div class ="boxMenuMobile"><a href="Gallery.aspx">معرض</a></div>
        </div>
        
        
        <div class ="backMobileMenu" id="mobileMenu4"  style ="display:none;">
             <div class ="topMenuBox">
                    <table style="position:relative  ;top:0px;left:0px;margin :0;padding :0;width :100%;" cellpadding="0" cellspacing ="0" >
                        <colgroup><col width="15%" /><col width="70%" /><col width="15%" /></colgroup>
                        <tr style ="height:76px;">
                            
                            <td><a href="#" onclick="showMainmenuMobilePage();" style="font-family:Nassim ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-arrow-left" style="margin-left :15px;" ></i></a></td>
                            <td align ="center"><a style="font-family:Nassim ,Century;font-size:18pt;color:#fff;">التواصل معنا</a></td>
                            <td><a onclick="closeshowMobileMenu();"  href="#" style="font-family:Nassim ,Century;font-size:18pt;color:#fff;"><i class ="fa fa-times" style="margin-left :15px;" ></i></a></td>
                        </tr>
                    </table>
                </div>            
                <div class ="boxMenuMobile"><a href="ContactUs.aspx"   >التواصل معنا</a></div>
                <div class ="boxMenuMobile"><a href="news.aspx">أخبار</a></div>
                <div class ="boxMenuMobile"><a href="Gallery.aspx">معرض</a></div>
        </div>

           <div class ="mainScreenLayer">    
            
            <div class ="MessageCEO_SlideContainer" style="<%=SiteStudioStore.BgStyle("hero_Law")%>">
                <div class ="MessageCEO_Masked"></div>    
                                
            </div>
            
            
            
            <div class ="topContainer">
                <div class="topBarContainer">
                    <div class="searchBoxContainer">
                        <ul>
                            <li><i class="fa fa-search searchMenuTop" ></i></li>
                            <li id="careers"><a href="index.aspx">الصفحة الرئيسية</a></li>
                            <li id="careers"><a href="Gallery.aspx">معرض</a></li>
                            <li id="careers"><a href="news.aspx">أخبار</a></li>
                            <li id="top_Lang"><a href="<%=SiteStudioStore.LangHref("en")%>"><img src="images/britishFlag.jpg" title="Change language to English" style="width:40px;" /></a>&nbsp;&nbsp;<a href="<%=SiteStudioStore.LangHref("fa")%>"><img src="<%=SiteStudioStore.Asset("flag_fa")%>" title="تغییر زبان به فارسی" style="width:40px;" /></a></li>
                        </ul>
                    </div>
                    <div class ="logoContainer">
                        <img alt="Anhar Company" title="شركة أنهار الإنشائية " src="<%=SiteStudioStore.Asset("logo")%>" style="cursor :pointer ;" onclick ="location.href='index.aspx'"  />
                    </div>
                    
                    <div class ="mobileTopButton">
                        <a><i class ="fa fa-bars"></i></a>
                    </div>
                    
                    <div id='cssmenu'>
                         <ul>
                            <li><a onmouseover ="showBoxBackMenu();">معلومات عنا</a>
                                <ul id="obj-m-1">
                                    <li style="height:96px;"></li>
                                    <li><a href="MessageCEO.aspx">کلمة رئیس مجلس إدارة الشرکة</a></li>
                                    <li><a href="History.aspx">التاريخ والسجلات</a></li>
                                    <li><a href="Pillars.aspx">صلاحیات الشرکة</a></li>
                                    <li><a href="OrganizationPolicy.aspx">سیاسات الشرکة و HSE</a></li>
                                    <li><a href="leadership.aspx">تعريف أعضاء مجلس إدارة الشركة</a></li>
                                    <li><a href="Certificates.aspx">شهادات الصلاحیة </a></li>
                                    <li><a href="Acknowledgments.aspx">خطابات الشکر والتقدیر</a></li>
                                </ul>
                            </li>
                            <li><a onmouseover ="showBoxBackMenu();">المشاریع</a>
                                <ul  id="obj-m-2">
                                    <li style="height:96px;"></li>
                                    <li><a href="GasBoosterStation.aspx">محطات تعزیز ضغط الغاز </a></li>
                                    <li><a href="pipelines.aspx">شبکة خطوط أنابیب النفط والغاز</a></li>
                                    <li><a href="building.aspx">البناء والإعمار  </a></li>
                                    <li><a href="FacilitiesEquipment.aspx">الأجهزة والمنشآت</a></li>
                                    <li><a href="WateTransmissionPipelines.aspx">شبکة خطوط نقل المیاه </a></li>
                                </ul>
                            </li>
                            <li><a onmouseover ="showBoxBackMenu();">خدمات</a>
                                <ul id="obj-m-3">
                                    <li style="height:96px;"></li>
                                    <li><a href="DesignServices.aspx">تصميم</a></li>
                                    <li><a href="BuyServices.aspx">التوريد</a></li>
                                    <li><a href="OperationsServices.aspx">تنفيذ</a></li>
                                </ul>
                            </li>
                            
                             <li><a onmouseover ="showBoxBackMenu();">التواصل معنا</a>
                                <ul  id="obj-m-4">
                                    <li style="height:96px;"></li>
                                    <li><a href="ContactUs.aspx">التواصل معنا</a></li>
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
                            <p>بحث</p>
                        </div>
                        <asp:TextBox class ="inputSearch" ID="txt_Search" runat ="server" placeholder="كيف يمكننا مساعدتك؟"></asp:TextBox>
                       
                            <a runat ="server" id="btn_Search">
                            <i class ="fa fa-arrow-left"></i>
                            </a>
                        
                    </div>
                </div>
            </div>
            <div class ="MessageCEO_HeaderTextContainer"><h1 class="<%=SiteStudioStore.AlignClass("copy_Law_h1")%>"><%=SiteStudioStore.Copy("copy_Law_h1", "قواعد التنظيم")%></h1> </div>
            <div class ="MessageCEO_topTextContainer">
            
                <p style ="text-align :right;"><span class="<%=SiteStudioStore.AlignClass("copy_Law_p1")%>"><%=SiteStudioStore.Copy("copy_Law_p1", "")%></span></p>
                
  
  <div class ="footerMainPage">
    <div class ="footerContainer">
        <div class ="boxFooter">
            <div class ="topBox">
                <img src="<%=SiteStudioStore.Asset("footer_logo")%>" />
                <p class="<%=SiteStudioStore.AlignClass("footer_title")%>"><%=SiteStudioStore.FooterTitle()%></p>
            </div>
            <div class ="bottomBox">
                <p class="<%=SiteStudioStore.AlignClass("footer_about")%>"><%=SiteStudioStore.FooterAboutHtml()%></p>
                <p><%=SiteStudioStore.SocialHtml()%></p>
            </div>
          
        </div>
        <div class ="boxFooterMenu">
            <ul style="margin-bottom :15px;"><li><a style="font-weight:600;">روابط الموقع</a></li></ul>
            <ul><li><a href="Employers.aspx">أصحاب العمل</a></li></ul>
            <ul><li><a href="FielsDownload.aspx">تنزيل المستندات</a></li></ul>
            <ul><li><a href="Links.aspx">روابط ذات صلة</a></li></ul>
            <ul><li><a href="Gallery.aspx">معرض</a></li></ul>
            <ul><li><a href="Privacy.aspx">خصوصية</a></li></ul>
            <ul><li><a href="law.aspx">قواعد التنظيم</a></li></ul>
            <%--<ul><li><a href="#">نقشه سایت</a></li></ul>--%>
            <ul><li><a href="#"></a></li></ul>
            
            
             <ul style="margin-bottom :15px;"><li><a style="font-weight:600;">معلومات عنا</a></li></ul>
             <ul><li><a href="MessageCEO.aspx">کلمة رئیس مجلس إدارة الشرکة</a></li></ul>
            <ul><li><a href="History.aspx">التاريخ والسجلات</a></li></ul>
            <ul><li><a href="Pillars.aspx">صلاحیات الشرکة</a></li></ul>
            <ul><li><a href="OrganizationPolicy.aspx">سیاسات الشرکة</a></li></ul>
            <ul><li><a href="leadership.aspx">أعضاء مجلس إدارة الشرکة</a></li></ul>
            <ul><li><a href="Certificates.aspx">شهادات الصلاحیة </a></li></ul>
            <ul><li><a href="Acknowledgments.aspx">خطابات الشکر والتقدیر</a></li></ul>
            <ul><li><a href="#"></a></li></ul>
        </div>
        
        
        <div class ="boxFooterMenu">
            <ul style="margin-bottom :15px;"><li><a style="font-weight:600;">المشاریع</a></li></ul>
            <ul><li><a href="GasBoosterStation.aspx">محطات تعزیز ضغط الغاز </a></li></ul>
            <ul><li><a href="pipelines.aspx">شبکة خطوط أنابیب النفط والغاز</a></li></ul>
            <ul><li><a href="building.aspx">البناء والإعمار  </a></li></ul><ul><li><a href="FacilitiesEquipment.aspx">الأجهزة والمنشآت</a></li></ul><ul><li><a href="WateTransmissionPipelines.aspx">شبکة خطوط نقل المیاه </a></li></ul>
            <ul><li><a href="#"></a></li></ul>
            
            
             <ul style="margin-bottom :15px;"><li><a style="font-weight:600;">خدمات</a></li></ul>
             <ul><li><a href="DesignServices.aspx">تصميم</a></li></ul>
            <ul><li><a href="BuyServices.aspx">التوريد</a></li></ul>
            <ul><li><a href="OperationsServices.aspx">تنفيذ</a></li></ul>
            <ul><li><a href="#"></a></li></ul>
            
            <ul style="margin-bottom :15px;"><li><a style="font-weight:600;">التواصل معنا</a></li></ul>
            <ul><li><a href="ContactUs.aspx">التواصل معنا</a></li></ul>
        </div>
        <div class ="copyRight" style="direction:ltr;text-align :center ;">
        <div class ="languageBox"><ul><li><a href="<%=SiteStudioStore.LangHref("en")%>"><img src="images/britishFlag.jpg" title="Change language to English" style="width:40px;" /></a></li><li><a href="<%=SiteStudioStore.LangHref("fa")%>"><img src="<%=SiteStudioStore.Asset("flag_fa")%>" title="تغییر زبان به فارسی" style="width:40px;" /></a></li></ul></div>
        © 2026 Anhar Corporation. All rights reserved.</div>
        </div>
    </div>
    
    
  </div>
  
</div>
    
        
       
     <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>

        <a class="scrollToTop" id="topObject" title="به سمت بالا"></a>
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


    var $animation_elements1 = $('.TextAds');
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
                $element.addClass('TextAdsAction');
            } else {
            $element.removeClass('TextAdsAction');
            }
        });
    }

    var $window = $(window);
    var $animation_elements2 = $('.TextAds1');
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
                $element.addClass('TextAdsAction1');
            } else {
            $element.removeClass('TextAdsAction1');
            }
        });
    }

    var $window = $(window);
    var $animation_elements3 = $('.TextAds2');
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
                $element.addClass('TextAdsAction2');
            } else {
            $element.removeClass('TextAdsAction2');
            }
        });
    }


    var $window = $(window);
    var $animation_elements4 = $('.Box_Footer');
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
                $element.addClass('in-view3');
            } else {

            }
        });
    }
    function fixelTopMenu() {
        var navHeight = 30;
        if ($(window).scrollTop() > navHeight) {
            if ($(window).width() > 785) {
                $('#myHeaderMenu').addClass('fixed-menu');
            }

        }
        else {
            if ($(window).width() > 785) {
                $('#myHeaderMenu').removeClass('fixed-menu');
            }

        }
    }




    $window.on('scroll resize', check_if_in_view1);
    $window.on('scroll resize', check_if_in_view2);
    $window.on('scroll resize', check_if_in_view3);
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