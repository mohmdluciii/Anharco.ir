<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Customers.aspx.vb" Inherits="W_ISM.Customers" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>مشتریان - باشگاه مشتریان </title>
   
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Spad.com">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="graphic/new.css" rel="Stylesheet"  />
    <link href="graphic/Graphic.css" rel="Stylesheet"  />
    
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
   
    
	<link rel="stylesheet" type="text/css" href="slick/slick.css">
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css">
    
    <link href="SlideNew/sliderResponsive.css" rel="stylesheet" type="text/css">
    	 <link rel="stylesheet" href="MenuFinal/styles.css">
	 <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script src="MenuFinal/script.js"></script>
    
    <script type ="text/javascript" >
        $(function() {
        if ($(window).width() <= 470) {
            $('.Myul').hide();
        }
            $('.menuMobileCustomer').click(function() {

              
                $('.Myul').toggle('fast', function() {
                    $(this).closest('#Myul')
                .toggleClass('rolledup', $(this).is(':hidden'));
                });
            });
        });
        
        
        
    </script>
    
   <script type ="text/javascript" >
       $(function() {

           $('.menuMobile_Left').click(function() {
               $('.memberPanel_leftBox_top').toggle('fast', function() {
                   $(this).closest('#memberPanel_LeftBox')
                .toggleClass('rolledup', $(this).is(':hidden'));
                   $('.memberPanel_LeftBox').toggleClass('rightzIndexMenu');
               });

               $('.memberPanel_leftBox_menuBox').toggle('fast', function() {
                   $(this).closest('#memberPanel_LeftBox')
                .toggleClass('rolledup', $(this).is(':hidden'));
               });


           }
            );
       });
        
        
        
        
    </script>
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

a
{
    cursor :pointer ;
}

.content {
    padding: 10px 15vw;
}
.autocomplete_completionListElement
{
    
    background-color : #ffffff ;
    color : #ffffff ;
     border : buttonshadow ;
     border-width : 1px ;
    border-style : solid ; 
   height:200px;
    cursor : 'default' ;
    overflow :auto ;
    font-family : BBC Nassim ;
    font-size : 10pt ;
    text-align : right  ;
    list-style-type :none  ;
    direction:rtl ; 
     margin : 5px!important ;
    }
/* AutoComplete highlighted item */
.autocomplete_highlightedListItem
   {
    background-color : #cccccc ;
    color : black ;
   padding : 7px ;
  
    }

    /* AutoComplete item */
.autocomplete_listItem
    {
    background-color : #ffffff ;
    color : #000000 ;
     padding : 7px ;
    
   
   }
</style> 
<link rel="stylesheet" type="text/css" href="slick/slick.css">
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css">
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

    </style>
     <link rel="stylesheet" href="Calender/jquery.calendars.picker.css">
    <script src="Calender/jquery.min.js"></script>
    <script src="Calender/jquery.plugin.js"></script>
    <script src="Calender/jquery.calendars.js"></script>
    <script src="Calender/jquery.calendars.plus.js"></script>
    <script src="Calender/jquery.calendars.picker.js"></script>
    <script src="Calender/jquery.calendars.persian.js"></script>
    <script>
        $(function() {
            var calendar = $.calendars.instance('persian');
            $('#BirthDate_Member').calendarsPicker({ calendar: calendar });

        });

</script>

