<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WorkWithUS.aspx.vb" Inherits="W_ISM.WorkWithUS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>همکاری با ما - باشگاه مشتریان </title>
    <link href="graphic/Graphic.css" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="BSFE.ir">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script type="text/javascript" src="jquery.js"></script>
    <link href="StyleSheet/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="JS/code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <link href="SlideNew/sliderResponsive.css" rel="stylesheet" type="text/css">
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

</head>
<body>
    <form id="form1" runat="server">
        <div class ="topPage_new_Mainpage">
            <div class ="topPage_new_Container">
                 <div class ="rightBox"><img src="images/Logo_Toolbar.png" style='cursor:pointer' onclick="location.href='index.aspx'" /></div>
                <div class ="leftBox">
                    <div class ="hamkarBox">
                        <div class ="hamkarTextMain"><i class="fa fa-caret-right"></i>همکار</div>
                        <div class ="hamkarLoginBox">
                            <a href="PanelMarketer_AddMarketer.aspx"><i class="fa fa-plus-circle"></i>ثبت نام</a>
                            <a href="PanelMarketer_LogIn.aspx"><i class="fa fa-user-circle-o"></i>ورود</a>
                        </div>
                    </div>
                    
                    <div class ="hamkarBox1">
                        <div class ="hamkarTextMain1"><i class="fa fa-caret-right"></i>مشتری</div>
                        <div class ="hamkarLoginBox1">
                            <%--<a href="PanelMember_AddMember.aspx"><i class="fa fa-user-plus"></i>ثبت نام</a>--%>
                            <a href="PanelMember_LogIn.aspx"><i class="fa fa-user-o"></i>ورود</a>
                        </div>
                    </div>
                    
                </div>
               
            </div>
        </div>
        <div class ="Top_MenuBar"  id="test">
            <div class ="Top_ContainerMenuBar">
                <ul>
                    <li><a href="index.aspx">صفحه اصلی</a></li>
                    <li><a href="#">باشگاه مشتریان</a></li>
                    <li><a href="Customers.aspx">پذیرنده ها</a></li>
                    <li><a href="Law.aspx">قواعد و مقررات</a></li>
                    <li><a href="AboutUs.aspx">درباره ما</a></li>
                    <li><a href="ContactUs.aspx" >تماس با ما</a></li>
                </ul>
            </div>
        </div> 
           
        <div class ="package_Mainpage">
            <div class ="package_Container">
                <div class ="whiteSpace"></div>
                <div class ="header">همکاری با ما</div>
                <div class ="headerBar"><p></p></div>
                <div class ="headerText"><p></p></div>
                <div class ="packageBox">
                    <%=Session("fetch_Hamkari")%>
                </div>
                
                <div class ="whiteSpace"></div>
            </div>
        </div>
       
        <div class ="Footer_Mainpage">
            <div class ="Footer_Container">
                <div class ="whiteSpace"></div>
                <div class ="boxFooter">
                     <div class ="headerBox">عضویت در خبرنامه</div>
                    <div class ="ContentBoxText">برای دریافت آخرین اطلاعات وب سایت و پکیج های ویژه ، آدرس پست الکترونیکی خود را درج تا آبونه وب سایت شوید</div>
                    <div class ="sendMailBox">
                        <asp:Label ID="lblShow"  runat ="server" ></asp:Label>
                        <asp:TextBox ID="txtMail" runat ="server" class="TextBoxmail" placeholder="ایمیل خود را درج نمائید" ></asp:TextBox>
                        <a href="#" id="Member_Newsletters" runat ="server" ><i class="fa fa-envelope-o"></i>عضویت</a>
                    </div>
                </div>
                <div class ="boxFooter">
                    <div class ="headerBox">ارتباط با ما</div>
                    <div class ="ContentBoxText">
                      <div  style="position:relative ;top:0px;float:right ;right:0px;padding :0; width :100%;min-height:30px;min-height:30px;font-size:10pt;direction :rtl;"><span  style="position:relative ;float:right ;font-size :10pt;">مارا درشبکه های اجتماعی دنبال کنید</span> 
                        
                        </div>
                        <a class ="a_Content"><%=Session("phone_setting")%><i class="fa fa-phone"></i></a>
                        <a class ="a_Content_left"><%=Session("mobile_setting")%><i class="fa fa-mobile"></i></a>
                        <a class ="a_Content_address" style="width :100%;"><i class="fa fa-map-marker"></i><%=Session("address_setting")%></a>
                        <a class ="a_Content_address" style="width :100%;" href="mailto:<%=Session("email_Setting")%>"><i class="fa fa-envelope-o"></i><%=Session("email_Setting")%></a>
                    </div>
                </div>
                <div class ="boxFooter">
                    <div class ="boxFooter_iframe">
                    <iframe src="" frameborder="0"></iframe>
                    </div>
                 </div> 
            </div>
            <p ><a href="Law.aspx" >قواعد و مقررات</a><a href="ContactUs.aspx" >تماس با ما</a><a href="AboutUs.aspx" >درباره ما</a><a href="Index.aspx" >صفحه اصلی</a></p>
        </div>
        <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
        <script type="text/javascript">
            if ($(window).width() > 785) {
                $('#test').scrollToFixed();
            }
        </script>
        <a class="scrollToTop" id="topObject" title="Top"></a>
        
        <a href="WorkWithUS.aspx" target ="_blank" style="position:fixed;bottom:0px;left :0px;"><img src="images/icon-kasb-daramad2.png" title ="کسب درآمد " /></a>
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
            flg1=1;
        }

        if (Marketer <= amount_max_Marketer) {
            max_Marketer.innerHTML = Marketer;
            Marketer = Marketer + 1;
        }
        else{
            flg2=1;
        }
        
        if (NumberPackage <= amount_max_NumberPackage) {
            max_NumberPackage.innerHTML = NumberPackage;
            NumberPackage = NumberPackage + 1;
        }
         else{
            flg3=1;
        }

        if (NumberClick <= amount_max_NumberClick) {
            max_NumberClick.innerHTML = NumberClick;
            NumberClick = NumberClick + 1;
        }
        else{
            flg4=1;
        }

       
        
       if ((flg1==1) && (flg2==1)  && (flg3==1) && (flg4==1))
       {
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
        var flg_first=0
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
        slidesToShow: 3,
        slidesToScroll: 3
      });
      }
      else{
      
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      }
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
<script type="text/javascript" src="Scroll.js"></script>
<%=Session("animateScript") %>