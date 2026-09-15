<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Grant_frm1.aspx.vb" Inherits="W_ISM.Grant_frm1" %>

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
   #myTable td
   {
       text-align :right ;
   }
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
                    <table width="100%"  class="EditList" style="font-family :yekan,arial;font-size :10pt;"  id="myTable">
                    <colgroup ><col style="text-align :right " /><col style="text-align :right " /></colgroup>
                   <tr style="height: 0.6cm">
                        <td style="background-color: #DF1C22; color: White; font-weight: 600; text-align: center;
                            font-size: 8pt">
                           مدیریت
                        </td>
                        <td style="background-color: #BB1111; color: White; font-weight: 600; text-align: center;
                            font-size: 8pt">
                           درباره ما
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox   Font-Size="8pt" ID="chk1_1" runat="server" Text="پیام صفحه اول" />
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk2_1" runat="server" Text="خدمات شرکت" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk1_2" runat="server" Text="گالری تصاویر" />
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk2_2" runat="server" Text="معرفی اعضاء" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk1_3" runat="server" Text="مدیریت بنر" />
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk2_3" runat="server" Text="تاریخچه" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox   Font-Size="8pt" ID="chk1_4" runat="server" Text="مدیریت فرم" />
                        </td>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk2_4" runat="server" Text="خط مشی" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk1_5" runat="server" Text="استان" />
                        </td>
                         <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk2_5" runat="server" Text="دعوت به همکاری" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk1_6" runat="server" Text="فایل" />
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk2_6" runat="server" Text="چارت ساز" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk1_7" runat="server" Text="مقاله ها" />
                        </td>
                        <td>
                           
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk1_8" runat="server" Text="گروه تصاویر" />
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk2_8" runat="server" Text="بیانیه" />
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td>
                             <asp:CheckBox  Font-Size="8pt" ID="chk1_9" runat="server" Text="مدیریت اسلاید بنر" />
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk2_9" runat="server" Text="چشم انداز" />
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk1_10" runat="server" Text="مدیریت منو" />
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk2_10" runat="server" Text="پیام مدیر عامل" />
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td>
                             <asp:CheckBox  Font-Size="8pt" ID="chk1_11" runat="server" Text="6 تصویر صفحه اول" />
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk2_11" runat="server" Text="ارزش ها" />
                        </td>
                        
                    </tr>
                       
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk2_12" runat="server" Text="گواهینامه ها" />
                        </td>
                        
                    </tr>
                       
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk2_13" runat="server" Text="تقدیرنامه ها" />
                        </td>
                        
                    </tr>
                    <tr style="height: 0.6cm">
                        <td style="background-color: #7A9CCA; color: White; font-weight: 600; text-align: center;
                            font-size: 8pt">
                          اخبار مدارک
                        </td>
                        <td style="background-color: #736356; color: White; font-weight: 600; text-align: center;
                            font-size: 8pt">
                            مدیریت کاربران
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk3_1" runat="server" Text="اخبار و رویدادها" />
                        </td>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk4_1" runat="server" Text="گروه خدمات" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk3_2" runat="server" Text="ارسال خبرنامه" />
                        </td>
                        <td>
                            <asp:CheckBox   Font-Size="8pt" ID="chk4_2" runat="server" Text="معرفی مراکز رفاهی" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk3_3" runat="server" Text="لینک ها" />
                        </td>
                        <td>
                            <asp:CheckBox   Font-Size="8pt" ID="chk4_3" runat="server" Text="اطلاعیه ها" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk3_4" runat="server" Text="فیلم و ویدئو" />
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk4_4" runat="server" Text="اعضاء شرکت" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox Font-Size="8pt"   ID="chk3_5" runat="server" Text="اخبار وب سایت ها" />
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk4_5" runat="server" Text="منطقه" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk4_6" runat="server" Text="نوع گواهی اشتغال" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk4_7" runat="server" Text="گروه مقررات" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk4_8" runat="server" Text="قواعد و مقررات" />
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk4_9" runat="server" Text="وضعیت استخدام" />
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk4_10" runat="server" Text="گروه سوالات" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk4_11" runat="server" Text=" سوالات" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk4_12" runat="server" Text=" گروه آموزش" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:CheckBox  Font-Size="8pt" ID="chk4_13" runat="server" Text=" آموزش" />
                        </td>
                    </tr>
                   
                   
                    <tr style="height: 0.6cm">
                        <td style="background-color: #D278FE; color: White; font-weight: 600; text-align: center;
                            font-size: 8pt">
                           تماس با ما
                        </td>
                        <td style="background-color: #a20000; color: White; font-weight: 600; text-align: center;
                            font-size: 8pt">
                           گالری تصاویر
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk5_1" runat="server" Text="تماس با ما" />
                        </td>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk6_1" runat="server" Text="گالری تصاویر" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk5_2" runat="server" Text="تماس با مدیریت" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox Font-Size="8pt" ID="chk5_3" runat="server" Text="گزارش تماس با مدیریت" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox   Font-Size="8pt" ID="chk5_4" runat="server" Text="نظر سنجی" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox   Font-Size="8pt" ID="chk5_5" runat="server" Text="آمار بازدید سایت" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox   Font-Size="8pt" ID="chk5_6" runat="server" Text="اعضاء خبرنامه" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox   Font-Size="8pt" ID="chk5_7" runat="server" Text="گزارش نظرسنجی" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    
                     <tr>
                        <td>
                            <asp:CheckBox   Font-Size="8pt" ID="chk5_8" runat="server" Text="گزارش صدور کارت" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:CheckBox   Font-Size="8pt" ID="chk5_9" runat="server" Text="گزارش فرم" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:CheckBox   Font-Size="8pt" ID="chk5_10" runat="server" Text="گزارش نظرات مقاله ها" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:CheckBox   Font-Size="8pt" ID="chk5_11" runat="server" Text="گزارش ارزیابی سایت ها" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan ="2">
                            <table style="width :100%" dir="rtl" id="myTable">
                                <tr style="height :0.8cm"><td colspan ="2" style="background-color :DarkGoldenrod;color:#ffffff;font-size:9pt;font-family:Tahoma;font-weight:600" align ="center">همکاران</td></tr>
                                <tr>
                                    <td class="style1"><asp:CheckBox  Font-Size="8pt" ID="chk7_1" runat="server" Text="گواهی اشتغال بکار" /></td>
                                    <td><asp:CheckBox  Font-Size="8pt" ID="chk7_2" runat="server" Text="بیمه تکمیلی" /></td>
                                </tr>
                                <tr>
                                    <td class="style1"><asp:CheckBox  Font-Size="8pt" ID="chk7_3" runat="server" Text="بیمه تکمیلی وابسته" /></td>
                                    <td><asp:CheckBox  Font-Size="8pt" ID="chk7_4" runat="server" Text="سوالات قوانین و مقررات" /></td>
                                </tr>
                                <tr>
                                    <td class="style1"><asp:CheckBox  Font-Size="8pt" ID="chk7_5" runat="server" Text="پیشنهادات و انتقادات" /></td>
                                    <td><asp:CheckBox  Font-Size="8pt" ID="chk7_6" runat="server" Text="تغییرات" /></td>
                                </tr>
                                 <tr>
                                    <td class="style1"><asp:CheckBox  Font-Size="8pt" ID="chk7_7" runat="server" Text="مراکز رفاهی" /></td>
                                    <td><asp:CheckBox  Font-Size="8pt" ID="chk7_8" runat="server" Text="علی الحساب" /></td>
                                </tr>
                                <tr>
                                    <td class="style1"><asp:CheckBox  Font-Size="8pt" ID="chk7_9" runat="server" Text="افتتاح فیش حقوقی" /></td>
                                    <td><asp:CheckBox  Font-Size="8pt" ID="chk7_10" runat="server" Text="ارسال فایل فیش های حقوقی" /></td>
                                </tr>
                                 <tr>
                                    <td class="style1"><asp:CheckBox  Font-Size="8pt" ID="chk7_11" runat="server" Text="پرسشنامه تقاضای کار" /></td>
                                    <td class="style1"><asp:CheckBox  Font-Size="8pt" ID="chk7_12" runat="server" Text="بیمه عمر و حوادث" /></td>
                                </tr>
                                <tr>
                                    <td class="style1"><asp:CheckBox  Font-Size="8pt" ID="chk7_13" runat="server" Text="انصراف بیمه تکمیلی" /></td>
                                    <td class="style1"><asp:CheckBox  Font-Size="8pt" ID="chk7_14" runat="server" Text="انصراف بیمه عمر و حوادث" /></td>
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