<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ArticleShow.aspx.vb" Inherits="W_ISM.ArticleShow" %>
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
   
    <link rel="stylesheet" href="MenuFinal/styles.css">
    <script src="js/jquery-latest.min.js" type="text/javascript"></script>
    <script src="MenuFinal/script.js"></script>
   
   <script type ="text/javascript" src="MyScript/TopMenuFixed.js"></script>
    
  <link rel="stylesheet" href="TimeLine/css/demo.css" type="text/css" media="screen">
	<link rel="stylesheet" href="TimeLine/css/timeliner.css" type="text/css" media="screen">
	<link rel="stylesheet" href="TimeLine/css/responsive.css" type="text/css" media="screen">
	<link rel="stylesheet" href="TimeLine/inc/colorbox.css" type="text/css" media="screen">
    <link rel="stylesheet" type="text/css" href="slick1/slick.css">
    <link rel="stylesheet" type="text/css" href="slick1/slick-theme.css">
    <link href="LightBox_Simple/src/jquery.littlelightbox.css" rel="stylesheet" type="text/css">
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
         <div class ="topBar" id="test" style ="box-shadow:0px 2px 5px #c1c1c1;">
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
            <div class ="TextTitle">مقاله ها</div>
       </div>
       <div class ="MainpathBox">
            <div class ="pathBox">
                <ul>
                    <li><a href="default.aspx">صفحه اصلی</a></li>
                    <li><i class ="fa fa-angle-left"></i></li>
                    <li><a >مقاله ها</a></li>
                    <li><i class ="fa fa-angle-left"></i></li>
                    <li><a ><asp:Label ID="lblTitle" runat ="server"  ></asp:Label></a></li>
                </ul>
            </div>
       </div> 


 
      <div class ="News_MainBox">
            <div class ="News_Container">
                <div class ="news_RightBox">
                    <%=Session("fetch_TextEssay")%>
                </div>
                <div class ="news_LeftBox">
                    <div class ="recentTitle">جدیدترین مقاله ها</div>
                    <%=Session("fetch_Top_Essay")%>
                </div>
                <div class ="CommentBox">
                    <table style="font-family:Yekan;font-size :10pt;color:#333;direction:rtl;position:relative ;float:right ;width:100%;">
                        <tr><td style ="text-align :right ;"><asp:Label ID="lbl_Message" runat ="server" style="color:#FF5300;" ></asp:Label></td></tr>
                        <tr><td style ="text-align :right ;"><p>نام : <b style="color:#a20000">*</b></p><asp:TextBox MaxLength ="100" ID="name_EssayComment" runat ="server" style="font-family:yekan,arial;font-size :9pt;padding :5px 5px 5px 5px;text-align :right ;direction:rtl;border:1px solid #aaa;width:100%;min-width:250px;max-width :300px;" ></asp:TextBox></td></tr>
                        <tr><td style ="text-align :right ;"><p>پیغام : <b style="color:#a20000">*</b></p><asp:TextBox MaxLength ="500" ID="text_EssayComment" runat ="server" style="font-family:yekan,arial;font-size :9pt;padding :5px 5px 5px 5px;text-align :right ;direction:rtl;border:1px solid #aaa;height:100px;width:100%;min-width:250px;max-width :500px;resize:none;overflow:auto ;" TextMode ="MultiLine"  ></asp:TextBox></td></tr>
                        <tr><td  style ="text-align :right ;"><asp:Button ID="btn_SendComment" runat ="server" Text ="ارسال پیام"/></td></tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr><td   style ="text-align :right ;"><asp:Label ID="lbl_CommentList" runat ="server"  ></asp:Label></td></tr>
                    </table>
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
        
    </div>     
    </form>
</body>
</html>
<script src="LightBox_Simple/src/jquery.littlelightbox.js"></script>
<script>
    $('.lightbox').littleLightBox();
</script>
<script type="text/javascript" src="jquery.js"></script>
<script type ="text/javascript" src="MyScript/ScrollToView.js"></script>




<script type="text/javascript" src="Scroll.js"></script>




<%=Session("animateScript") %>



<script type ="text/javascript" src="MyScript/TopMenuBar.js"></script>
    
    
<script src="JS/code.jquery.com/jquery-1.12.4.min.js"></script>
 <script src="JS/code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
  <script src="slick1/slick.js" type="text/javascript" charset="utf-8"></script>
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