</head>
<body>
    <form id="form1" runat="server">
   <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        <Services>
            <asp:ServiceReference Path="AutoCompletar.asmx"  />
        </Services>
    </asp:ToolkitScriptManager>
    <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtSearch"
        ServiceMethod="Buscar" ServicePath="AutoCompletar.asmx" MinimumPrefixLength="2"
        CompletionInterval="1000" EnableCaching="true" CompletionSetCount="12" CompletionListCssClass="autocomplete_completionListElement"
        CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
    </asp:AutoCompleteExtender>
      <div class ="topbar_Mainpage">
        <div class ="topbar_Container">
            <a class ="button" href="PanelMarketer_AddMarketer.aspx" style="width:100px">
                ثبت نام
                <i class="fa fa-address-card"></i>
            </a>
            
            <a class ="button" href="PanelMarketer_LogIn.aspx">
                ورود
                <i class="fa fa-sign-in"></i>
            </a>
            <a class ="buttonHamkar">همکار : </a>
        </div>
    </div>
    <div class="Menu_MainPageBox" id="test" style="border-bottom:2px solid #B6B4B6;">
        <div class ="Logo_Container"></div>
        <div class ="Menu_Container">
            <div id='cssmenu'>
                <ul>
                    <li  ><a href='ContactUs.aspx'><span>تماس با ما</span></a></li> 
                    <li><a href='law.aspx'><span>قواعد و مقررات</span></a></li>
                    <li ><a href='PanelMember_LogIn.aspx'><span>باشگاه مشتریان</span></a></li>
                    <li  class="active" ><a href='Customers.aspx'><span>پذیرنده ها</span></a></li> 
                    <li><a href="AboutUs.aspx" ><span>درباره ما</span></a></li> 
                    <li class="active" ><a href='Default.aspx'><span>صفحه اصلی</span></a></li>
                 </ul> 
            </div> 
        </div>
    </div>
    <div class ="InnerPage_TitlePage_MainPage">
        <div class ="barBox">
            پذیرنده ها
        </div>
    </div>
       
       <div class="title_MainBox">
            <div class ="title_Container"> 
                <div class ="titleText"><a>معرفی پذیرنده</a><a><asp:DropDownList ID="cmb_City" runat ="server" AutoPostBack="true"  ></asp:DropDownList></div></a></div>
            </div> 

       <div class="SaveBoxContainer" id="saveContainer">
                    <div class ="SaveBox" id="saveDialog" style="top:25%;">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;&nbsp;اطلاعات با<span style="color:#888888"> موفقیت </span> در سامانه ثبت گردید <br /><asp:Label ID="lblCodeMoarefi" runat ="server"  ></asp:Label></p>
                        <input type="button" value="تایید" onclick="location.href='PanelMember_AddMember.aspx'" /> 
                    </div>
                </div>
                
       <div class ="Customer_MainBox"  style="border-bottom :4px solid #fff;">
            <div class ="Customer_Container" >
                <div class="memberPanel_LeftBox" >
        
       
        <div class="memberPanel_leftBox_menuBox">
              <ul class="menuMobileCustomer"><i class="fa fa-caret-down"></i>عناوین شغلی</ul>              
              <ul class="Myul" style="border-left:1px solid #E2E2E2;">
                <%=Session("fetch_all_GroupService")%>
            </ul>

        </div>
        
        </div>
        <div class="memberPanel_rightBox" >
        <p class ="boxSearch_Main">
            <asp:TextBox ID="txtSearch" runat="server" placeholder="جستجو کنید ..." ></asp:TextBox>
            <asp:Button ID="btnSearch" runat ="server" class="buttonSeach" Text ="شروع" />
        </p>
                    <%=Session("create_Content_Customer")%>
        </div>
        </div>   
 
        </div>

       
        <div class ="FooterMainPage">
        <div class ="FooterContainer">
            <div class ="rightBox">
                <div class ="logoBox"></div>
                <div class ="ContentTextBox">
                    <%=Session("fetch_FirstPage_Footer")%>
                </div>
                <div class ="phoneBox">
                    <a><i class ="fa fa-phone"></i></a>
                    <a>00000000000</a>
                </div>
                
                <div class ="phoneBox">
                    <a><i class ="fa fa-envelope-o"></i></a>
                    <a>info@spad.com</a>
                </div>
            </div>
            <div class ="leftBox">
                <div class ="whiteBox" ></div>
                <iframe src="ContactUsForm.aspx"  frameborder ="0" scrolling ="no" ></iframe>
            </div>
        </div>
     </div>


        <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
        <script type="text/javascript">
            if ($(window).width() > 785) {
                $('#test').scrollToFixed();
            }
        </script>
        <a class="scrollToTop" id="topObject" title="به سمت بالا"></a>
        
        <a href="WorkWithUS.aspx" target ="_blank" style="position:fixed;bottom:0px;left :0px;"><img src="images/icon-kasb-daramad2.png" title ="کسب درآمد " /></a>
         <%--loading click--%>
        <asp:ModalPopupExtender BackgroundCssClass="ModalBackground" ID="m" runat="server"  PopupControlID ="Panel1" TargetControlID ="hiddenField">
        </asp:ModalPopupExtender>    
        <asp:Panel ID="panel1" Direction= "RightToLeft"  runat="server"   style="z-index:1000">
        <center ><img src="images/loading.gif" style ="z-index :1000" align="middle"    /></center>
        </asp:Panel> 
        <asp:HiddenField ID="hiddenField" runat ="server" />
        <%--loading click--%>
    </form>
