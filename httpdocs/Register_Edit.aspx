<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register_Edit.aspx.vb" Inherits="W_ISM.Register_Edit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    
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
	        $('#birthDate_Register').calendarsPicker({calendar: calendar});
	        
        });

</script>
		
</head>
<body style ="margin :0">
    <form id="form2" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <div class="memberPanel_TopBox" id="test">
        <div onclick="location.href='empty.aspx'" class="memberPanel_Logo" style="background-image :url(<%=Session("LogoPanel")%>);"></div>
       
        <div class="memberPanel_Logout" >
            <div class="memberPanel_ContanerLogin"><a href="InputToPanel.aspx?e=1" ><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a></div>
            <%--<div class="memberPanel_ContanerLogin"><iframe src="notification.aspx" style="width:600px;height:95px;" frameborder ="0" scrolling ="no"  ></iframe></div> --%>
            <%--<%If Session("numberBox") = 0 Then%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx" style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a> </div>
            <%Else%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx"  style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a><div class="boxMeessageAlert"><p><%=Session("numberBox")%></p></div> </div>
            <%End If%>--%>
        </div>
    </div>
    
    <p class="buttonBar_menu"><a href="#" id="barMobileMenu" style="position:relative;top:0px;right:0px;float:right;width:35px;height:35px;display:block ;background:#6498FE;"><i class ="fa fa-bars" style="font-size :20pt;color:#fff;margin-left:25%;margin-right :25%;margin-top:10%;margin-bottom :10%;"></i></a></p><div class="memberPanel_rightBox">
        <div class="titleForm">مدیریت </a><i class="fa fa-chevron-left arrow"></i><a href="#">مشتری</a><i class="fa fa-chevron-left arrow"></i><a>ویرایش</a></div>
        
        <div class="formBox">
            
            <div class="containerForm">
                <div class="SaveBoxContainer" id="saveContainer">
                    <div class ="SaveBox" id="saveDialog">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;&nbsp;تغییرات با<span style="color:#888888"> موفقیت </span>در سامانه ثبت گردید</p>
                        <input type="button" value="تایید" onclick="closeDialog()" /> 
                    </div>
                </div>
                <div class="DeleteBoxContainer" id="DeleteBoxContainer" onclick="closeDeleteDialog();">
                    <div class ="DeleteBox" id="DeleteBox">
                       <iframe src="Register_Delete.aspx?rowID_Register=<%=request.QueryString("rowID_Register") %>" frameborder="0"></iframe>
                    </div>
                </div>
                <div class="InterBoxFormLeft">
                    <ul>
                        <li>
                            <a class ="LinkIcon" href="Register_List.aspx?f1=<%=request.QueryString("f1") %>&f2=<%=request.QueryString("f2") %>&f3=<%=request.QueryString("f3") %>&f4=<%=request.QueryString("f4") %>"><i class="fa  fa-pencil"></i></a>
                            <ul>
                                <li><a  class="bubbleLink" >لیست</a></li>
                            </ul>
                        </li>
                    </ul>
                    
                    <ul>
                        <li>
                            <a class ="LinkIcon" href="#" onclick="ShowDelete();"><i class="fa  fa-trash"></i></a>
                            <ul>
                                <li><a  class="bubbleLink1" >حذف</a></li>
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
                        <a href="#" title ="اطلاعات جدید" id="btnNew_top" runat ="server"   onclick="ShowDelete();"><i class="fa fa-pencil-square-o"></i></a>
                    </div>
            
                    <div class="bodyForm">
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">نام&nbsp;*  <asp:Label id="lblName_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_Name_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">لطفا نام مشتری را درج نمائید.</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="5"  onfocus="GraphicalBorder('container_Name_Register');" onblur="GraphicalBorderRemove('container_Name_Register');" ID="Name_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">نام خانوادگی&nbsp;* <asp:Label id="lblLname_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_Lname_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام خانوادگی مشتری که باید درج شود. </div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="6"  onfocus="GraphicalBorder('container_Lname_Register');" onblur="GraphicalBorderRemove('container_Lname_Register');" ID="Lname_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">نام پدر&nbsp;  <asp:Label id="lblfname_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_fname_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام پدر مشتری را در این بخش به فارسی درج نمائید. </div></li></ul></a></li>
                                    <li> <asp:TextBox lang="fa-IR"  tabindex="3"  onfocus="GraphicalBorder('container_fname_Register');" onblur="GraphicalBorderRemove('container_fname_Register');" ID="fname_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شماره شناسنامه&nbsp; <asp:Label id="lblid_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_id_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره شناسنامه مشتری را در این  درج نمائید. </div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="4" class="allownumericwithdecimal"   onfocus="GraphicalBorder('container_id_Register');" onblur="GraphicalBorderRemove('container_id_Register');" ID="id_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تابعیت&nbsp;  <asp:Label id="lbltabeiat_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_tabeiat_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تابعیت خود را در این  درج نمائید. </div></li></ul></a></li>
                                    <li> <asp:TextBox lang="fa-IR"  tabindex="5"  onfocus="GraphicalBorder('container_tabeiat_Register');" onblur="GraphicalBorderRemove('container_tabeiat_Register');" ID="tabeiat_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">جنسیت&nbsp;*  <asp:Label id="lblsex_Register" runat ="server"  class="errStyle" ></asp:Label>
                                <asp:RadioButtonList ID="opt_sex_Register" tabindex="6"  RepeatDirection ="Horizontal"  runat ="server"  >
                                    <asp:ListItem Text ="مذکر" value="1" Selected ="True" ></asp:ListItem>
                                    <asp:ListItem Text ="مونث" value="2"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">ایمیل &nbsp; <asp:Label id="lblemail_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_email_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">لطفا آدرس پست الکترونیکی مشتری درج شود</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="7"  onfocus="GraphicalBorder('container_email_Register');" onblur="GraphicalBorderRemove('container_email_Register');" ID="email_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">موبایل &nbsp;*  <asp:Label id="lblMobile_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_Mobile_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">لطفا شماره موبایل مشتری درج شود</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="7"  onfocus="GraphicalBorder('container_Mobile_Register');" onblur="GraphicalBorderRemove('container_Mobile_Register');" ID="Mobile_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">کد تلفن  &nbsp;  <asp:Label id="lblcodePhone_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_codePhone_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">کد تلفن ثابت خود را درج کنید به عنوان مثال تهران 021.</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="14" class="allownumericwithdecimal"     onfocus="GraphicalBorder('container_codePhone_Register');" onblur="GraphicalBorderRemove('container_codePhone_Register');" ID="codePhone_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تلفن &nbsp;  <asp:Label id="lblphone_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_phone_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">لطفا شماره تلفن ثابت مشتری درج شود</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="7"  onfocus="GraphicalBorder('container_phone_Register');" onblur="GraphicalBorderRemove('container_phone_Register');" ID="phone_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">کد ملی  &nbsp;*  <asp:Label id="lblmeliCode_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_meliCode_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره کد ملی مشتری است</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="8"  onfocus="GraphicalBorder('container_meliCode_Register');" onblur="GraphicalBorderRemove('container_meliCode_Register');" ID="meliCode_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تاریخ تولد &nbsp; * <asp:Label id="lblBirthDate_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_BirthDate_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تاریخ تولد مشتری است.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="13"  onfocus="GraphicalBorder('container_BirthDate_Register');" onblur="GraphicalBorderRemove('container_BirthDate_Register');" ID="BirthDate_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">کشور&nbsp; *<asp:Label id="lblcountry_Register" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_country_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">کشوری که محل سکونت خود را از لیست پایین افتادنی انتخاب نمائید</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_country_Register" tabindex="9" runat ="server"  onfocus="GraphicalBorder('container_country_Register');" onblur="GraphicalBorderRemove('container_country_Register');" AutoPostBack ="true" ></asp:DropDownList></li>                 
                                </ul>
                            </div>
                        </div>
                         <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">استان&nbsp; *<asp:Label id="lblostan_Register" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_ostan_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">استانی که محل شرکت یا خدماتی که قصد ارائه آنرا دارید را از لیست پایین افتادنی انتخاب نمائید</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_ostan_Register" tabindex="10" runat ="server"  onfocus="GraphicalBorder('container_ostan_Register');" onblur="GraphicalBorderRemove('container_ostan_Register');" AutoPostBack ="true" ></asp:DropDownList></li>                 
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">شهر&nbsp; *<asp:Label id="lblcity_Register" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_city_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شهر محل سکونت را از لیست پایین افتادنی انتخاب نمائید</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_city_Register" tabindex="11" runat ="server"  onfocus="GraphicalBorder('container_city_Register');" onblur="GraphicalBorderRemove('container_city_Register');"></asp:DropDownList></li>                 
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">آدرس  &nbsp;* <asp:Label id="lbladdress_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_address_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">آدرس منزل مشتری است.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="12"  onfocus="GraphicalBorder('container_address_Register');" onblur="GraphicalBorderRemove('container_address_Register');" ID="address_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                       <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">وضعیت تاهل&nbsp;*  <asp:Label id="lbltahol_Register" runat ="server"  class="errStyle" ></asp:Label>
                                <asp:RadioButtonList RepeatDirection ="Horizontal"  tabindex="9" ID="opt_tahol_Register" runat ="server"  >
                                    <asp:ListItem Text ="متاهل" value="1" Selected ="True" ></asp:ListItem>
                                    <asp:ListItem Text ="مجرد" value="2"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تحصیلات  &nbsp;  <asp:Label id="lblDoc_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_Doc_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">مدرک تحصیلی مشتری است.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="10"  onfocus="GraphicalBorder('container_Doc_Register');" onblur="GraphicalBorderRemove('container_Doc_Register');" ID="Doc_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                      
                        
                       <%--  <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شناسه کاربری &nbsp;  *<asp:Label id="lblUID_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_UID_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شناسه کاربری مشتری است که باید یکتا باشد.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="15"  onfocus="GraphicalBorder('container_UID_Register');" onblur="GraphicalBorderRemove('container_UID_Register');" ID="UID_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>--%>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">کلمه عبوری &nbsp;  *<asp:Label id="lblPWD_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_PWD_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">کلمه عبور مشتری است .</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="16"  onfocus="GraphicalBorder('container_PWD_Register');" onblur="GraphicalBorderRemove('container_PWD_Register');" ID="PWD_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <%--<div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">کد امنیتی &nbsp;  *<asp:Label id="lblcode_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_code_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">کد امنیتی مشتری است .</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="16"  onfocus="GraphicalBorder('container_code_Register');" onblur="GraphicalBorderRemove('container_code_Register');" ID="code_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>--%>
                         
                       <%--<div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">وضعیت &nbsp;  *<asp:Label id="lblStatus_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                           
                                <asp:RadioButtonList RepeatDirection ="Horizontal"  ID="opt_Status_Register" runat ="server" style="font-size :9pt;font-family:Yekan;" >
                                    <asp:ListItem Text ="تایید نشده" Value ="0" ></asp:ListItem>
                                    <asp:ListItem Text ="تایید شده" Value ="1" ></asp:ListItem>
                                    <asp:ListItem Text ="غیر فعال" Value ="2" ></asp:ListItem>
                                </asp:RadioButtonList>
      
                        </div>--%>
                        
                        
                       <%-- <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شماره حساب &nbsp; <asp:Label id="lblnoHesab_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="Div1"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره حساب مشتری است که باید درج شود.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="16"  onfocus="GraphicalBorder('container_noHesab_Register');" onblur="GraphicalBorderRemove('container_noHesab_Register');" ID="noHesab_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>--%>
                        
                        
                     <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شماره کارت&nbsp;  <asp:Label id="lblCardNo_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_CardNo_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره کارت اصلی مشتری است که باید درج شود.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="16"  onfocus="GraphicalBorder('container_CardNo_Register');" onblur="GraphicalBorderRemove('container_CardNo_Register');" ID="CardNo_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                     <%--   <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شعبه&nbsp;  <asp:Label id="lblshobe_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_shobe_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شعبه بانک مشتری است که باید درج شود.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="16"  onfocus="GraphicalBorder('container_shobe_Register');" onblur="GraphicalBorderRemove('container_shobe_Register');" ID="shobe_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>--%>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شبا&nbsp; <asp:Label id="lblshaba_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_shaba_Register"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره شبا بانک مشتری است که باید درج شود.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="16"  onfocus="GraphicalBorder('container_shaba_Register');" onblur="GraphicalBorderRemove('container_shaba_Register');" ID="shaba_Register" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <%-- <div class ="ContainerTextBoxObject" style="width :100%;">
                         <div class="ContainerTextBoxCaption">توضیحات&nbsp;  <asp:Label id="lbldes_Register" runat ="server"  class="errStyle" ></asp:Label></div>
                         <iframe  src="Editor_New.aspx" style ="width:90%;height:350px;visibility:visible;position:relative ;top:0px;right:0px;float:right " frameborder ="0" scrolling ="no" ></iframe>
                        </div>--%>
                        
                       
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
 
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
   
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
<script type ="text/javascript" >
    function ShowDelete(){
        var s=document.getElementById("DeleteBoxContainer");
        s.style.display="block";   
        var s1=document.getElementById("DeleteBox");
        s1.style.left="25%";
        var s2=document.getElementById("btnSaveForm");
        s2.style.display="none";  
    }
    function closeDeleteDialog()
    {
        var s=document.getElementById("DeleteBoxContainer");
        s.style .display ="none";
    }
</script>
 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>


