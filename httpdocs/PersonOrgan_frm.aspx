<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PersonOrgan_frm.aspx.vb" Inherits="W_ISM.PersonOrgan_frm" %>

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
	        $('#birthDate_PersonOrgan').calendarsPicker({calendar: calendar});
	        
        });

</script>
		
</head>
<body style ="margin :0">
    <form id="form2" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"><Services><asp:ServiceReference Path="AutoCompletar1.asmx" /></Services></asp:ToolkitScriptManager>
    <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtCostCenter" ServiceMethod="Buscar" ServicePath="AutoCompletar1.asmx" MinimumPrefixLength="2" CompletionInterval="1000" EnableCaching="true" CompletionSetCount="12"  CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"></asp:AutoCompleteExtender>  
    <div class="memberPanel_TopBox" id="test">
        <div onclick="location.href='empty.aspx'" class="memberPanel_Logo" style="background-image :url(<%=Session("LogoPanel")%>);"></div>
       
        <div class="memberPanel_Logout" >
            <div class="memberPanel_ContanerLogin"><a href="..?e=1" style="border-right :1px solid #fff;"><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a></div>
           <%-- <%If Session("numberBox") = 0 Then%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx" style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a> </div>
            <%Else%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx"  style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a><div class="boxMeessageAlert"><p><%=Session("numberBox")%></p></div> </div>
            <%End If%>--%>
        </div>
    </div>
    
    <p class="buttonBar_menu"><a href="#" id="barMobileMenu" style="position:relative;top:0px;right:0px;float:right;width:35px;height:35px;display:block ;background:#6498FE;"><i class ="fa fa-bars" style="font-size :20pt;color:#fff;margin-left:25%;margin-right :25%;margin-top:10%;margin-bottom :10%;"></i></a></p><div class="memberPanel_rightBox">
        <div class="titleForm"><a href="#">مدیریت همکار</a><i class="fa fa-chevron-left arrow"></i><a href="#">اعضاء شرکت</a><i class="fa fa-chevron-left arrow"></i><a>درج</a></div>
        
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
                            <a class ="LinkIcon" href="PersonOrgan_List.aspx"><i class="fa  fa-pencil"></i></a>
                            <ul>
                                <li><a  class="bubbleLink" >لیست</a></li>
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
                        
                        
                       <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">نام &nbsp;  <asp:Label id="lblname_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_name_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام پرسنل می باشد که باید درج شود</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="1"  onfocus="GraphicalBorder('container_name_Person');" onblur="GraphicalBorderRemove('container_name_Person');" ID="name_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">نام خانوادگی&nbsp;*  <asp:Label id="lbllname_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_lname_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام  خانوادگی پرسنل است که باید درج شود.</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="2"  onfocus="GraphicalBorder('container_lname_Person');" onblur="GraphicalBorderRemove('container_lname_Person');" ID="lname_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">نام پدر&nbsp;  <asp:Label id="lblfname_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_LName_PersonOrgan"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام پدر پرسنل که باید درج شود. </div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="3"  onfocus="GraphicalBorder('container_fname_Person');" onblur="GraphicalBorderRemove('container_fname_Person');" ID="fname_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شماره شناسنامه &nbsp;  <asp:Label id="lblID_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_ID_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام پدر پرسنل است باید درج شود</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="4"  onfocus="GraphicalBorder('container_ID_Person');" onblur="GraphicalBorderRemove('container_ID_Person');" ID="ID_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                       
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">وضعیت تاهل  &nbsp;  <asp:RadioButtonList ID="opt_Tahol_Person" runat ="server" RepeatDirection ="Horizontal" tabindex="5" ><asp:ListItem Selected ="True"  Value ="1" Text ="مجرد" ></asp:ListItem><asp:ListItem Value ="2" Text ="متاهل" ></asp:ListItem></asp:RadioButtonList></div>
                        </div>
                         <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تاریخ تولد &nbsp;  <asp:Label id="lblbirthdate_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_birthdate_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تاریخ تولد پرسنل است.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="6"  onfocus="GraphicalBorder('container_birthdate_Person');" onblur="GraphicalBorderRemove('container_birthdate_Person');" ID="birthdate_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                         <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">کد ملی  &nbsp;  <asp:Label id="lblmeli_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_meli_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره کد ملی پرسنل است</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="7"  onfocus="GraphicalBorder('container_meli_Person');" onblur="GraphicalBorderRemove('container_meli_Person');" ID="meli_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شماره پرسنلی &nbsp;  <asp:Label id="lblno_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_no_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره سازمانی یا پرسنلی مربوط به پرسنل.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="8"  onfocus="GraphicalBorder('container_no_Person');" onblur="GraphicalBorderRemove('container_no_Person');" ID="no_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                       <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">محل صدور &nbsp;  <asp:Label id="lblpleaceSodor_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_pleaceSodor_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">محل صدور شناسنامه پرسنل است.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="9"  onfocus="GraphicalBorder('container_pleaceSodor_Person');" onblur="GraphicalBorderRemove('container_pleaceSodor_Person');" ID="pleaceSodor_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                       <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">آخرین مدرک تحصیلی &nbsp;  <asp:Label id="lbldoc_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_doc_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">مدرک تحصیلی پرسنل است.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="10"  onfocus="GraphicalBorder('container_doc_Person');" onblur="GraphicalBorderRemove('container_doc_Person');" ID="doc_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" style="display:none;">
                            <div class="ContainerTextBoxCaption">شماره پرسنلی &nbsp;  <asp:Label id="lblcode_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="Div1"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره پرسنلی مرتبط با پرسنلی است که می خواهید  ثبت کنید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="11" Visible ="false"  onfocus="GraphicalBorder('container_code_Person');" onblur="GraphicalBorderRemove('container_code_Person');" ID="code_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">منطقه  &nbsp;  <asp:Label id="lbltxtCostCenter" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_txtCostCenter"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">منطقه پرسنل را برگزینید</div></li></ul></a></li>
                                    <li><asp:TextBox  tabindex="12"  onfocus="GraphicalBorder('container_txtCostCenter');" onblur="GraphicalBorderRemove('container_txtCostCenter');" ID="txtCostCenter" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">منطقه  &nbsp;*  <asp:Label id="lblCostCenter" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_CostCenter"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">منطقه پرسنل را برگزینید</div></li></ul></a></li>
                                    <li><asp:DropDownList tabindex="13"  id="cmb_CostCenter" runat ="server"  onfocus="GraphicalBorder('container_CostCenter');" onblur="GraphicalBorderRemove('container_CostCenter');"></asp:DropDownList></li>
                                </ul>
                            </div>
                        </div>
                        
                        
                        
                         <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">آدرس محل سکونت &nbsp;  <asp:Label id="lbladdress_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_address_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">آدرس منزل پرسنل است.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="14"  onfocus="GraphicalBorder('container_address_Person');" onblur="GraphicalBorderRemove('container_address_Person');" ID="address_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                       
                       
                       
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شماره تلفن  &nbsp;  <asp:Label id="lblphone_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_phone_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره تلفن منزل پرسنل می باشد.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="15"  onfocus="GraphicalBorder('container_phone_Person');" onblur="GraphicalBorderRemove('container_phone_Person');" ID="phone_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">موبایل &nbsp;  <asp:Label id="lblmobile_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_mobile_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره تلفن همراه پرسنل می باشد.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="16"  onfocus="GraphicalBorder('container_mobile_Person');" onblur="GraphicalBorderRemove('container_mobile_Person');" ID="mobile_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                       
                       
                        
                       
                        
                         <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شناسه کاربری &nbsp;  *<asp:Label id="lbluid_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_uid_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شناسه کاربری پرسنل است که باید یکتا باشد.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="17"  onfocus="GraphicalBorder('container_uid_Person');" onblur="GraphicalBorderRemove('container_uid_Person');" ID="uid_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">کلمه عبوری &nbsp;  *<asp:Label id="lblpwd_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_pwd_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">کلمه عبور پرسنل است .</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="18"  onfocus="GraphicalBorder('container_pwd_Person');" onblur="GraphicalBorderRemove('container_pwd_Person');" ID="pwd_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                       
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
        	$('#birthdate_Person').calendarsPicker({ calendar: calendar });
	        
        });

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
<script >
    $(function() { $('#myAccount6').click(); });
</script>
 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>