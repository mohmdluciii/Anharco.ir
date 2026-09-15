<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PanelPerson_LogIn.aspx.vb" Inherits="W_ISM.PanelPerson_LogIn" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>ورود به ناحیه کاربری</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="graphic/Main.css" rel="stylesheet" />
  
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
   
    
	<link rel="stylesheet" type="text/css" href="slick/slick.css">
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css">
    
    <link href="SlideNew/sliderResponsive.css" rel="stylesheet" type="text/css">
    	 <link rel="stylesheet" href="MenuFinal/styles.css">
	 <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script src="MenuFinal/script.js"></script>
  
 <script type ="text/javascript" src="MyScript/TopMenuFixed.js"></script>

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
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"><Services><asp:ServiceReference Path ="AutoCompletar.asmx" /></Services></asp:ToolkitScriptManager>
     <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtSearch" ServiceMethod="Buscar" ServicePath="AutoCompletar.asmx" MinimumPrefixLength="2" CompletionInterval="1000" EnableCaching="true" CompletionSetCount="12"   CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"></asp:AutoCompleteExtender>  
       <div class ="topWhiteBar">
            <div class ="topWhiteBar_Container">
                <ul class ="main_ul">
                
                    
                    <li class ="main_li">
                        
                    </li>
                    <li class ="main_li"><a href="PanelPerson_LogIn.aspx"><i class ="fa fa-sign-in" ></i>ویژه همکاران</a>
                        <ul class="topWhiteBar_DropDown" id="LoginBox">
                            <li ><a style="width:80px;margin :0;padding :0;display:inline-block;font-size :9pt;font-family:yekan,arial;color:#fff;text-align :left ;margin-left :5px;">شناسه کاربری :  </a><a style="width:160px;margin :0;padding :0;display:inline-block;font-size :9pt;font-family:yekan,arial;text-align :right"><asp:TextBox AutoComplete="off" ID="txtUID" runat ="server" Width="150" style="padding :5px 5px 5px 5px;border-width:0px;"></asp:TextBox></a> </li>
                            <li ><a style="width:80px;margin :0;padding :0;display:inline-block;font-size :9pt;font-family:yekan,arial;color:#fff;text-align :left ;margin-left :5px;">کلمه عبوری :  </a><a style="width:160px;margin :0;padding :0;display:inline-block;font-size :9pt;font-family:yekan,arial;text-align :right"><asp:TextBox  AutoComplete="off"  ID="txtPWD" runat ="server" Width="100"  style="padding :5px 5px 5px 5px;border-width:0px;" TextMode ="Password" ></asp:TextBox></a></li>
                            <li style="padding-left:10px;text-align:left;"><asp:Label ID="ErrCation" runat ="server"  ></asp:Label><asp:Button runat ="server" ID="btnLogin"  Text ="ورود " /></li> 
                        </ul>
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
    <div class ="topBannerBox">
            <hr />
            <div class ="TextTitle">ورود به پنل همکار</div>
       </div>
       <div class ="MainpathBox">
            <div class ="pathBox">
                <ul>
                    <li><a href="default.aspx">صفحه اصلی</a></li>
                    <li><i class ="fa fa-angle-left"></i></li>
                    <li><a >ورود به پنل همکار</a></li>
                </ul>
            </div>
       </div> 
       <div class="SaveBoxContainer" id="saveContainer">
                    <div class ="SaveBox" id="saveDialog" style="top:25%;">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;&nbsp;اطلاعات با<span style="color:#9D9D9D"> موفقیت </span> در سامانه ثبت گردید <br /><asp:Label ID="lblCodeMoarefi" runat ="server"  ></asp:Label></p>
                        <input type="button" value="تایید" onclick="location.href='PanelMember_AddMember.aspx'" /> 
                    </div>
                </div>
       <div class ="Content_MainBox">
            <div class ="Content_Container">
                 <div class ="contentBox">
                    <div class ="box">
                        <div class ="loginBox">
                            <div class ="headerBox">
                                <a><i class="fa fa-sign-in"></i>همکار تایید شده سامانه هستم و ثبت نام کرده ام</a>
                            </div>
                            <div class ="titleBox">
                                رمز عبوری و شناسه کاربری خود را وارد نمایید. 
                                <br />
                                سپس روی دکمه ورود کلیک کنید.
                            </div>
                            <div class ="titleBox" id="uidbox" runat ="server" >
                                <div class ="ContainerTextBoxObject" >
                                    
                                    <div class="ContainerTextBoxCaption">شناسه کاربری&nbsp;*  <asp:Label   style="color:#a20000" id="lblUID" runat ="server"  class="errStyle" ></asp:Label></div>
                                    <div class="ContainerTextBoxStyle">
                                        <div class="effectContainerDiv"  id="container_UID"></div>
                                        <ul class="ContainerQuotation" >
                                            <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">لطفا شناسه کاربری خود را که در بخش ثبت نام انتخاب کرده اید را درج نمائید.</div></li></ul></a></li>
                                            <li> <asp:TextBox tabindex="1"  onfocus="GraphicalBorder('container_UID');" onblur="GraphicalBorderRemove('container_UID');" ID="UID" AutoComplete="off" runat ="server"   MaxLength="50" ></asp:TextBox></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class ="titleBox"  id="pwdbox" runat ="server" >
                                <div class ="ContainerTextBoxObject" >
                                    <div class="ContainerTextBoxCaption">کلمه عبوری&nbsp;  <asp:Label id="lblPWD"   style="color:#a20000" runat ="server"  class="errStyle" ></asp:Label></div>
                                    <div class="ContainerTextBoxStyle">
                                        <div class="effectContainerDiv"  id="container_PWD"></div>
                                        <ul class="ContainerQuotation">
                                            <li><a href ="#"><i  class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">لطفا کلمه عبوری خود را که در بخش ثبت نام انتخاب کرده اید را درج نمائید. </div></li></ul></a></li>
                                            <li> <asp:TextBox tabindex="2"   onfocus="GraphicalBorder('container_PWD');" onblur="GraphicalBorderRemove('container_PWD');" ID="PWD" AutoComplete="off" runat ="server"  TextMode="Password"  MaxLength="50"  ></asp:TextBox></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                           
                            <div class ="titleBox" id="smdcodebox" runat ="server" >
                                <div class ="ContainerTextBoxObject" >
                                    <div class="ContainerTextBoxCaption"><asp:Label  id="lblTimer" runat ="server"  style="background:#a20000;font-size:10pt;font-family:Yekan;color:#fff;padding:3px 5px 3px 5px;margin-top :5px;margin-bottom :5px;visibility:hidden;" ></asp:Label></div>
                                    <div class="ContainerTextBoxCaption">پیامک یکبار رمز&nbsp;  <asp:Label id="lblsmscode" runat ="server"  style="color:#a20000" class="errStyle" ></asp:Label></div>
                                    <div class="ContainerTextBoxStyle">
                                        <div class="effectContainerDiv"  id="container_smscode"></div>
                                        <ul class="ContainerQuotation"  >
                                            <li><a href ="#"><i  class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">رمز دریافت شده در موبایل خود را در این بخش درج نمائید. </div></li></ul></a></li>
                                            <li> <asp:TextBox tabindex="2"   onfocus="GraphicalBorder('container_smscode');" onblur="GraphicalBorderRemove('container_smscode');" ID="smscode" AutoComplete="off" runat ="server"  MaxLength="50" ></asp:TextBox></li>
                                            
                                        </ul>
                                        <%--<input id="btnSendSMSCode" onclick="sendCodeSMS();" type="button" value="دریافت پیامک" style="border:0;cursor:pointer ;background :#333;color:#fff;padding :5px 10px 5px 10px;text-align:center ;"/>--%>
                                        <input id="btnSendSMSCode" onclick="sendCodeSMS();window.open('<%=Session("strSMS") %>','frameCode');" type="button" value="دریافت پیامک" style="border:0;cursor:pointer ;background :#333;color:#fff;padding :5px 10px 5px 10px;text-align:center ;"/>
                                    </div>
                                </div>
                            </div>
                            <div class ="titleBox" id="securityBox" runat ="server" >
                             <p class ="p_caption" style="height:10px;">کد امنیتی</p>
                             <p class ="p_TextBox"><iframe src="Captcha.aspx"  id="capCode" style ="height:55px;width:130px" frameborder ="0" scrolling ="no"  ></iframe><a href='#' onclick="refrereshSecurityCode();"><i style="font-size:18px;color:#6498FE;" title="فراخوانی دوباره" class='fa fa-refresh'></i></a> <br/><asp:TextBox  TabIndex ="3" autocomplete ="off" class="textFont" Height ="30" style="text-align :center;border-radius:0px;background:#fff;border:1px solid #6498FE;color:#6498FE;"  BackColor="#ffffff"  ID="txtSign" runat ="server" Width ="100" MaxLength="6"   ></asp:TextBox></p>
                             
                            </div> 
                            <div class ="titleBox" style ="margin :0;">
                                <div class="containerButton" style ="margin :0;">
                                   
                                    <asp:Button ID="btnSaveForm" OnClientClick="StartProgressBar();"   runat ="server" Text ="ورود" style="width:200px;min-height:40px; " />
                                    <asp:Button ID="btncheckCode" OnClientClick="StartProgressBar();"   runat ="server" Text ="بررسی کد ( ورود )" style="width:200px;min-height:40px;margin-top :40px; " />
                                </div>
                            </div> 
                            <div class ="headerBox" id="forgetBox" runat ="server" >
                                <a href="PanelMarketer_ForgetPassword.aspx" class ="link" style ="display:block;z-index:100000;"><i class="fa fa-question"></i>رمز عبور را فراموش کرده ام</a>
                            </div>
                        </div>
                    </div>
                    <div class ="box">
                        <div class ="loginBox">
                            <div class ="headerBox">
                                <a><i class="fa fa-user-plus"></i>قصد ورود به ناحیه کاربری ویژه پرسنل را دارم</a>
                            </div>
                            <div class ="titleBox">
                                همکار گرامی 
                                <br />
                                <%=Session("TextPanelPersonLogin") %>
                            </div>
                            <div class ="titleBox">
                                <div class="containerButton">
                                    <asp:Button ID="btnAddMember" OnClientClick="StartProgressBar();"  runat ="server" Text ="تماس با ما" style="width:200px;min-height:40px;margin-top:50px; " />
                                </div>
                            </div> 
                        </div> 
                    </div> 
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
            </div>
            <div class ="footer_Container_Copy"><%=Session("fetch_copyRight") %></div>
       </div>
   
        <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
        <script type="text/javascript">
            if ($(window).width() > 785) {
                $('#test').scrollToFixed();
            }
        </script>
        <a class="scrollToTop" id="topObject" title="به سمت بالا"></a>
        
        
         <%--loading click--%>
        <asp:ModalPopupExtender BackgroundCssClass="ModalBackground" ID="m" runat="server"  PopupControlID ="Panel1" TargetControlID ="hiddenField">
        </asp:ModalPopupExtender>    
        <asp:Panel ID="panel1" Direction= "RightToLeft"  runat="server"   style="z-index:1000">
        <center ><img src="images/loading.gif" style ="z-index :1000" align="middle"    /></center>
        </asp:Panel> 
        <asp:HiddenField ID="hiddenField" runat ="server" />
        <%--loading click--%>
        <iframe src="" name="frameCode" style="display:none;" ></iframe>
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
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
            slidePause: 5000,
            fadeSpeed: 0,
            autoPlay: "on",
            //showArrows: "off", 
            hideDots: "off",
            hoverZoom: "on",
            titleBarTop: "off"
        });

        $("#slider2").sliderResponsive({
            fadeSpeed: 0,
            autoPlay: "off",
            showArrows: "on",
            hideDots: "off"
        });

        $("#slider3").sliderResponsive({
            hoverZoom: "off",
            hideDots: "off"
        });

    }); 
