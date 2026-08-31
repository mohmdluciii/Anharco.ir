<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SQ_Person.aspx.vb" Inherits="W_ISM.SQ_Person" %>

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
    <div class ="InnerPage_TitlePage_MainPage">
        <div class ="barBox">
            انتخاب سوال امنیتی
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
                                سوال امنیتی را انتخاب و پاسخ آنرا درج نمائید
                                <br />
                                سپس روی دکمه ثبت کلیک کنید
                            </div>
                            <div class ="titleBox">
                                    <div class ="ContainerTextBoxObject">
                                        <div class="ContainerTextBoxCaption">سوال امنیتی&nbsp; *<asp:Label id="lblSQ_Person" runat ="server" class="errStyle" ></asp:Label></div>
                                            <div class="ContainerTextBoxStyle">
                                            <div class="effectContainerDiv"  id="container_SQ_Person"></div>
                                            <ul class="ContainerQuotation">
                                            <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">سوال امنیتی مورد نظر خود را از لیست پایین افتادنی برگزینید.</div></li></ul></a></li>
                                            <li><asp:DropDownList  id="cmb_SQ_Person" tabindex="1" runat ="server"  onfocus="GraphicalBorder('container_SQ_Person');" onblur="GraphicalBorderRemove('container_SQ_Person');"></asp:DropDownList></li>
                                            </ul>
                                        </div>
                                    </div>
                                <div class ="ContainerTextBoxObject" >
                                    <div class="ContainerTextBoxCaption">پاسخ&nbsp;*  <asp:Label id="lblResultSQ_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                                    <div class="ContainerTextBoxStyle">
                                        <div class="effectContainerDiv"  id="container_ResultSQ_Person"></div>
                                        <ul class="ContainerQuotation">
                                            <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">پاسخ به سوال امنیتی انتخابی است که برگزیدید این پاسخ را همیشه باید در یاد داشته باشید تا در مواقع فراموشی کلمه عبوری بکار ببرید.</div></li></ul></a></li>
                                            <li> <asp:TextBox tabindex="1"  onfocus="GraphicalBorder('container_ResultSQ_Person');" onblur="GraphicalBorderRemove('container_ResultSQ_Person');" ID="ResultSQ_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                           
                            <div class ="titleBox">
                                <div class="containerButton">
                                    <asp:Button ID="btnSaveForm" OnClientClick="StartProgressBar();"  runat ="server" Text ="ثبت" style="width:200px;min-height:40px;margin-top:50px; " />
                                </div>
                            </div> 
                           
                        </div>
                    </div>
                    <div class ="box">
                        <div class ="loginBox">
                            <div class ="headerBox">
                                <a><i class="fa fa-user-plus"></i>تعیین سوال امنیتی مورد نظر</a>
                            </div>
                            <div class ="titleBox">
                                همکار گرامی
                                <br />
                                بمنظور افزایش سطح امنیت سامانه لطفا از لیست پایین افتادنی سوال امنیتی مورد نظر و پاسخ آنرا درج تا در صورت فراموش کردن کلمه عبوری خود با درج پاسخ سوال امنیتی کلمه عبوری برای شما نمایش داده شود

                            </div>
                            <div class ="titleBox">
                                <div class="containerButton">
                                    
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
        <a class="scrollToTop" id="topObject" title="به سمت بالا"></a>
        
        
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