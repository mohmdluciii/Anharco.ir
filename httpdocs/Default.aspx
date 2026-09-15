<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="W_ISM._Default3" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title></title>
    <link href="graphic/Main.css" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <meta runat ="server"  name="description" id="description" content="Anhar Construction Company was established in 1353 and implements EPC projects, gas pressure boosting stations, pipelines, buildings and structures, facilities and equipment for oil, gas, petrochemical projects and water transmission pipelines.">
    <meta runat ="server" name="keywords" id="keywords" content="Construction company, Anhar, EPC contracting, gas pressure boosting stations, pipelines, construction contracting, implementation of facilities and equipment for oil, gas, petrochemical projects, gas supply, refinery maintenance, replacement of line lining, CGS gas pressure reduction, lines Water transfer pipe, petrochemical construction, maintenance assistant, concrete skeleton, residential building, reservoir, dam reservoir, map design">
    <meta name="author" content="BSFE.ir">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script type="text/javascript" src="jquery.js"></script>
    <link href="StyleSheet/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="JS/code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="MenuFinal/styles.css">
    <script src="js/jquery-latest.min.js" type="text/javascript"></script>
    <script src="MenuFinal/script.js"></script>
    <link href="SlideNew/sliderResponsive.css" rel="stylesheet" type="text/css">
    <link href="LightBox_Simple/src/jquery.littlelightbox.css" rel="stylesheet" type="text/css">
  <script type ="text/javascript" src="MyScript/TopMenuFixed.js"></script>
    <style>

#slider2 {
    max-width: 30%;
    margin-right: 20px;
}

.row2Wrap {
    display: flex;
}

.content {
    padding: 50px;
    margin-bottom: 100px;
}



.content {
    padding: 10px 15vw;
}
</style> 
<link rel="stylesheet" type="text/css" href="slick/slick.css">
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css">
<link rel="stylesheet" type="text/css" href="CircleHoverEffects_Box/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="CircleHoverEffects_Box/css/common.css" />
        <link rel="stylesheet" type="text/css" href="CircleHoverEffects_Box/css/style5.css" />
		<script type="text/javascript" src="CircleHoverEffects_Box/js/modernizr.custom.79639.js"></script> 
