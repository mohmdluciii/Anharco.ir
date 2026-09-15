<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Person_Edit1.aspx.vb" Inherits="W_ISM.Person_Edit1" %>

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
	        $('#birthDate_Person').calendarsPicker({calendar: calendar});
	        
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
            <div class="memberPanel_ContanerLogin"><a href="..?e=1" style="border-right :1px solid #fff;"><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a></div>
           <%-- <%If Session("numberBox") = 0 Then%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx" style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a> </div>
            <%Else%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx"  style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a><div class="boxMeessageAlert"><p><%=Session("numberBox")%></p></div> </div>
            <%End If%>--%>
        </div>
    </div>
    
    <p class="buttonBar_menu"><a href="#" id="barMobileMenu" style="position:relative;top:0px;right:0px;float:right;width:35px;height:35px;display:block ;background:#6498FE;"><i class ="fa fa-bars" style="font-size :20pt;color:#fff;margin-left:25%;margin-right :25%;margin-top:10%;margin-bottom :10%;"></i></a></p><div class="memberPanel_rightBox">
        <div class="titleForm"><a href="#">چارت سازمانی</a><i class="fa fa-chevron-left arrow"></i><a href="#">پرسنل</a><i class="fa fa-chevron-left arrow"></i><a>ویرایش</a></div>
        
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
                       <iframe src="Person_Delete1.aspx?rowID_Person=<%=request.QueryString("rowID_Person") %>" frameborder="0"></iframe>
                    </div>
                </div>
                <div class="InterBoxFormLeft">
                    <ul>
                        <li>
                            <a class ="LinkIcon" href="Person_List1.aspx?f1=<%=request.QueryString("f1") %>&f2=<%=request.QueryString("f2") %>&f3=<%=request.QueryString("f3") %>&f4=<%=request.QueryString("f4") %>"><i class="fa  fa-pencil"></i></a>
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
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption"> نام کامپیوتر&nbsp; <asp:Label id="lblComputerName" runat ="server" class="errStyle" ></asp:Label></div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">کاربر اکتیو&nbsp; <asp:Label id="lblActiveUser" runat ="server" class="errStyle" ></asp:Label></div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">منطقه&nbsp; *<asp:Label id="lblRowID_Organ" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_RowID_Organ"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">منطقه ای است که پرسنل در آن قرار دارد</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_Organ" tabindex="1" runat ="server"  onfocus="GraphicalBorder('container_Code_Organ');" onblur="GraphicalBorderRemove('container_Code_Organ');" AutoPostBack ="true" ></asp:DropDownList></li>
                                </ul>
                            </div>
                        </div>
                    
                        
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">واحد&nbsp; *<asp:Label id="lblRowID_Unit" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_RowID_Unit"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">واحدی است که پرسنل در آن قرار دارد</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_unit" tabindex="2" runat ="server"  onfocus="GraphicalBorder('container_RowID_Unit');" onblur="GraphicalBorderRemove('container_RowID_Unit');"></asp:DropDownList></li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">بخش&nbsp; *<asp:Label id="lblRowID_Section" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_RowID_Section"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">بخشی است که پرسنل در آن قرار دارد</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_section" tabindex="3" runat ="server"  onfocus="GraphicalBorder('container_RowID_Section');" onblur="GraphicalBorderRemove('container_RowID_Section');"></asp:DropDownList></li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                       <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">عنوان &nbsp;  <asp:Label id="lblTitle_person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_Title_person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">عنوان پرسنل مانند دکتر  مهندس ...</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="4"  onfocus="GraphicalBorder('container_Title_person');" onblur="GraphicalBorderRemove('container_Title_person');" ID="Title_person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">نام&nbsp;*  <asp:Label id="lblName_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_Name_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام پرسنل است که باد درج شود.</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="5"  onfocus="GraphicalBorder('container_Name_Person');" onblur="GraphicalBorderRemove('container_Name_Person');" ID="Name_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">نام خانوادگی&nbsp;  <asp:Label id="lblLName_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_LName_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام خانوادگی پرسنل که باید درج شود. </div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="6"  onfocus="GraphicalBorder('container_LName_Person');" onblur="GraphicalBorderRemove('container_LName_Person');" ID="LName_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شماره شناسنامه &nbsp;  <asp:Label id="lblId_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_Id_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره شناسنامه پرسنل است</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="7"  onfocus="GraphicalBorder('container_Id_Person');" onblur="GraphicalBorderRemove('container_Id_Person');" ID="Id_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">کد ملی  &nbsp;  <asp:Label id="lblMeliID_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_MeliID_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره کد ملی پرسنل است</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="8"  onfocus="GraphicalBorder('container_MeliID_Person');" onblur="GraphicalBorderRemove('container_MeliID_Person');" ID="MeliID_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">مدرک تحصیلی  &nbsp;  <asp:Label id="lblRowID_doc" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_rowID_doc"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نوع مدرک تحصیلی پرسنل است که باید انتخاب شود</div></li></ul></a></li>
                                    <li><asp:DropDownList tabindex="9"  id="cmb_Doc" runat ="server"  onfocus="GraphicalBorder('container_rowID_doc');" onblur="GraphicalBorderRemove('container_rowID_doc');"></asp:DropDownList></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تلفن منزل  &nbsp;  <asp:Label id="lblhomePhone_person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_homePhone_person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره تلفن منزل پرسنل می باشد.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="10"  onfocus="GraphicalBorder('container_homePhone_person');" onblur="GraphicalBorderRemove('container_homePhone_person');" ID="homePhone_person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تلفن همراه &nbsp;  <asp:Label id="lblMobile_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_Mobile_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره تلفن همراه پرسنل می باشد.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="11"  onfocus="GraphicalBorder('container_Mobile_Person');" onblur="GraphicalBorderRemove('container_Mobile_Person');" ID="Mobile_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">آدرس منزل &nbsp;  <asp:Label id="lblHomeAddress_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_HomeAddress_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">آدرس منزل پرسنل است.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="12"  onfocus="GraphicalBorder('container_HomeAddress_Person');" onblur="GraphicalBorderRemove('container_HomeAddress_Person');" ID="HomeAddress_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تاریخ تولد &nbsp;  <asp:Label id="lblbirthDate_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_birthDate_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تاریخ تولد پرسنل است.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="13"  onfocus="GraphicalBorder('container_birthDate_Person');" onblur="GraphicalBorderRemove('container_birthDate_Person');" ID="birthDate_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شماره پرسنلی &nbsp;  <asp:Label id="lblnoPerson_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_noPerson_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره سازمانی یا پرسنلی مربوط به پرسنل.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="14"  onfocus="GraphicalBorder('container_noPerson_Person');" onblur="GraphicalBorderRemove('container_noPerson_Person');" ID="noPerson_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                         <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شناسه کاربری &nbsp;  *<asp:Label id="lbluid_person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_uid_person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شناسه کاربری پرسنل است که باید یکتا باشد.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="15"  onfocus="GraphicalBorder('container_uid_person');" onblur="GraphicalBorderRemove('container_uid_person');" ID="uid_person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">کلمه عبوری &nbsp;  *<asp:Label id="lblpwd_person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_pwd_person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">کلمه عبور پرسنل است .</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="16"  onfocus="GraphicalBorder('container_pwd_person');" onblur="GraphicalBorderRemove('container_pwd_person');" ID="pwd_person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
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