</body>
</html>
<script src="SlideNew/sliderResponsive.js"></script>
<script>
    $(document).ready(function() {

        $("#slider1").sliderResponsive({
        // Using default everything
        // slidePause: 5000,
        // fadeSpeed: 800,
        // autoPlay: "on",
        // showArrows: "off", 
        // hideDots: "off", 
        // hoverZoom: "on", 
        // titleBarTop: "off"
    });

    $("#slider2").sliderResponsive({
        fadeSpeed: 300,
        autoPlay: "off",
        showArrows: "on",
        hideDots: "on"
    });

    $("#slider3").sliderResponsive({
        hoverZoom: "off",
        hideDots: "on"
    });

}); 
</script>
<script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript">


	    var $window = $(window);


	    var $animation_elements1 = $('.about_Container .imageBox .img1');
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
	                $element.addClass('img1_view');
	            } else {

	            }
	        });
	    }


	    var $animation_elements2 = $('.about_Container .imageBox .img2');
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
	                $element.addClass('img2_view');
	            } else {

	            }
	        });
	    }

	    var $animation_elements3 = $('.about_Container .imageBox .img3');
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
	                $element.addClass('img3_view');
	            } else {

	            }
	        });
	    }

	    var $animation_elements4 = $('.about_Container .imageBox .img4');
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
	                $element.addClass('img4_view');
	            } else {

	            }
	        });
	    }


	    var $animation_elements5 = $('.about_Container .imageBox .img5');
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
	                $element.addClass('img5_view');
	            } else {

	            }
	        });
	    }


	    var $animation_elements6 = $('.about_Container .imageBox .img6');
	    function check_if_in_view6() {
	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements6, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                $element.addClass('img6_view');
	            } else {

	            }
	        });
	    }


	    var $animation_elements7 = $('.Services_Container .rightBoxContainer .contentBox .ServiceBox');
	    function check_if_in_view7() {
	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements7, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                $element.addClass('ServiceBox_view');
	            } else {

	            }
	        });
	    }

	    var $animation_elements8 = $('.pictureBoxContainer .lageBox');
	    function check_if_in_view8() {
	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements8, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                $element.addClass('lageBox_view');
	            } else {

	            }
	        });
	    }



	    var $animation_elements9 = $('.pictureBoxContainer .smallBox');
	    function check_if_in_view9() {
	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements9, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                $element.addClass('smallBox_view');
	            } else {

	            }
	        });
	    }

	    var $animation_elements10 = $('.OffContainer .rightBox');
	    function check_if_in_view10() {
	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements10, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                $element.addClass('rightBox_view');
	            } else {

	            }
	        });
	    }


	    var $animation_elements11 = $('.GalleryContainer .GalleryBox');
	    function check_if_in_view11() {
	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements11, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                $element.addClass('GalleryBox_view');
	            } else {

	            }
	        });
	    }


	    var $animation_elements12 = $('.contact_Box');
	    function check_if_in_view12() {
	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements12, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                $element.addClass('contact_Box_view');
	            } else {

	            }
	        });
	    }

	    var $animation_elements14 = $('.ContactMap_Container .BoxFrame');
	    function check_if_in_view14() {
	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements14, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                $element.addClass('BoxFrame_view');
	            } else {

	            }
	        });
	    }

	    var $animation_elements15 = $('.Testimonials_Image');
	    function check_if_in_view15() {
	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements15, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                $element.addClass('Testimonials_Image_view');
	            } else {

	            }
	        });
	    }


	    var flg_first = 0
	    var $animation_elements30 = $('.SponsorMainPage');
	    function check_if_in_view30() {


	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements30, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                if (flg_first == 0) {
	                    flg_first = 1;
	                    initTimer_fn();
	                }
	            } else {

	            }
	        });



	    }



	    $window.on('scroll resize', check_if_in_view1);
	    $window.on('scroll resize', check_if_in_view2);
	    $window.on('scroll resize', check_if_in_view3);
	    $window.on('scroll resize', check_if_in_view4);
	    $window.on('scroll resize', check_if_in_view5);
	    $window.on('scroll resize', check_if_in_view6);
	    $window.on('scroll resize', check_if_in_view7);
	    $window.on('scroll resize', check_if_in_view8);
	    $window.on('scroll resize', check_if_in_view9);
	    $window.on('scroll resize', check_if_in_view10);
	    $window.on('scroll resize', check_if_in_view11);
	    $window.on('scroll resize', check_if_in_view12);
	    $window.on('scroll resize', check_if_in_view14);
	    $window.on('scroll resize', check_if_in_view15);
	    $window.on('scroll resize', check_if_in_view30);
	    $window.trigger('scroll');