</head>
<body>
    <form id="form1" runat="server">
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"><Services><asp:ServiceReference Path ="AutoCompletar.asmx" /></Services></asp:ToolkitScriptManager>
     <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtSearch" ServiceMethod="Buscar" ServicePath="AutoCompletar.asmx" MinimumPrefixLength="2" CompletionInterval="1000" EnableCaching="true" CompletionSetCount="12"   CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"></asp:AutoCompleteExtender>  
        <div class ="mainPageScreen">
           
        <div class ="topWhiteBar">
            <div class ="topWhiteBar_Container">
                <ul class ="main_ul">
                
                    
                    <li class ="main_li">
                        
                    </li>
                    <li class ="main_li"><a href="PanelPerson_LogIn.aspx"><i class ="fa fa-sign-in" ></i>ویژه همکاران</a>
                        
                    </li>
                    <li class ="main_li" ><a href="#" id="SearchMenu"><i class ="fa fa-search"></i>جستجو</a>
                        <ul class="topWhiteBar_DropDown_Search" id="searchBox">
                            <li ><a style="width:200px;margin :0;padding :0;display:inline-block;font-size :9pt;font-family:yekan,arial;"><asp:TextBox ID="txtSearch" Font-Names="yekan" AutoComplete="off" runat ="server" Width="180" ></asp:TextBox></a> </li>
                            
                            <li style="padding-left:10px;text-align:left;"><asp:Button runat ="server" ID="btnSearch"  Text ="جستجو " /></li> 
                        </ul>
                    </li>
                </ul>
            
            </div>
            
        </div>
         <div class ="topBar" id="test">
            <div class ="topBar_Container">
                <div class="logoBox" onclick="location.href='Default.aspx'">
                    <asp:Image ID="name_Logo" runat ="server"  />
                </div>
                <div class="menuPhoneBox">
                    <div class ="phoneBox">
                        
                    </div>
                    <div class ="menuBox">
                      <div id='cssmenu'>
                            <%=Session("create_Top_Menu")%>
                        </div>
                    
                    </div>
                </div>
                
            </div>
        </div>
        
       
        
            <div class ="bannerContainer" >     
                <div class="slider_amir" id="slider1">
                    <%=Session("fetch_Top_SlideBanner1")%>
                        <i class="left" class="arrows" style="z-index:2; position:absolute;"><svg viewBox="0 0 100 100"><path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z"></path></svg></i>
                        <i class="right" class="arrows" style="z-index:2; position:absolute;"><svg viewBox="0 0 100 100"><path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z" transform="translate(100, 100) rotate(180) "></path></svg></i>   
                </div>
            </div>
            <%If Session("check_Is_Marquee") = 1 Then%>
            <div class="marqueeBox">
                <marquee behavior ="scroll"   hidefocus truespeed direction="right" scrollamount="4" scrolldelay ="100" onmouseover="this.stop()" onmouseout="this.start()" ><%=Session("hadis")%></marquee>
            </div>
            <%End If%>
            <div class ="khadamatMainpage">
                <div class ="khadamatContainer">
                    <section class="main" >
				<ul class="ch-grid">
					<%=Session("init_Khadamat_Icon") %>
				</ul>
			</section>
                </div>
            </div>
            
           
       
            <div class ="news_MainPage"  data-type="parallax_section" data-speed="10">
                <div class ="news_Container">
                    <div class="titleBox">اخبار و رویدادها</div>
                    <section class="center slider sectionPart"  data-sizes="50vw">
                        <%=Session("fetch_News")%>
                    </section> 
                </div>
            </div>
        
            <div class ="History_Box">
                <div class ="History_Container">
                    <div class ="right_LogoBox">
                        <div class ="innerBox" style="background-image :url(pic_FirstPage/<%=session("pic_FirstPage")%>"></div>
                    </div>
                    <div class ="left_LogoBox">
                        <div class ="innerBox">
                            <div class ="titleBox">تاریخچه</div>
                            <div class ="ContentBox"><%=Session("Text_FirstPage") %></div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class ="abountBox_Mainpage">
                <div class ="abountBox_Container">
                    <div class ="box">
                        <div class ="rightBox">
                            <div class ="innerBox">
                                <div class ="contentRightBox">
                                    <div class ="titleBox"><%=session("titleBox1_FirstPage") %></div>
                                    <div class ="ContentBox"><%=session("des1_FirstPage") %></div>
                                </div>
                                <div class ="contentLeftBox" style ="background-image :url(Logo1_FirstPage/<%=session("Logo1_FirstPage")%>);background-repeat :no-repeat ;background-position :center center ;background-size:100% 100%;"></div>
                            </div>
                        </div>
                        <div class ="rightBox">
                            <div class ="innerBox">
                                <div class ="contentRightBox">
                                    <div class ="titleBox"><%=session("titleBox2_FirstPage") %></div>
                                    <div class ="ContentBox"><%=session("des2_FirstPage") %></div>
                                </div>
                                <div class ="contentLeftBox" style ="background-image :url(Logo2_FirstPage/<%=session("Logo2_FirstPage")%>);background-repeat :no-repeat ;background-position :center center ;background-size:100% 100%; "></div>
                            </div>
                        </div>
                       
                     
                    </div>
                    <div class ="box">
                        <div class ="leftBox">
                            <div class ="innerBox">
                                <div class ="contentRightBox">
                                    <div class ="titleBox"><%=session("titleBox3_FirstPage") %></div>
                                    <div class ="ContentBox"><%=session("des3_FirstPage") %></div>
                                </div>
                                <div class ="contentLeftBox" style ="background-image :url(Logo3_FirstPage/<%=session("Logo3_FirstPage")%>);background-repeat :no-repeat ;background-position :center center ;background-size:100% 100%;"></div>
                            </div>
                        </div>
                        <div class ="leftBox">
                             <div class ="innerBox">
                                <div class ="contentRightBox">
                                    <div class ="titleBox"><%=session("titleBox4_FirstPage") %></div>
                                    <div class ="ContentBox"><%=session("des4_FirstPage") %></div>
                                </div>
                                <div class ="contentLeftBox" style ="background-image :url(Logo4_FirstPage/<%=session("Logo4_FirstPage")%>);background-repeat :no-repeat ;background-position :center center ;background-size:100% 100%;"></div>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
           <div class ="news_MainPage"  data-type="parallax_section" data-speed="10" style ="background :#F8FAFC;">
                <div class ="news_Container">
                    <div class="titleBox">اطلاعیه ها</div>
                    <section class="center slider sectionPart"  data-sizes="50vw">
                        <%= Session("fetch_Information")%>
                    </section> 
                </div>
            </div>
        <div class ="loginBox_hrhs">
                <div class="container" style="background-image :url(images/backLoginBox.png);background-repeat :no-repeat ;background-position: left center ;" >
                    <div class ="innerBox" >
                        <div class ="contentBox">
                            <div class ="textBox"><div class ="caption">شناسه کاربری</div><asp:TextBox ID="txtUID" runat ="server" class="styleText" AutoComplete="off"></asp:TextBox></div>
                            <div class ="textBox"><div class ="caption">کلمه عبوری</div><asp:TextBox ID="txtPWD" TextMode="Password"  runat ="server" class="styleText"  AutoComplete="off"></asp:TextBox></div>
                            <div class ="buttonBox"><asp:Button ID="btnInput_toPanel" runat ="server" Text ="ورود به پنل" class="button" /></div> 
                        </div>
                    </div>
                </div>
            </div>
            
       <div class ="counter_hrhs_Mainpage">
                <div class ="container">
                    <div class ="boxAmar">
                        <div class ="headerAmar"><asp:Label ID="lbl_numberNews" runat ="server"  ></asp:Label>&nbsp; + </div>
                        <div class ="BodyAmar">تعداد اخبار</div>
                    </div>
                    <div class ="boxAmar">
                        <div class ="headerAmar"><asp:Label ID="lbl_numberPerson" runat ="server"  ></asp:Label>&nbsp; + </div>
                        <div class ="BodyAmar">تعداد پرسنل</div>
                    </div>
                    <div class ="boxAmar">
                        <div class ="headerAmar"><asp:Label ID="lbl_NumberCostCenter" runat ="server"  ></asp:Label>&nbsp; + </div>
                        <div class ="BodyAmar">تعداد مناطق</div>
                    </div>
                    <div class ="boxAmar">
                        <div class ="headerAmar"><asp:Label ID="lbl_numberCertificate" runat ="server"  ></asp:Label>&nbsp; + </div>
                        <div class ="BodyAmar">تعداد گواهینامه ها</div>
                    </div>
                    
                </div>
            </div>
       <div class ="Gallery_MainPage" data-type="parallax_section" data-speed="10">
            <div class ="topBox">
                <div class ="Gallery_Container">
                    <%=Session("init_SexBox") %>
                </div> 
            </div>
            
            <div class ="bottomBox">
                <div class ="Gallery_Container">
                    <%=Session("init_SexBox1")%>
                </div> 
            </div>
            
       </div>
       
 <%--     <div class ="Law_MainPage" data-type="parallax_section" data-speed="10">
            <div class ="Law_Continer">
                <div class ="titleBox">قوانین و مقررات</div>
                <%=Session("fetch_LawMainPage")%>
               
            </div>
       </div>--%>
       
