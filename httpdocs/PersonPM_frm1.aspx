<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PersonPM_frm1.aspx.vb" Inherits="W_ISM.PersonPM_frm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"   >
<head id="Head1" runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
   
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
      $(function() {
          $('#myAccountBox9').hide();
          $('#myAccount9').click(function() {
              $('#myAccountBox9')
            .toggle('slow', function() {
                $(this).closest('#myAccount9')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
          });
      });
      $(function() {
          $('#myAccountBox10').hide();
          $('#myAccount10').click(function() {
              $('#myAccountBox10')
            .toggle('slow', function() {
                $(this).closest('#myAccount10')
                .toggleClass('rolledup', $(this).is(':hidden'));
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
      <script type="text/javascript" src="JS/js/jquery.min.js"></script> 
    <%--loading click--%>
   
<link href="MenuNew/css/sm-core-css.css" rel="stylesheet" type="text/css" />
    <link href="MenuNew/css/sm-blue/sm-blue.css" rel="stylesheet" type="text/css" />
    <link href="MenuNew/Mega.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    window.addEventListener('keydown', function(e) { if (e.keyIdentifier == 'U+000A' || e.keyIdentifier == 'Enter' || e.keyCode == 13) { if (e.target.nodeName == 'INPUT' && e.target.type == 'text') { e.preventDefault(); return false; } } }, true);
</script>   
<script type="text/javascript">
    window.addEventListener('keydown', function(e) { if (e.keyIdentifier == 'U+000A' || e.keyIdentifier == 'Enter' || e.keyCode == 13) { if (e.target.nodeName == 'INPUT' && e.target.type == 'text') { e.preventDefault(); return false; } } }, true);
</script>    
</head>
<body style ="margin :0">
    <form id="form2" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <div class="memberPanel_TopBox" id="test">
        <div onclick="location.href='empty.aspx'" class="memberPanel_Logo" style="background-image :url(<%=Session("LogoPanel")%>);"></div>
       
        <div class="memberPanel_Logout" >
            <div class="memberPanel_ContanerLogin"><a href="InputToPanel.aspx?e=1" style="border-right :1px solid #fff;"><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a></div>
           
            
        </div>
    </div>
     
    <p class="buttonBar_menu"><a href="#" id="barMobileMenu" style="position:relative;top:0px;right:0px;float:right;width:35px;height:35px;display:block ;background:#6498FE;"><i class ="fa fa-bars" style="font-size :20pt;color:#fff;margin-left:25%;margin-right :25%;margin-top:10%;margin-bottom :10%;"></i></a></p><div class="memberPanel_rightBox">
        <div class="titleForm"><a href="#">چارت سازمانی</a><i class="fa fa-chevron-left arrow"></i><a href="#">پرسنل چارت</a><i class="fa fa-chevron-left arrow"></i><a href="PersonPM_list.aspx">درج</a></div>
        
        <div class="formBox">
            
            <div class="containerForm" style="width:98%">
                <div class="SaveBoxContainer" id="saveContainer">
                    <div class ="SaveBox" id="saveDialog">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;اطلاعات با موفقیت در سامانه ثبت گردید</p>
                        <%If Request.QueryString("rowID_PersonPM") <> "" Then%>
                        <input type="button" value="تایید" onclick="location.href='Hierarchical/ChartPersonPm1.aspx?ref=1&rowID_PersonPM=<%=request.QueryString("rowID_PersonPM") %>'" /> 
                        <%Else%>
                        <input type="button" value="تایید" onclick="location.href='Hierarchical/ChartPersonPm1.aspx?ref=1&rowID_PersonPM=<%=Session("rowID_PersonPM") %>'" /> 
                        <%End If%>
                    </div>
                </div>
                <div class="InterBoxFormLeft">
                    <ul>
                        <li>
                            <a class ="LinkIcon" href="PersonPM_edit1.aspx?rowID_PersonPM=<%=request.QueryString("rowID_PersonPM") %>"><i class="fa  fa-pencil"></i></a>
                            <ul>
                                <li><a  class="bubbleLink" >ویرایش</a></li>
                            </ul>
                        </li>
                    </ul>
                    
                 
                    
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
                    
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">واحد&nbsp; *<asp:Label id="lblRowID_PM" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_RowID_PM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">واحد تعمیر و نگهداری که پرسنل در آن مستقر است</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_PM" tabindex="1" runat ="server"  onfocus="GraphicalBorder('container_Code_PM');" onblur="GraphicalBorderRemove('container_Code_PM');"></asp:DropDownList></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" style="display:none;" >
                            <div class="ContainerTextBoxCaption"> نوع منبع&nbsp; *<asp:Label id="lbltype_PersonPM" runat ="server" class="errStyle" ></asp:Label></div>
                           
                                <asp:RadioButtonList tabindex="2"  class="cObject" AutoPostBack ="true"  style="font-family :yekan,arial;font-size :9pt;"    ID="opt_type_PersonPM" runat="server" Height="16px" Width="300px" RepeatDirection="Horizontal">
                                    <asp:ListItem Value ="1">مدیر</asp:ListItem>
                                    <asp:ListItem Selected="True"   Value ="2">تکنسین</asp:ListItem>
                                    <asp:ListItem Value ="3">شرکت</asp:ListItem>
                                </asp:RadioButtonList>
                            
                        </div>
                    
                        
                      <div style ="position :relative ;top:0px;left:0px;overflow:visible;min-height:200px;float:right ;right :0px;width:100%" id="BoxPerson" runat ="server" >  
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">نام&nbsp;*  <asp:Label id="lblname_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_name_PersonPM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام مدیر یا تکنسین می باشد.</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="3"  onfocus="GraphicalBorder('container_name_PersonPM');" onblur="GraphicalBorderRemove('container_name_PersonPM');" ID="name_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">نام خانوادگی&nbsp;*  <asp:Label id="lbllName_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_lName_PersonPM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام خانوادگی مدیر یا تکنسین می باشد </div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="4"  onfocus="GraphicalBorder('container_lName_PersonPM');" onblur="GraphicalBorderRemove('container_lName_PersonPM');" ID="lName_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" style ="display:none;">
                           
                            <div class="ContainerTextBoxCaption">کد ملی&nbsp;* <asp:Label id="lblcodeMeli_PersonPM" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_codeMeli_PersonPM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">کد ملی مدیر یا تکنسین می باشد</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="5"  onfocus="GraphicalBorder('container_codeMeli_PersonPM');" onblur="GraphicalBorderRemove('container_codeMeli_PersonPM');" ID="codeMeli_PersonPM" AutoComplete="off" runat ="server"  MaxLength="10"  ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject"  style ="display:none;">
                            <div class="ContainerTextBoxCaption">تاریخ تولد &nbsp;*  <asp:Label id="lblBirthDate_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_BirthDate_PersonPM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تاریخ تولید مدیر یا تکنسین می باشد</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="6"  onfocus="GraphicalBorder('container_BirthDate_PersonPM');" onblur="GraphicalBorderRemove('container_BirthDate_PersonPM');" ID="BirthDate_PersonPM" AutoComplete="off" runat ="server"   MaxLength="10" ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تلفن  تماس  &nbsp;*  <asp:Label id="lblphone_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                            
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_phone_PersonPM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تلفن تماس به مدیر یا تکنسین می باشد</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="7"  onfocus="GraphicalBorder('container_phone_PersonPM');" onblur="GraphicalBorderRemove('container_phone_PersonPM');" ID="phone_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject"  style ="display:none;">
                            <div class="ContainerTextBoxCaption">تلفن همراه  &nbsp;*  <asp:Label id="lblmobile_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_mobile_PersonPM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره موبایل مدیر یا تکنسین می باشد</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="8"  onfocus="GraphicalBorder('container_mobile_PersonPM');" onblur="GraphicalBorderRemove('container_mobile_PersonPM');" ID="mobile_PersonPM" AutoComplete="off" runat ="server"   MaxLength="11" ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject"  style ="display:none;">
                            <div class="ContainerTextBoxCaption">آدرس منزل  &nbsp;  <asp:Label id="lblAddress_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_Address_PersonPM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نشانی منزل مدیر یا تکنسین می باشد</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="9"  onfocus="GraphicalBorder('container_Address_PersonPM');" onblur="GraphicalBorderRemove('container_Address_PersonPM');" ID="Address_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">پست الکترونیکی  &nbsp;  <asp:Label id="lblEmail_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="Div1"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">ایمیل مدیر یا تکنسین می باشد</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="10"  onfocus="GraphicalBorder('container_Email_PersonPM');" onblur="GraphicalBorderRemove('container_Email_PersonPM');" ID="Email_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        
                        
                        
                       <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تصویر پرسنلی  &nbsp;*  <asp:Label id="lblpic_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_pic_PersonPM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تصویر خبر است که در صورت وجود باید از هارد کامپیوتر انتخاب شود</div></li></ul></a></li>
                                    <li><input id="uploadFile" tabindex="7"  placeholder="انتخاب فایل" disabled="disabled" class="fileUpload_Style" /><div class="upload-btn-wrapper"><a href="#"  class="btn" style="height :38px;position:relative ;top:2px;left:0px;margin :0;"><i class="fa  fa-upload"></i></a><asp:FileUpload  type="file" name="myfile" runat ="server"  id="pic_PersonPM" /></div> </li>
                                </ul>
                            </div>
                        </div> 
                       </div>  
                        <div style ="position :relative ;top:0px;left:0px;overflow:visible;min-height:400px;float:right ;right :0px;width:100%;display:none;" id="BoxCompany" runat ="server" >
                        
                            <div class ="ContainerTextBoxObject"  style ="display:none;">
                                <div class="ContainerTextBoxCaption">نام شرکت  &nbsp;  <asp:Label id="lblCompany_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                                <div class="ContainerTextBoxStyle">
                                    <div class="effectContainerDiv"  id="container_Company_PersonPM"></div>
                                    <ul class="ContainerQuotation">
                                        <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام شرکت پشتیبان می باشد</div></li></ul></a></li>
                                        <li> <asp:TextBox tabindex="12"  onfocus="GraphicalBorder('container_Company_PersonPM');" onblur="GraphicalBorderRemove('container_Company_PersonPM');" ID="Company_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                    </ul>
                                </div>
                            </div> 
                            
                            <div class ="ContainerTextBoxObject"  style ="display:none;">
                                <div class="ContainerTextBoxCaption">مدیر عامل  &nbsp;  <asp:Label id="lblmanager_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                                <div class="ContainerTextBoxStyle">
                                    <div class="effectContainerDiv"  id="container_manager_PersonPM"></div>
                                    <ul class="ContainerQuotation">
                                        <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام مدیر عامل شرکت پشتیبان می باشد</div></li></ul></a></li>
                                        <li> <asp:TextBox tabindex="13"  onfocus="GraphicalBorder('container_manager_PersonPM');" onblur="GraphicalBorderRemove('container_manager_PersonPM');" ID="manager_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                    </ul>
                                </div>
                            </div> 
                            
                            <div class ="ContainerTextBoxObject"  style ="display:none;">
                                <div class="ContainerTextBoxCaption">آدرس شرکت  &nbsp;  <asp:Label id="lblAddressCompany_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                                <div class="ContainerTextBoxStyle">
                                    <div class="effectContainerDiv"  id="container_AddressCompany_PersonPM"></div>
                                    <ul class="ContainerQuotation">
                                        <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نشانی پستی شرکت پشتیبان می باشد</div></li></ul></a></li>
                                        <li> <asp:TextBox tabindex="14"  onfocus="GraphicalBorder('container_AddressCompany_PersonPM');" onblur="GraphicalBorderRemove('container_AddressCompany_PersonPM');" ID="AddressCompany_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class ="ContainerTextBoxObject"  style ="display:none;">
                                <div class="ContainerTextBoxCaption">تلفن های تماس  &nbsp;  <asp:Label id="lblphoneCompany_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                                <div class="ContainerTextBoxStyle">
                                    <div class="effectContainerDiv"  id="container_phoneCompany_PersonPM"></div>
                                    <ul class="ContainerQuotation">
                                        <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره تلفن های تماس شرکت پشتیبان می باشد</div></li></ul></a></li>
                                        <li> <asp:TextBox tabindex="15"  onfocus="GraphicalBorder('container_phoneCompany_PersonPM');" onblur="GraphicalBorderRemove('container_phoneCompany_PersonPM');" ID="phoneCompany_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class ="ContainerTextBoxObject"  style ="display:none;">
                                <div class="ContainerTextBoxCaption">آدرس وب سایت  &nbsp;  <asp:Label id="lblwebSiteCompany_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                                <div class="ContainerTextBoxStyle">
                                    <div class="effectContainerDiv"  id="Div2"></div>
                                    <ul class="ContainerQuotation">
                                        <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">آدرس وب سایت شرکت پشتیبان می باشد</div></li></ul></a></li>
                                        <li> <asp:TextBox tabindex="16"  onfocus="GraphicalBorder('container_webSiteCompany_PersonPM');" onblur="GraphicalBorderRemove('container_webSiteCompany_PersonPM');" ID="webSiteCompany_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                    </ul>
                                </div>
                            </div>
                            
                            
                            <div class ="ContainerTextBoxObject"  style ="display:none;">
                                <div class="ContainerTextBoxCaption">آدرس پست الکترونیکی  &nbsp;  <asp:Label id="lblEmailCompany_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                                <div class="ContainerTextBoxStyle">
                                    <div class="effectContainerDiv"  id="Div3"></div>
                                    <ul class="ContainerQuotation">
                                        <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">آدرس پست الکترونیک شرکت پشتیبان می باشد</div></li></ul></a></li>
                                        <li> <asp:TextBox tabindex="17"  onfocus="GraphicalBorder('container_EmailCompany_PersonPM');" onblur="GraphicalBorderRemove('container_EmailCompany_PersonPM');" ID="EmailCompany_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class ="ContainerTextBoxObject"  style ="display:none;">
                                <div class="ContainerTextBoxCaption">زمینه های تخصصی  &nbsp;  <asp:Label id="lblExpertWork_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                                <div class="ContainerTextBoxStyle">
                                    <div class="effectContainerDiv"  id="container_ExpertWork_PersonPM"></div>
                                    <ul class="ContainerQuotation">
                                        <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">زمینه های تخصصی شرکت پشتیبان می باشد</div></li></ul></a></li>
                                        <li> <asp:TextBox tabindex="18"  onfocus="GraphicalBorder('container_ExpertWork_PersonPM');" onblur="GraphicalBorderRemove('container_ExpertWork_PersonPM');" ID="ExpertWork_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class ="ContainerTextBoxObject"  style ="display:none;">
                                <div class="ContainerTextBoxCaption">توضیحات  &nbsp;  <asp:Label id="lblDesCompany_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                                <div class="ContainerTextBoxStyle">
                                    <div class="effectContainerDiv"  id="container_DesCompany_PersonPM"></div>
                                    <ul class="ContainerQuotation">
                                        <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">توضیحات در مورد شرکت پشتیبان می باشد</div></li></ul></a></li>
                                        <li> <asp:TextBox tabindex="19"  onfocus="GraphicalBorder('container_DesCompany_PersonPM');" onblur="GraphicalBorderRemove('container_DesCompany_PersonPM');" ID="DesCompany_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                    </ul>
                                </div>
                            </div>
                     
                        
                       <div class ="ContainerTextBoxObject"  style ="display:none;">
                            <div class="ContainerTextBoxCaption">لوگو شرکت  &nbsp;  <asp:Label id="lbllogoCompany_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_logoCompany_PersonPM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تصویر لوگو شرکت است که در صورت وجود باید از هارد کامپیوتر انتخاب شود</div></li></ul></a></li>
                                    <li><input id="uploadFile1" tabindex="7"  placeholder="انتخاب فایل" disabled="disabled" class="fileUpload_Style" /><div class="upload-btn-wrapper"><a href="#"  class="btn" style="height :38px;position:relative ;top:2px;left:0px;margin :0;"><i class="fa  fa-upload"></i></a><asp:FileUpload  type="file" name="myfile" runat ="server"  id="logoCompany_PersonPM" /></div> </li>
                                </ul>
                            </div>
                        </div>
                      </div>   
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">سمت  &nbsp;*  <asp:Label id="lblSemat_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_Semat_PersonPM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">زمینه های تخصصی شرکت پشتیبان می باشد</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="21"  onfocus="GraphicalBorder('container_Semat_PersonPM');" onblur="GraphicalBorderRemove('container_Semat_PersonPM');" ID="Semat_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" style="display:none;">
                            <div class="ContainerTextBoxCaption">شناسه کاربری  &nbsp;*  <asp:Label id="lblUID_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_UID_PersonPM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شناسه کاربری تکنسین یا شرکت می باشد که باید منحصر باشد</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="22"  onfocus="GraphicalBorder('container_UID_PersonPM');" onblur="GraphicalBorderRemove('container_UID_PersonPM');" ID="UID_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject"  style="display:none;">
                            <div class="ContainerTextBoxCaption">کلمه عبوری  &nbsp;*  <asp:Label id="lblPWD_PersonPM" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_PWD_PersonPM"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">کلمه عبوری تکنسین یا شرکت می باشد که باید منحصر باشد</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="23"  onfocus="GraphicalBorder('container_PWD_PersonPM');" onblur="GraphicalBorderRemove('container_PWD_PersonPM');" ID="PWD_PersonPM" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="containerButton">
                            <asp:Button ID="btnNewForm" OnClientClick="StartProgressBar()"  runat ="server" Text ="جدید" />&nbsp;<asp:Button ID="btnSaveForm" OnClientClick="StartProgressBar();"  runat ="server" Text ="ثبت" />
                        </div>
                        
                
                    </div>
                </div>
            </div>    
            <div class="containerForm_Left" style ="display:none;">
            <iframe src="Calender.aspx" style ="position:relative ;top:0px;left:0px;width :100%;min-height:250px" frameborder ="0" scrolling ="no" ></iframe>
                
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
 <script type="text/javascript" src="MenuNew/libs/demo-assets/themes-switcher.js"></script>
      <%--loading click--%>
        <asp:ModalPopupExtender BackgroundCssClass="ModalBackground" ID="m"  Y="200" runat="server"  PopupControlID ="Panel1" TargetControlID ="hiddenField">
        </asp:ModalPopupExtender>    
        <asp:Panel ID="panel1" Direction= "RightToLeft"  runat="server"   style="z-index:1000">
        <center ><img src="images/loading.gif" style ="z-index :1000" align="middle"    /></center>
        </asp:Panel> 
        <asp:HiddenField ID="hiddenField" runat ="server" />
        <%--loading click--%>
 
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
   
</body>
</html>
<script src="js/jquery-2.2.0.min.js" type="text/javascript"></script>
 <script type="text/javascript" src="MenuNew/libs/demo-assets/themes-switcher.js"></script>
<!-- jQuery -->
    <script type="text/javascript" src="MenuNew/libs/jquery/jquery.js"></script>
     <link rel="stylesheet" href="Calender/jquery.calendars.picker.css">
    <script src="Calender/jquery.min.js"></script>
    <script src="Calender/jquery.plugin.js"></script>
    <script src="Calender/jquery.calendars.js"></script>
    <script src="Calender/jquery.calendars.plus.js"></script>
    <script src="Calender/jquery.calendars.picker.js"></script>
    <script src="Calender/jquery.calendars.persian.js"></script>
   
    <script type="text/javascript" src="MenuNew/jquery.smartmenus.js"></script>
    <script type="text/javascript" src="MenuNew/addons/keyboard/jquery.smartmenus.keyboard.js"></script>
    <script type="text/javascript">
        $(function() {
            $('#main-menu').smartmenus({
                subMenusSubOffsetX: 1,
                subMenusSubOffsetY: -8

            });
            $('#main-menu').smartmenus('keyboardSetHotkey', '123', 'shiftKey');
        });
    </script>
    <script type="text/javascript">
        addonScriptSrc = [['SmartMenus jQuery Keyboard Addon', '../addons/keyboard/jquery.smartmenus.keyboard.js']];
        addonScriptInit = "\t\t$('#main-menu').smartmenus('keyboardSetHotkey', 123, 'shiftKey');\n";
    </script>
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
    document.getElementById("pic_PersonPM").onchange = function () {
    document.getElementById("uploadFile").value = this.value;
};

document.getElementById("logoCompany_PersonPM").onchange = function () {
    document.getElementById("uploadFile1").value = this.value;
};
</script>
<script type="text/javascript" >
    function closeDialog()
    {
        document.getElementById("saveContainer").style.display ="none";  
    }
</script>
<script type ="text/javascript" >
    $(document).ready(function() {
        $("html").removeClass("loading");
    });
    </script>
 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>


 <script>
     $(function() {
         var calendar = $.calendars.instance('persian');
         $('#BirthDate_PersonPM').calendarsPicker({ calendar: calendar });

     });

</script>