</script>

<%=Session("animateScript") %>




 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>
<%=Session("animateScript") %>

<script type ="text/javascript" >
    $('#PWD').keypress(function(event) {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode == '13') {
            form1.action = "PanelPerson_LogIn.aspx?g=1";
            form1.submit();
        }
    });
</script>

<script type="text/javascript" >
    $('#UID').bind("cut copy paste", function(e) {
        e.preventDefault();
    });

    $('#PWD').bind("cut copy paste", function(e) {
        e.preventDefault();
    });
    
</script>

<script type ="text/javascript" >
    var c;
    var counter = 0;
    function sendCodeSMS() {
        var b = document.getElementById("btnSendSMSCode");
        b.value = "پیامک ارسال شد ...";
        b.disabled = "true";
        b.style.cursor = "wait";
        c = window.setInterval(initTimer, 1000);
    }

    function initTimer() {
        var m = document.getElementById("lblTimer");
        m.style.visibility = "visible";
        counter = counter + 1;
        m.innerText = counter + " ثانیه ";
        if (counter == 120) {
            window.location.href = "PanelPerson_LogIn.aspx?c=1";
            window.clearInterval(c);
        } 
    }
    
    
</script>
<style type ="text/css" >
#btncheckCode
	{
		position :relative ;
		
		min-height :30px;
		border-width:0px;
		border-style :solid ;
		background :#6598FD;
		color:#fff;
		font-size:9pt;
		font-family :yekan ,arial;
		width :60px;
		cursor :pointer ;
		 -webkit-transition:background-color 0.5s; /* For Safari 3.1 to 6.0 */
        transition:background-color 0.5s;
        text-align :center ;
	}
	#btncheckCode:hover
	{
		background:#9D9D9D;
		color:#fff;
	}
</style>

<script type ="text/javascript" >
    function refrereshSecurityCode() {
        var f = document.getElementById("capCode");
        capCode.src = "Captcha.aspx";
    }
</script>