<%--      <div class ="certificates_MainPage" data-type="parallax_section" data-speed="10">
            <div class ="certificates_Container">
                <div class ="titleBox">گواهی نامه ها</div>
                <section class="center1 slider sectionPart"  data-sizes="50vw">
                    <%=Session("fetch_Certificate")%>
                </section> 
            </div> 
       </div>--%>
       
<%--      <div class ="Marakez_MainPage" data-type="parallax_section" data-speed="10">
            <div class ="Marakez_Container">
                
                    <section class="regular slider sectionPart"  data-sizes="50vw">
                    
                    <%=Session("fetch_MarakezRefahi")%>
                     
                    </section> 
                
            </div>
       </div>--%>
        <div class ="MenuScroll_MainPage">
                <div class ="MenuScroll_Container">
                   <section class="center_new slider sectionPart"  data-sizes="50vw">
               
                        <%=Session("fetch_Banner")%>
                  
                    </section> 
                </div>
            </div>
       <div class ="Contact_MainPage"  data-type="parallax_section" data-speed="10">
            <div class ="Contact_Container">
                <div class ="whiteBox"></div>
                <div class ="rightBox">
                    <div class ="titleBox">تماس با ما</div>
                    <div class ="ContentBox"><%=Session("fetch_Address")%><br />
                        <%If Session("postCode_Address") <> "" Then%>
                        کد پستی : <%=Session("postCode_Address")%>
                        <%End If%>
                    </div>
                    <div class ="ContentBox1">
                        تلفن : <%=session("phone_address") %> <br />فکس : <%=Session("fax_address")%>  <br />
                        <%=Session("initSocialNetworks2") %>
                    </div>
                   
                    <div class ="FrameBox">
                        <iframe src="https://www.google.com/maps/d/embed?mid=13iczZLxFCkg0XO2ok8i4sZNU9Lt6POhX&z=14" frameborder ="0" scrolling ="no" ></iframe>
                    </div> 
                </div>
                
                <div class ="leftBox">
                    <div class ="titleBox">تماس با مدیریت</div>
                    <iframe src="ContactForm.aspx" frameborder ="0" scrolling ="yes" style="height:600px;"></iframe>
                </div>
            </div>
       </div>
       
       
       <div class ="footer_mainPage">
            <div class ="footer_Container">
                <div class ="whiteBox"></div>
                <div class ="rightBox" style="background-image :url(<%= Session("fetch_Logo_footer")%>)"></div>
                <div class ="leftBox">
                    <%=Session("init_Footer")%>
                </div>
                  <p>
                    <%=Session("initSocialNetworks")%>
                  </p> 
                  <p style="position:relative;float:none;margin-left :auto ;margin-right :auto ; font-size:8pt;font-family:Yekan,arial;direction:rtl;color:#fff;max-width:500px;">
                    <%=Session("fetch_Address")%>
                  </p>                 
            </div>
            <div class ="footer_Container_Copy"><%=Session("fetch_copyRight") %>
            <br />
            
            <%If Session("check_Is_Amar") = 1 Then%>
            <asp:Label ID="lblAmar" runat ="server"  ></asp:Label>
            <%End If%>

            </div>
       </div>
   
        <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
        <script type="text/javascript">
            if ($(window).width() > 785) {
                $('#test').scrollToFixed();
            }
        </script>
        <a class="scrollToTop" id="topObject" title="Top"></a>
        
        
        <div class ="socialBox">
            <ul>
               <%=Session("initSocialNetworks1")%>
            </ul>
        </div>
        <%--<input onclick="window.open('http://admin.hrhs.ir','_blank')" type="button" onmouseover="this.style.backgroundColor='#95B3BD'" onmouseout="this.style.backgroundColor='#6498FE'" style="position:fixed;bottom:10px;left:5px;float:left ;width:150px;min-height:35px;background :#6498FE;border-style:solid;border-width:0;font-family:Yekan,arial;font-size :10pt;color:#fff;cursor:pointer ;" value="نسخه قدیمی" />--%>
        <%If Session("fetch_news_fori") <> "" Then%>
        <div class="NewsFori" id="objFori">
            <a onclick="objFori.style.display='none';" style="position:absolute;top:5px;left:5px;"><i class ="fa fa-times" style="font-size:10pt;color:#fff;cursor:pointer ;" title ="بستن"></i></a>
            <section class="regular slider"  data-sizes="50vw" style="width:88%;position:relative ;float:none;margin-left :auto ;margin-right:auto ;height:100%;display:block;padding-left :5px;padding-right :5px;">
            
                <%=Session("fetch_news_fori")%>
                
            </section>
        </div>
        <%End If%>
    </form>
