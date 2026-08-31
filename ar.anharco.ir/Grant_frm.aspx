<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Grant_frm.aspx.vb" Inherits="W_ISM.Grant_frm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
   <link href = "https://fonts.googleapis.com/icon?family=Material+Icons" rel = "stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"><link href="graphic/design.css" rel="stylesheet" />
    <script type ="text/javascript" src="jquery.js"></script>
      <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
      <script type="text/javascript" src="Scroll.js"></script>
      <script type="text/javascript">
      $(function() {
        $('#myAccountBox').hide();
        $('#myAccount').click(function(){
          $('#myAccountBox')
            .toggle('slow',function(){      
              $(this).closest('#myAccount')
                .toggleClass('rolledup',$(this).is(':hidden'));
            });
        });
      });
      
      
       $(function() {
        $('#myAccountBox1').hide();
        $('#myAccount1').click(function(){
          $('#myAccountBox1')
            .toggle('slow',function(){
              $(this).closest('#myAccount1')
                .toggleClass('rolledup',$(this).is(':hidden'));
            });
        });
      });
      
       $(function() {
        $('#myAccountBox2').hide();
        $('#myAccount2').click(function(){
          $('#myAccountBox2')
            .toggle('slow',function(){
              $(this).closest('#myAccount2')
                .toggleClass('rolledup',$(this).is(':hidden'));
            });
        });
      });
      
      $(function() {
        $('#myAccountBox3').hide();
        $('#myAccount3').click(function(){
          $('#myAccountBox3')
            .toggle('slow',function(){
              $(this).closest('#myAccount3')
                .toggleClass('rolledup',$(this).is(':hidden'));
            });
        });
      });
      
      
       $(function() {
        $('#myAccountBox4').hide();
        $('#myAccount4').click(function(){
          $('#myAccountBox4')
            .toggle('slow',function(){
              $(this).closest('#myAccount4')
                .toggleClass('rolledup',$(this).is(':hidden'));
            });
        });
      });
      
       $(function() {
        $('#myAccountBox5').hide();
        $('#myAccount5').click(function(){
          $('#myAccountBox5')
            .toggle('slow',function(){
              $(this).closest('#myAccount5')
                .toggleClass('rolledup',$(this).is(':hidden'));
            });
        });
      });
      
      
       $(function() {
        $('#myAccountBox6').hide();
        $('#myAccount6').click(function(){
          $('#myAccountBox6')
            .toggle('slow',function(){
              $(this).closest('#myAccount6')
                .toggleClass('rolledup',$(this).is(':hidden'));
            });
        });
      });
      
      $(function() {
        $('#myAccountBox7').hide();
        $('#myAccount7').click(function(){
          $('#myAccountBox7')
            .toggle('slow',function(){
              $(this).closest('#myAccount7')
                .toggleClass('rolledup',$(this).is(':hidden'));
            });
        });
      });
      
       $(function() {
        $('#myAccountBox8').hide();
        $('#myAccount8').click(function(){
          $('#myAccountBox8')
            .toggle('slow',function(){
              $(this).closest('#myAccount8')
                .toggleClass('rolledup',$(this).is(':hidden'));
            });
        });
      });
      
    </script>
   <script type ="text/javascript" >
        $(function (){
            
            $('.menuMobile_Left').click(function(){
                $('.memberPanel_leftBox_top').toggle('fast',function(){
              $(this).closest('#memberPanel_LeftBox')
                .toggleClass('rolledup',$(this).is(':hidden'));
                $('.memberPanel_LeftBox').toggleClass('rightzIndexMenu');
            });
            
             $('.memberPanel_leftBox_menuBox').toggle('fast',function(){
              $(this).closest('#memberPanel_LeftBox')
                .toggleClass('rolledup',$(this).is(':hidden'));
            });
            
            
            }   
            );
        });
        
        
        
        
    </script>
      
    <style type="text/css" >
    canvas{
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
  
   
   .innerTable tr:nth-child(odd) 
	{
		background: #F7F8FC;
		
	}
	
	.innerTable tr:nth-child(even) 
	{
		background: #e6e6e6;
		
   
    </style>
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
    
    .tdGrant
    {
    	text-align:right ;
    }

    </style>
     
		
</head>
<body style ="margin :0">
    <form id="form2" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <div class="memberPanel_TopBox" id="test">
        <div onclick="location.href='empty.aspx'" class="memberPanel_Logo" style="background-image :url(<%=Session("LogoPanel")%>);"></div>
       
        <div class="memberPanel_Logout" >
            <div class="memberPanel_ContanerLogin"><a href="..?e=1" style="border-right :1px solid #fff;"><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a></div>
            <%--<%If Session("numberBox") = 0 Then%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx" style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a> </div>
            <%Else%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx"  style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a><div class="boxMeessageAlert"><p><%=Session("numberBox")%></p></div> </div>
            <%End If%>--%>
        </div>
    </div>
    
    <p class="buttonBar_menu"><a href="#" id="barMobileMenu" style="position:relative;top:0px;right:0px;float:right;width:35px;height:35px;display:block ;background:#6498FE;"><i class ="fa fa-bars" style="font-size :20pt;color:#fff;margin-left:25%;margin-right :25%;margin-top:10%;margin-bottom :10%;"></i></a></p><div class="memberPanel_rightBox">
        <div class="titleForm"><a href="#">مدیریت سایت </a><i class="fa fa-chevron-left arrow"></i><a href="#">اهدا نقش</a><i class="fa fa-chevron-left arrow"></i><a>درج</a></div>
        
        <div class="formBox">
            
            <div class="containerForm">
                <div class="SaveBoxContainer" id="saveContainer">
                    <div class ="SaveBox" id="saveDialog">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;&nbsp;اطلاعات با<span style="color:#888888"> موفقیت </span>در سامانه ثبت گردید</p>
                        <input type="button" value="تایید" onclick="closeDialog()" /> 
                    </div>
                </div>
                <div class="InterBoxFormLeft">
                    
                  
                    <ul>
                        <li>
                            <a class ="LinkIcon" href="#"  onclick="window.history.back();" ><i class="fa  fa-reply"></i></a>
                            <ul>
                                <li><a  class="bubbleLink2" >بازگشت</a></li>
                            </ul>
                        </li>
                    </ul>
                    
                    
                    <ul>
                        <li>
                            <a class ="LinkIcon" href="#" onclick="helpContainer.style.display='block';"><i class="fa  fa-question-circle "></i></a>
                            <ul>
                                <li><a  class="bubbleLink3" >راهنما</a></li>
                            </ul>
                        </li>
                    </ul>
                    
                </div>
                <div class="InterBoxFormRight" >
                    <div class="headForm" >
                        <asp:Label ID="lblHeader" runat ="server"   ></asp:Label>
                        <a href="#" title ="ثبت اطلاعات" id="btnSave_top" runat ="server" ><i class="fa fa-floppy-o"></i></a>
                        <a href="#" title ="اطلاعات جدید" id="btnNew_top" runat ="server" ><i class="fa fa-pencil-square-o"></i></a>
                    </div>
            
                    <div class="bodyForm">
                        <p style="position :relative ;top:0px;left:0px;width :100%;float:right ;direction:rtl;font-size:11pt;font-family:yekan,arial;text-align :right;padding-right :20px;">پرسنل &nbsp;<asp:DropDownList class="Combo_InList" runat ="server" dir="rtl" ID="cmb_rowID_Admin" width="200" AutoPostBack="True"></asp:DropDownList>&nbsp;<asp:Label ID="lblrowID_Admin" runat ="server" class="errStyle"  ></asp:Label></p>
                    <table width="100%"   style="font-family :yekan,arial;font-size :10pt;direction:rtl;">
                        
                        <tr style="background:#A7B8BF;color:#fff;"><td>راه اندازی سامانه</td></tr>
                        <tr>
                            <td>
                                <table style="width :100%;" class="innerTable">
                                    <colgroup ><col width="40%" /><col width="15%" /><col width="15%" /><col width="15%" /><col width="15%" /></colgroup>
                                    <tr><td></td><td>درج</td><td>لیست</td><td>ویرایش</td><td>حذف</td></tr>
                                    <tr>
                                        <td>مدیریت لوگو</td>
                                        <td><asp:CheckBox ID="chk_Upload_Logo" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>مدیریت منو</td>
                                        <td><asp:CheckBox ID="chk_TopMenu_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_TopMenu_list" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_TopMenu_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_TopMenu_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>مدیریت زیر منو</td>
                                        <td><asp:CheckBox ID="chk_subMenu_Frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_subMenu_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_subMenu_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_subMenu_Delete" runat ="server"  /></td>
                                     </tr>
                                     <tr>
                                        <td>مدیریت منو فرعی</td>
                                        <td><asp:CheckBox ID="chk_SubMenuUnder_Frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_SubMenuUnder_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_SubMenuUnder_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_SubMenuUnder_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>مدیریت محتوا</td>
                                        <td><asp:CheckBox ID="chk_Menu_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Menu_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Menu_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Menu_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>مدیریت فرم</td>
                                        <td><asp:CheckBox ID="chk_FormGenerator_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_FormGenerator_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_FormGenerator_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_FormGenerator_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>مدیریت شبکه های اجتماعی</td>
                                        <td><asp:CheckBox ID="chk_Upload_SocialNetworks"  runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>وضعیت متن رونده</td>
                                        <td><asp:CheckBox ID="chk_StatusMarquee_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_StatusMarquee_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_StatusMarquee_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_StatusMarquee_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>مدیریت کپی رایت</td>
                                        <td><asp:CheckBox ID="chk_copyRight_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_copyRight_List1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_copyRight_Edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_copyRight_Delete1" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>مدیریت لوگو فوتر</td>
                                        <td><asp:CheckBox ID="chk_Upload_Logo_Footer" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr>
                                     <tr>
                                        <td>متن فراموشی کلمه عبوری</td>
                                        <td><asp:CheckBox ID="chk_ForgetPassword_Text_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_ForgetPassword_Text_List1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_ForgetPassword_Text_Edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_ForgetPassword_Text_Delete1" runat ="server"  /></td>
                                     </tr>  
                                     <tr>
                                        <td>واترمارک</td>
                                        <td><asp:CheckBox ID="chk_Upload_Watermark" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr>  
                                     <tr>
                                        <td>آیکون سایت</td>
                                        <td><asp:CheckBox ID="chk_Upload_Icon" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr>  
                                     <tr>
                                        <td>وضعیت نمایش آمار</td>
                                        <td><asp:CheckBox ID="chk_StatusAmar_frm" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                      <tr>
                                        <td>متن  ورود به پنل همکار</td>
                                        <td><asp:CheckBox ID="chk_PanelPerson_LogIn_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_PanelPerson_LogIn_List1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_PanelPerson_LogIn_Edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_PanelPerson_LogIn_Delete1" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>واحد های سازمانی</td>
                                        <td><asp:CheckBox ID="chk_PM_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_PM_List1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_PM_Edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_PM_Delete1" runat ="server"  /></td>
                                     </tr>
                                     <tr>
                                        <td>تنظیمات نام وب سایت</td>
                                        <td><asp:CheckBox ID="chk_website_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_website_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_website_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_website_Delete1" runat ="server"  /></td>
                                     </tr>
                                      <tr>
                                        <td>نوع ایتم حقوق</td>
                                        <td><asp:CheckBox ID="chk_HoghoghItemType_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_HoghoghItemType_list1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_HoghoghItemType_Edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_HoghoghItemType_Delete1" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>تنظیم فایل حقوق</td>
                                        <td><asp:CheckBox ID="chk_HoghoghItem_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_HoghoghItem_list" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_HoghoghItem_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_HoghoghItem_Delete" runat ="server"  /></td>
                                     </tr> 
                                     
                                     <tr>
                                        <td>تنظیمات اکسل پرسنل </td>
                                        <td><asp:CheckBox ID="chk_PersonOrganSetting_frm" runat ="server"  /></td>
                                     </tr> 
                                </table> 
                            </td> 
                        </tr>
                        
                        <tr style="background:#A7B8BF;color:#fff;"><td>صفحه اصلی</td></tr>
                        <tr>
                            <td>
                                <table style="width :100%;"  class="innerTable">
                                    <colgroup ><col width="40%" /><col width="15%" /><col width="15%" /><col width="15%" /><col width="15%" /></colgroup>
                                      <tr><td></td><td>درج</td><td>لیست</td><td>ویرایش</td><td>حذف</td></tr>
                                    <tr>
                                        <td>درباره شرکت </td>
                                        <td><asp:CheckBox ID="chk_FirstPage_frm" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>متن رونده صفحه اصلی </td>
                                        <td><asp:CheckBox ID="chk_hadis_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_hadis_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_hadis_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_hadis_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>اسلاید بنر</td>
                                        <td><asp:CheckBox ID="chk_TopBanner_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_TopBanner_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_TopBanner_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_TopBanner_Delete" runat ="server"  /></td>
                                     </tr>
                                     <tr>
                                        <td>آیکون های خدمات صفحه اصلی</td>
                                        <td><asp:CheckBox ID="chk_Upload_KhadamatIcon" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>آدرس صفحه اصلی</td>
                                        <td><asp:CheckBox ID="chk_Address_frm" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>گالری صفحه اول</td>
                                        <td><asp:CheckBox ID="chk_FirstPage_PicAbout_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_FirstPage_PicAbout_List1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_FirstPage_PicAbout_Edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_FirstPage_PicAbout_Delete1" runat ="server"  /></td>
                                     </tr> 
                                     
                                     <tr>
                                        <td>مدیریت بنر</td>
                                        <td><asp:CheckBox ID="chk_Banner_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Banner_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Banner_edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Banner_delete" runat ="server"  /></td>
                                     </tr> 
                                     
                                </table> 
                            </td> 
                        </tr>  
                        
                        
                        
                        <tr style="background:#A7B8BF;color:#fff;"><td>مدیریت سایت</td></tr>
                        <tr>
                            <td>
                                <table style="width :100%;" class="innerTable">
                                    <colgroup ><col width="40%" /><col width="15%" /><col width="15%" /><col width="15%" /><col width="15%" /></colgroup>
                                      <tr><td></td><td>درج</td><td>لیست</td><td>ویرایش</td><td>حذف</td></tr>
                                    <tr>
                                        <td>پرسنل مدیریتی</td>
                                        <td><asp:CheckBox ID="chk_admin_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_admin_List1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_admin_Edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_admin_Delete1" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>اهدای نقش </td>
                                        <td><asp:CheckBox ID="chk_Grant_frm" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>استان</td>
                                        <td><asp:CheckBox ID="chk_Ostan_Frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Ostan_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Ostan_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Ostan_Delete" runat ="server"  /></td>
                                     </tr>
                                     <tr>
                                        <td>فایل</td>
                                        <td><asp:CheckBox ID="chk_Upload_File" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>ابزار ویرایش تصویر</td>
                                        <td><asp:CheckBox ID="chk_OnlinePlan_SelectSize" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>آمار بازدید سایت</td>
                                        <td><asp:CheckBox ID="chk_Report_Amar" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     
                                </table> 
                            </td> 
                        </tr>  
                        
                        
                        <tr style="background:#A7B8BF;color:#fff;"><td>درباره ما</td></tr>
                        <tr>
                            <td>
                                <table style="width :100%;" class="innerTable">
                                    <colgroup ><col width="40%" /><col width="15%" /><col width="15%" /><col width="15%" /><col width="15%" /></colgroup>
                                      <tr><td></td><td>درج</td><td>لیست</td><td>ویرایش</td><td>حذف</td></tr>
                                    <tr>
                                        <td>خدمات شرکت</td>
                                        <td><asp:CheckBox ID="chk_AboutUs_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_AboutUs_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_AboutUs_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_AboutUs_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>گروه مدیران</td>
                                        <td><asp:CheckBox ID="chk_GroupPerson_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GroupPerson_list" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GroupPerson_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GroupPerson_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>مدیران</td>
                                        <td><asp:CheckBox ID="chk_Person_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Person_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Person_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Person_Delete" runat ="server"  /></td>
                                     </tr>
                                     <tr>
                                        <td>تاریخچه</td>
                                        <td><asp:CheckBox ID="chk_History_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_History_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_History_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_History_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>خط مشی</td>
                                        <td><asp:CheckBox ID="chk_Policy_frm" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>بیانیه</td>
                                        <td><asp:CheckBox ID="chk_Baianieh_frm" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>چشم انداز</td>
                                        <td><asp:CheckBox ID="chk_View_frm" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>پیام مدیر عامل</td>
                                        <td><asp:CheckBox ID="chk_PayamModir_frm" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>ارزش ها</td>
                                        <td><asp:CheckBox ID="chk_Arzesh_frm" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     
                                     <tr>
                                        <td>گواهینامه ها</td>
                                        <td><asp:CheckBox ID="chk_Certificate_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Certificate_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Certificate_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Certificate_Delete" runat ="server"  /></td>
                                     </tr> 
                                     
                                     <tr>
                                        <td>تقدیرنامه ها</td>
                                        <td><asp:CheckBox ID="chk_Taghdirnameh_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Taghdirnameh_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Taghdirnameh_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Taghdirnameh_Delete" runat ="server"  /></td>
                                     </tr> 
                                     
                                     <tr>
                                        <td>چارت سازمانی</td>
                                        <td><asp:CheckBox ID="chk_ChartPersonPm1" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     
                                     <tr>
                                        <td>پرسنل چارت</td>
                                        <td><asp:CheckBox ID="chk_personPM_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_personPM_Edit1" runat ="server"  /></td>
                                        <td></td>
                                        <td><asp:CheckBox ID="chk_personPM_Delete1" runat ="server"  /></td>
                                     </tr> 
                                     
                                </table> 
                            </td> 
                        </tr>  
                        
                        
                        <tr style="background:#A7B8BF;color:#fff;"><td>اطلاع رسانی</td></tr>
                        <tr>
                            <td>
                                <table style="width :100%;" class="innerTable">
                                    <colgroup ><col width="40%" /><col width="15%" /><col width="15%" /><col width="15%" /><col width="15%" /></colgroup>
                                      <tr><td></td><td>درج</td><td>لیست</td><td>ویرایش</td><td>حذف</td></tr>
                                    <tr>
                                        <td>اخبار و رویدادها</td>
                                        <td><asp:CheckBox ID="chk_news_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_news_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_news_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_news_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>لینک ها</td>
                                        <td><asp:CheckBox ID="chk_Link_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Link_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Link_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Link_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>فیلم و ویدئو</td>
                                        <td><asp:CheckBox ID="chk_File_Attach_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_File_Attach_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_File_Attach_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_File_Attach_Delete" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr>
                                     <tr>
                                        <td>اطلاعیه ها</td>
                                        <td><asp:CheckBox ID="chk_Information_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Information_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Information_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Information_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>گروه خدمات</td>
                                        <td><asp:CheckBox ID="chk_GroupServices_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GroupServices_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GroupServices_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GroupServices_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>خدمات</td>
                                        <td><asp:CheckBox ID="chk_Services_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Services_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Services_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Services_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>گروه مقررات</td>
                                        <td><asp:CheckBox ID="chk_LawGroup_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_LawGroup_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_LawGroup_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_LawGroup_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>قواعد و مقررات</td>
                                        <td><asp:CheckBox ID="chk_Law_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Law_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Law_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Law_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>مقاله ها</td>
                                        <td><asp:CheckBox ID="chk_Essay_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Essay_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Essay_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Essay_Delete" runat ="server"  /></td>
                                     </tr> 
                                     
                                     <tr>
                                        <td>گروه تصاویر</td>
                                        <td><asp:CheckBox ID="chk_GalleyGroup_Frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GalleyGroup_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GalleyGroup_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GalleyGroup_Delete" runat ="server"  /></td>
                                     </tr> 
                                     
                                     <tr>
                                        <td>گالری</td>
                                        <td><asp:CheckBox ID="chk_Gallery_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Gallery_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Gallery_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Gallery_Delete" runat ="server"  /></td>
                                     </tr> 
                                     
                                     
                                     
                                </table> 
                            </td> 
                        </tr>  
                        
                        
                        <tr style="background:#A7B8BF;color:#fff;"><td>مدیریت همکار</td></tr>
                        <tr>
                            <td>
                                <table style="width :100%;" class="innerTable">
                                    <colgroup ><col width="40%" /><col width="15%" /><col width="15%" /><col width="15%" /><col width="15%" /></colgroup>
                                      <tr><td></td><td>درج</td><td>لیست</td><td>ویرایش</td><td>حذف</td></tr>
                                    <tr>
                                        <td>اعضاء شرکت</td>
                                        <td><asp:CheckBox ID="chk_PersonOrgan_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_PersonOrgan_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_PersonOrgan_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_PersonOrgan_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>نوع گواهی اشتغال</td>
                                        <td><asp:CheckBox ID="chk_TypeGavahi_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_TypeGavahi_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_TypeGavahi_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_TypeGavahi_Delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>گروه سوالات</td>
                                        <td><asp:CheckBox ID="chk_GroupFQ_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GroupFQ_list" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GroupFQ_edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GroupFQ_delete" runat ="server"  /></td>
                                     </tr>
                                     <tr>
                                        <td>سوالات</td>
                                        <td><asp:CheckBox ID="chk_FQ_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_FQ_list" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_FQ_edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_FQ_delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>گروه آموزش</td>
                                        <td><asp:CheckBox ID="chk_EducationGroup_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_EducationGroup_list" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_EducationGroup_edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_EducationGroup_delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>آموزش</td>
                                        <td><asp:CheckBox ID="chk_Education_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Education_list" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Education_edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Education_delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>راهنمای بیمه تکمیلی</td>
                                        <td><asp:CheckBox ID="chk_Rahnama_BimeTakmili_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Rahnama_BimeTakmili_list" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Rahnama_BimeTakmili_edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Rahnama_BimeTakmili_delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>فایل های بیمه</td>
                                        <td><asp:CheckBox ID="chk_Upload_FileBimeh" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>دریافت فایل</td>
                                        <td><asp:CheckBox ID="chk_Upload_FilePanelHamkar" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     
                                     <tr>
                                        <td>مدیریت جلسات</td>
                                        <td><asp:CheckBox ID="chk_session_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_session_list1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_session_edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_session_delete1" runat ="server"  /></td>
                                     </tr> 
                                     
                                     <tr>
                                        <td>پرسنل جلسات</td>
                                        <td><asp:CheckBox ID="chk_SessionPerson_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_SessionPerson_list1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_SessionPerson_Edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_SessionPerson_Delete1" runat ="server"  /></td>
                                     </tr> 
                                     
                                     <tr>
                                        <td>نظرسنجی</td>
                                        <td><asp:CheckBox ID="chk_NazarSanji_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_NazarSanji_list" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_NazarSanji_edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_NazarSanji_delete" runat ="server"  /></td>
                                     </tr> 
                                     
                                     <tr>
                                        <td>گزینه نظرسنجی</td>
                                        <td><asp:CheckBox ID="chk_GozineNazarSanji_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GozineNazarSanji_list" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GozineNazarSanji_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GozineNazarSanji_Delete" runat ="server"  /></td>
                                     </tr> 
                                     
                                </table> 
                            </td> 
                        </tr>  
                        
                        
                        
                        <tr style="background:#A7B8BF;color:#fff;"><td>ارتباط با ما</td></tr>
                        <tr>
                            <td>
                                <table style="width :100%;" class="innerTable">
                                    <colgroup ><col width="40%" /><col width="15%" /><col width="15%" /><col width="15%" /><col width="15%" /></colgroup>
                                      <tr><td></td><td>درج</td><td>لیست</td><td>ویرایش</td><td>حذف</td></tr>
                                    <tr>
                                        <td>تماس با ما</td>
                                        <td><asp:CheckBox ID="chk_ContactUs_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_ContactUs_list" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_ContactUs_edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_ContactUs_delete" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>تماس با مدیریت</td>
                                        <td><asp:CheckBox ID="chk_rep_FormContact" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>گزارش تماس با مدیریت</td>
                                        <td><asp:CheckBox ID="chk_ResponseComments_Rep" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr>
                                     <tr>
                                        <td>گزارش نظرسنجی</td>
                                        <td><asp:CheckBox ID="chk_NazarSAnji_rep" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>گزارش فرم</td>
                                        <td><asp:CheckBox ID="chk_form_Report" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>گزارش نظرات مقاله ها</td>
                                        <td><asp:CheckBox ID="chk_Rep_EssayComment" runat ="server"  /></td>
                                        <td colspan ="3"></td>
                                     </tr> 
                                     <tr>
                                        <td>راهنمای تماس</td>
                                        <td><asp:CheckBox ID="chk_PhoneBook_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_PhoneBook_list1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_PhoneBook_edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_PhoneBook_delete1" runat ="server"  /></td>
                                     </tr> 
                                     
                                </table> 
                            </td> 
                        </tr>  
                        
                        
                        <tr style="background:#A7B8BF;color:#fff;"><td>تعمیر و نگهداری</td></tr>
                        <tr>
                            <td>
                                <table style="width :100%;" class="innerTable">
                                    <colgroup ><col width="40%" /><col width="15%" /><col width="15%" /><col width="15%" /><col width="15%" /></colgroup>
                                      <tr><td></td><td>درج</td><td>لیست</td><td>ویرایش</td><td>حذف</td></tr>
                                    <tr>
                                        <td>گروه سرویس</td>
                                        <td><asp:CheckBox ID="chk_GroupServicePM_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GroupServicePM_list1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GroupServicePM_edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_GroupServicePM_delete1" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>گروه تجهیزات</td>
                                        <td><asp:CheckBox ID="chk_Group_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Group_list1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Group_edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Group_delete1" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>تجهیزات</td>
                                        <td><asp:CheckBox ID="chk_Goods_frm1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Goods_list1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Goods_edit1" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Goods_delete1" runat ="server"  /></td>
                                     </tr>
                                      <tr>
                                        <td>پرسنل تجهیزات</td>
                                        <td><asp:CheckBox ID="chk_TajhizatPerson_List" runat ="server"  /></td>
                                     </tr>
                                     
                                </table> 
                            </td> 
                        </tr>  
                        
                        
                         <tr style="background:#A7B8BF;color:#fff;"><td>پنل پرسنل اداری</td></tr>
                        <tr>
                            <td>
                                <table style="width :100%;" class="innerTable">
                                    <colgroup ><col width="40%" /><col width="15%" /><col width="15%" /><col width="15%" /><col width="15%" /></colgroup>
                                      <tr><td></td><td>لیست</td><td>عملیات</td><td>آرشیو</td><td>ویرایش</td></tr>
                                    <tr>
                                        <td>گواهی اشتغال بکار</td>
                                        <td><asp:CheckBox ID="chk_Gavahi_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Gavahi_Det" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Gavahi_Archive" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Gavahi_Edit" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>بیمه تکمیلی</td>
                                        <td><asp:CheckBox ID="chk_Bime_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Bime_Det" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Bime_Archive" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_BimeTakmily_Edit" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>بیمه تکمیلی وابسته</td>
                                        <td><asp:CheckBox ID="chk_BimeDet_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_bimeVabasteh_Det" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_bimeVabasteh_Archive" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_bimeVabasteh_Edit" runat ="server"  /></td>
                                     </tr>
                                     <tr>
                                        <td>عمر و حوادث</td>
                                        <td><asp:CheckBox ID="chk_Omr_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Omr_Det" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Omr_Archive" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Omr_Edit" runat ="server"  /></td>
                                     </tr>
                                     
                                     <tr>
                                        <td>انصراف بیمه تکمیلی</td>
                                        <td><asp:CheckBox ID="chk_EnserafBime_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_EnserafBime_Det" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_EnserafBime_Archive" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_EnserafBime_Edit" runat ="server"  /></td>
                                     </tr>
                                     
                                     <tr>
                                        <td>انصراف از بیمه عمر و حوادث</td>
                                        <td><asp:CheckBox ID="chk_EnserafOmr_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_EnserafOmr_Det" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_EnserafOmr_Archive" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_EnserafOmr_Edit" runat ="server"  /></td>
                                     </tr>
                                     
                                     <tr>
                                        <td>سوالات قوانین و مقررات</td>
                                        <td><asp:CheckBox ID="chk_LawQuestion_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_LawQuestion_Det" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_LawQuestion_Archive" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_LawQuestion_Edit" runat ="server"  /></td>
                                     </tr>
                                     
                                     <tr>
                                        <td>پیشنهادات</td>
                                        <td><asp:CheckBox ID="chk_Suggestion_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Suggestion_Det" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Suggestion_Archive" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Suggestion_Edit" runat ="server"  /></td>
                                     </tr>
                                     
                                      <tr>
                                        <td>تغییرات</td>
                                        <td><asp:CheckBox ID="chk_Change_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Change_Det" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Change_Archive" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Change_Edit" runat ="server"  /></td>
                                     </tr>
                                     
                                     <tr>
                                        <td>علی الحساب</td>
                                        <td><asp:CheckBox ID="chk_AllHesab_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_AllHesab_Det" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_AllHesab_Archive" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_AllHesab_Edit" runat ="server"  /></td>
                                     </tr>
                                     
                                     <tr>
                                        <td>تعمیر و نگهداری</td>
                                        <td><asp:CheckBox ID="chk_Request_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Request_Det" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Request_Archive" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_Request_Edit" runat ="server"  /></td>
                                     </tr>
                                     
                                      <tr>
                                        <td>نتایج نظرسنجی</td>
                                        <td><asp:CheckBox ID="chk_Poll_Report" runat ="server"  /></td> 
                                     </tr>
                                     
                                     
                                </table> 
                            </td> 
                        </tr>  
                        
                        
                        <tr style="background:#A7B8BF;color:#fff;"><td>پنل پرسنل اداری</td></tr>
                        <tr>
                            <td>
                                <table style="width :100%;" class="innerTable">
                                    <colgroup ><col width="40%" /><col width="15%" /><col width="15%" /><col width="15%" /><col width="15%" /></colgroup>
                                      <tr><td></td><td>درج</td><td>لیست</td><td>ویرایش</td><td>حذف</td></tr>
                                    <tr>
                                        <td>افتتاح فیش حقوقی</td>
                                        <td><asp:CheckBox ID="chk_OpenHoghogh_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_OpenHoghogh_List" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_OpenHoghogh_Edit" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_OpenHoghogh_Delete" runat ="server"  /></td>
                                     </tr>
                                     <tr>
                                        <td>ارسال فایل های حقوقی</td>
                                        <td><asp:CheckBox ID="chk_FishHoghogh_Upload" runat ="server"  /></td>
                                     </tr> 
                                     <tr>
                                        <td>ارسال فایل پرسنل</td>
                                        <td><asp:CheckBox ID="chk_Person_Upload" runat ="server"  /></td>
                                     </tr>
                                     <tr>
                                        <td>مدیریت اعضاء</td>
                                        <td><asp:CheckBox ID="chk_ManagerPersonOrgan_frm" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_ManagerPersonOrgan" runat ="server"  /></td>
                                        <td><asp:CheckBox ID="chk_ManagerPersonOrgan_Edit" runat ="server"  /></td>
                                     </tr>
                                     
                                     
                                     
                                </table> 
                            </td> 
                        </tr>  
                        
                    </table> 
                         
                        
                        <div class="containerButton">
                            <asp:Button ID="btnNewForm" OnClientClick="StartProgressBar()"  runat ="server" Text ="جدید" />&nbsp;<asp:Button ID="btnSaveForm" OnClientClick="StartProgressBar();"  runat ="server" Text ="ثبت" />
                        </div>
                        
                
                    </div>
                </div>
            </div>    
            <div class="containerForm_Left">
        
            </div>
        </div>
        
    </div>
    
   
    <div class="memberPanel_LeftBox">
        
        <div class="memberPanel_leftBox_top">
            <div class="boxRight_MemberName">
                <i class="fa fa-user-circle" ></i>
            </div>
            <div class="boxLeft_MemberName">
                <asp:Label ID="lblUser" runat ="server"></asp:Label>
            </div> 
        </div>
        <div class="memberPanel_leftBox_menuBox">
            <ul class="Myul">
               <%=Session("menu_admin")%>
            </ul>
        </div>
        
    </div>
     <div class="menuMobile_Left"><i class="fa fa-bars"></i></div>
    <script type="text/javascript" src="JS/jquery-scrolltofixed.js"></script>
        <script type="text/javascript">
            $('#test').scrollToFixed();

        </script>

      <%--loading click--%>
        <asp:ModalPopupExtender BackgroundCssClass="ModalBackground" ID="m" runat="server"  PopupControlID ="Panel1" TargetControlID ="hiddenField">
        </asp:ModalPopupExtender>    
        <asp:Panel ID="panel1" Direction= "RightToLeft"  runat="server"   style="z-index:1000">
        <center ><img src="images/loading.gif" style ="z-index :1000" align="middle"    /></center>
        </asp:Panel> 
        <asp:HiddenField ID="hiddenField" runat ="server" />
        <%--loading click--%>
 <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';">
        <iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe>
    </div>
    </form>
   
</body>
</html>
<script type ="text/javascript" >
    function GraphicalBorder(oname)
    {
        var myContainer=document.getElementById (oname) ;
        myContainer.classList.add("effectContainerDiv_active");
        
    }
    
     function GraphicalBorderRemove(oname)
    {
        var myContainer=document.getElementById (oname) ;
        myContainer.classList.remove("effectContainerDiv_active");
        
    }
</script>

<script  type ="text/javascript" >
    document.getElementById("Logo_Organ").onchange = function () {
    document.getElementById("uploadFile").value = this.value;
};
</script>
<script type="text/javascript" >
    function closeDialog()
    {
        document.getElementById("saveContainer").style.display ="none";  
    }
</script>
 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>



<script >
    $(function() { $('#myAccount3').click(); });
</script>