<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CustomersDet.aspx.vb" Inherits="W_ISM.CustomersDet" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>پذیرنده های - باشگاه مشتریان </title>
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
    <link href="graphic/Graphic.css" rel="stylesheet" />
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
    
    
    <link rel="stylesheet" href="http://vjs.zencdn.net/3.2/video-js.css" type="text/css">
<script src="http://vjs.zencdn.net/3.2/video.js"></script>
    <script type="text/javascript" src="jquery.js"></script>
    <link href="StyleSheet/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="JS/code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <link href="SlideNew/sliderResponsive.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        $(function() {
            $('#myAccountBox').hide();
            $('#myAccount').click(function() {
                $('#myAccountBox')
            .toggle('slow', function() {
                $(this).closest('#myAccount')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
            });
        });


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


        $(function() {
            $('#myAccountBox4').hide();
            $('#myAccount4').click(function() {
                $('#myAccountBox4')
            .toggle('slow', function() {
                $(this).closest('#myAccount4')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
            });
        });

        $(function() {
            $('#myAccountBox5').hide();
            $('#myAccount5').click(function() {
                $('#myAccountBox5')
            .toggle('slow', function() {
                $(this).closest('#myAccount5')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
            });
        });


        $(function() {
            $('#myAccountBox6').hide();
            $('#myAccount6').click(function() {
                $('#myAccountBox6')
            .toggle('slow', function() {
                $(this).closest('#myAccount6')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
            });
        });

        $(function() {
            $('#myAccountBox7').hide();
            $('#myAccount7').click(function() {
                $('#myAccountBox7')
            .toggle('slow', function() {
                $(this).closest('#myAccount7')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
            });
        });

        $(function() {
            $('#myAccountBox8').hide();
            $('#myAccount8').click(function() {
                $('#myAccountBox8')
            .toggle('slow', function() {
                $(this).closest('#myAccount8')
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
</asp:ToolkitScriptManager>
    
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
                    <li><a href='Default.aspx'><span>صفحه اصلی</span></a></li>
                 </ul> 
            </div> 
        </div>
    </div>
    <div class ="InnerPage_TitlePage_MainPage">
        <div class ="barBox">
            معرفی پذیرنده
        </div>
    </div>
       
       <div class="title_MainBox">
            <div class ="title_Container">
                
                <asp:Label ID="lblTitle" runat ="server" class="titleText"  ></asp:Label>
                
            </div> 
            
       </div>
       <div class="SaveBoxContainer" id="saveContainer">
                    <div class ="SaveBox" id="saveDialog" style="top:25%;">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;&nbsp;اطلاعات با<span style="color:#888888"> موفقیت </span> در سامانه ثبت گردید <br /><asp:Label ID="lblCodeMoarefi" runat ="server"  ></asp:Label></p>
                        <input type="button" value="تایید" onclick="location.href='PanelMember_AddMember.aspx'" /> 
                    </div>
                </div>
       <div class ="Customer_MainBox" style="border-bottom :4px solid #fff;">
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
                    <div id="burst" runat ="server" ><asp:Label ID="lbl_Percent" runat ="server"  style="position:absolute ;top:60px;left:10xp;"></asp:Label></div>                    
                    <a href="#" class ="backButton" title="بازگشت به صفحه قبل" onclick="window.history.back();"><i class="fa fa-undo"></i></a>
                    <%=Session("create_Content_CustomerDet")%>
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
    var max_activeMember = document.getElementById("lbl_activeMember");
    amount_max_activeMember = max_activeMember.innerText;

    var max_Marketer = document.getElementById("lblMarketer");
    amount_max_Marketer = max_Marketer.innerText;

    var max_NumberPackage = document.getElementById("lbl_NumberPackage");
    amount_max_NumberPackage = max_NumberPackage.innerText;

    var max_NumberClick = document.getElementById("lbl_NumberClick");
    amount_max_NumberClick = max_NumberClick.innerText;

    var max_activeMember = document.getElementById("lbl_activeMember");

    var max_Marketer = document.getElementById("lblMarketer");

    var max_NumberPackage = document.getElementById("lbl_NumberPackage");

    var max_NumberClick = document.getElementById("lbl_NumberClick");

    var c;

    function initTimer_fn() {
        c = setInterval(fn_Start, 200);
    }


    function fn_Start() {

        if (activeMember <= amount_max_activeMember) {
            max_activeMember.innerHTML = activeMember;
            activeMember = activeMember + 1;
        }
        else {
            flg1 = 1;
        }

        if (Marketer <= amount_max_Marketer) {
            max_Marketer.innerHTML = Marketer;
            Marketer = Marketer + 1;
        }
        else {
            flg2 = 1;
        }

        if (NumberPackage <= amount_max_NumberPackage) {
            max_NumberPackage.innerHTML = NumberPackage;
            NumberPackage = NumberPackage + 1;
        }
        else {
            flg3 = 1;
        }

        if (NumberClick <= amount_max_NumberClick) {
            max_NumberClick.innerHTML = NumberClick;
            NumberClick = NumberClick + 1;
        }
        else {
            flg4 = 1;
        }



        if ((flg1 == 1) && (flg2 == 1) && (flg3 == 1) && (flg4 == 1)) {
            clearInterval(c);
        }



    }
</script>
<script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript">


	    var $window = $(window);


	    var $animation_elements1 = $('.box');
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
	                $element.addClass('box_view');
	            } else {

	            }
	        });
	    }

	    var $animation_elements2 = $('.boxNews');
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
	                $element.addClass('boxNews_view');
	            } else {

	            }
	        });
	    }
	    var flg_first = 0
	    var $animation_elements3 = $('.boxAmar');
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
	    $window.trigger('scroll');
</script>
<script src="JS/code.jquery.com/jquery-1.12.4.min.js"></script>
 <script src="JS/code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
  <script src="slick/slick.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript">
    $(document).on('ready', function() {
     $(".reg").slick({
        dots: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
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
      
    
      
     
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
     
     
       $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 1,
        slidesToScroll: 1
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
<script type="text/javascript" src="Scroll.js"></script>
<script type ="text/javascript" >
    function GraphicalBorder(oname) {
        var myContainer = document.getElementById(oname);
        myContainer.classList.add("effectContainerDiv_active");

    }

    function GraphicalBorderRemove(oname) {
        var myContainer = document.getElementById(oname);
        myContainer.classList.remove("effectContainerDiv_active");

    }
</script>

<script  type ="text/javascript" >
    document.getElementById("Logo_Organ").onchange = function() {
        document.getElementById("uploadFile").value = this.value;
    };
</script>
<script type="text/javascript" >
    function closeDialog() {
        document.getElementById("saveContainer").style.display = "none";
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
<%=Session("strScript") %>