</body>
</html>
<script type ="text/javascript" src="MyScript/TopMenuBar.js"></script>
<script type="text/javascript" src="jquery.js"></script>
	<script type ="text/javascript" src="MyScript/ScrollToView.js"></script>
<script type="text/javascript" >
    var flg1 = 0;
    var flg2 = 0;
    var flg3 = 0;
    var flg4 = 0;
    var activeMember = 0;
    var amount_max_activeMember = 0;

    var Marketer = 0;
    var amount_Marketer = 0;

    var NumberPackage = 0;
    var amount_NumberPackage = 0;

    var NumberClick = 0;
    var amount_NumberClick = 0;
    var max_activeMember = document.getElementById("lbl_numberNews");
    amount_max_activeMember = max_activeMember.innerText;

    var max_Marketer = document.getElementById("lbl_numberPerson");
    amount_max_Marketer = max_Marketer.innerText;

    var max_NumberPackage = document.getElementById("lbl_NumberCostCenter");
    amount_max_NumberPackage = max_NumberPackage.innerText;

    var max_NumberClick = document.getElementById("lbl_numberCertificate");
    amount_max_NumberClick = max_NumberClick.innerText;

    var max_activeMember = document.getElementById("lbl_numberNews");

    var max_Marketer = document.getElementById("lbl_numberPerson");

    var max_NumberPackage = document.getElementById("lbl_NumberCostCenter");

    var max_NumberClick = document.getElementById("lbl_numberCertificate");

    var c;

    function initTimer_fn() {
        c = setInterval(fn_Start, 1);
    }


    function fn_Start() {

        if (activeMember <= amount_max_activeMember) {
            max_activeMember.innerHTML = activeMember;
            activeMember = activeMember + 5;
        }
        else {
            flg1 = 1;
        }

        if (Marketer <= amount_max_Marketer) {
            max_Marketer.innerHTML = Marketer;
            Marketer = Marketer + 5;
        }
        else {
            flg2 = 1;
        }

        if (NumberPackage <= amount_max_NumberPackage) {
            max_NumberPackage.innerHTML = NumberPackage;
            NumberPackage = NumberPackage + 5;
        }
        else {
            flg3 = 1;
        }

        if (NumberClick <= amount_max_NumberClick) {
            max_NumberClick.innerHTML = NumberClick;
            NumberClick = NumberClick + 5;
        }
        else {
            flg4 = 1;
        }



        if ((flg1 == 1) && (flg2 == 1) && (flg3 == 1) && (flg4 == 1)) {
            clearInterval(c);
        }



    }