</script>
<script type="text/javascript" src="Scroll.js"></script>

<script type="text/javascript">


    $(function() {
        $('#myAccountBox1').hide();
        $('#myAccount1').click(function() {
            $('#myAccountBox1')
            .toggle('slow', function() {
                $(this).closest('#myAccount1')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
        });
    });

    $(function() {
        $('#myAccountBox2').hide();
        $('#myAccount2').click(function() {
            $('#myAccountBox2')
            .toggle('slow', function() {
                $(this).closest('#myAccount2')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
        });
    });

    $(function() {
        $('#myAccountBox3').hide();
        $('#myAccount3').click(function() {
            $('#myAccountBox3')
            .toggle('slow', function() {
                $(this).closest('#myAccount3')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
        });
    });


    
      
    </script>
    <script src="js/jquery-2.2.0.min.js" type="text/javascript"></script>
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
        slidesToShow: 3,
        slidesToScroll: 3
      });
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
     if ($(window).width()<=785)
      {
       $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
      }
      else{
       $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 5,
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
    var max_activeMember = document.getElementById("lbl_NumberBrand");
    amount_max_activeMember = max_activeMember.innerText;



    var c;

    function initTimer_fn() {
        c = setInterval(fn_Start, 80);
    }


    function fn_Start() {

        if (activeMember <= amount_max_activeMember) {
            max_activeMember.innerHTML = activeMember;
            activeMember = activeMember + 1;
        }
        else {
            flg1 = 1;
        }


        if ((flg1 == 1)) {
            clearInterval(c);
        }



    }
</script>
<script type="text/javascript" src="Scroll.js"></script>
 <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
        <script type="text/javascript">
            if ($(window).width() > 785) {
                $('#test').scrollToFixed();
            }
        </script>
        
        <script type ="text/javascript" >
            $(document).ready(function() {

                var scroll_start = 0;
                var startchange = $('#test');
                var offset = startchange.offset();
                if (startchange.length) {
                    $(document).scroll(function() {

                        scroll_start = $(this).scrollTop();
                        if (scroll_start > 0) {
                            $("#test").css('z-index', '100000000');
                            $("#test").css('box-shadow', '0px 2px 5px #c1c1c1');
                            $("#test").css('min-height', '70px');
                            $(".Menu_Container").css('min-height', '70px');
                            $(".Logo_Container").css('min-height', '70px');
                            $("#cssmenu > ul > li").css('min-height', '70px');
                            $("#cssmenu > ul > li").css('line-height', '70px');
                            $("#cssmenu > ul > li > a").css('line-height', '70px');

                        } else {
                            $("#oLogo").css('width', '200px');
                            $(".phoneBox").css('display', 'inline-block');
                            $("#test").css('box-shadow', '0px 0px 0px #c1c1c1');
                            $("#test").css('min-height', '100px');
                            $(".Menu_Container").css('min-height', '100px');
                            $(".Logo_Container").css('min-height', '100px');
                            $("#cssmenu > ul > li").css('min-height', '100px');
                            $("#cssmenu > ul > li").css('line-height', '100px');
                            $("#cssmenu > ul > li > a").css('line-height', '100px');
                        }
                    });
                }
            });
	</script>

<%=Session("str_Style_menu") %>
 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>
<%=Session("str_script_menu") %>
<%=Session("animateScript") %>