</script>

<script src="js/2.1.0/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        $('div[data-type="parallax_section"]').each(function() {
            var $bgobj = $(this); // Variable para asignacion de objeto
            $(window).scroll(function() {
                $window = $(window);
                var yPos = -($window.scrollTop() / $bgobj.data('speed'));
                // cordinadas del background
                var coords = '10% ' + yPos + 'px';
                // moviendo el background
                $bgobj.css({ backgroundPosition: coords });
            });
        });
    });

</script>
<script src="LightBox_Simple/src/jquery.littlelightbox.js"></script>
<script>
    $('.lightbox').littleLightBox();
</script>


<script src="js/2.1.0/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        $('div[data-type="parallax_section"]').each(function() {
            var $bgobj = $(this); // Variable para asignacion de objeto
            $(window).scroll(function() {
                $window = $(window);
                var yPos = -($window.scrollTop() / $bgobj.data('speed'));
                // cordinadas del background
                var coords = '10% ' + yPos + 'px';
                // moviendo el background
                $bgobj.css({ backgroundPosition: coords });
            });
        });
    });

</script>



<script src="JS/code.jquery.com/jquery-1.12.4.min.js"></script>
 <script src="JS/code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
  <script src="slick/slick.js" type="text/javascript" charset="utf-8"></script>
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
        slidesToShow: 1,
        slidesToScroll: 1
      });
      
    
      
      if ($(window).width()<=785)
      {
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
      }
      else if ($(window).width()<=1050)
      {
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
      }
      else{
      
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
      }
      
      
      if ($(window).width()<470)
      {
      $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
      }
      else if ($(window).width()<785)
      {
       $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 1,
        slidesToScroll: 2
      });
      }
      
      
      else if ($(window).width()<1279)
      {
       $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 3,
        slidesToScroll: 2
      });
      }
      
      
     
      else{
       $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 3,
        slidesToScroll: 2
      });
      }
      
      
       if ($(window).width()<470)
      {
      $(".center_new").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
      }
      else if ($(window).width()<785)
      {
       $(".center_new").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 2,
        slidesToScroll: 1
      });
      }
      
      
      else if ($(window).width()<1279)
      {
       $(".center_new").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 4,
        slidesToScroll: 1
      });
      }
      
      
     
      else{
       $(".center_new").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 4,
        slidesToScroll: 1
      });
      }
      
      
       if ($(window).width()<470)
      {

      $(".center1").slick({
        dots: true,
        infinite: true,
        centerMode: true,
       slidesToShow: 1,
        slidesToScroll: 1
      });
      }
      else if ($(window).width()<785)
      {
       $(".center1").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 1,
        slidesToScroll: 2
      });
      }
     
      else{
       $(".center1").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 3,
        slidesToScroll: 2
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
<script type="text/javascript" src="Scroll.js"></script>
<script src="SlideNew/sliderResponsive.js"></script>
<script>
    $(document).ready(function() {

        $("#slider1").sliderResponsive({
        // Using default everything
         slidePause: 12000,
         fadeSpeed: 0,
        autoPlay: "on",
         //showArrows: "off", 
        hideDots: "on", 
        hoverZoom: "on", 
         titleBarTop: "off"
    });

    $("#slider2").sliderResponsive({
        fadeSpeed: 0,
        autoPlay: "off",
        showArrows: "on",
        hideDots: "on"
    });

    $("#slider3").sliderResponsive({
        hoverZoom: "off",
        hideDots: "off"
    });

}); 
</script>

<%=Session("animateScript") %>



