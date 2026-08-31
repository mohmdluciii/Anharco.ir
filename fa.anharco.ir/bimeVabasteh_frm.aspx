<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="bimeVabasteh_frm.aspx.vb" Inherits="W_ISM.bimeVabasteh_frm" %>

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
     <script type ="text/javascript" src="MyScript/MenuUser.js"></script>
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
      <script type="text/javascript" src="JS/code.jquery.com/jquery.min.js"></script> 
    <%--loading click--%>
    
</head>
<body style ="margin :0">
    <form id="form2" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <div class="memberPanel_TopBox" id="test">
        <div onclick="location.href='empty.aspx'" class="memberPanel_Logo" style="background-image :url(<%=Session("LogoPanel")%>);"></div>
       
        <div class="memberPanel_Logout" >
            <div class="memberPanel_ContanerLogin"><a href="PanelPerson_LogIn.aspx?e=1" ><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a></div>
            <%--<div class="memberPanel_ContanerLogin"><iframe src="notification.aspx" style="width:600px;height:95px;" frameborder ="0" scrolling ="no"  ></iframe></div> --%>
            <%--<%If Session("numberBox") = 0 Then%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx" style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a> </div>
            <%Else%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx"  style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a><div class="boxMeessageAlert"><p><%=Session("numberBox")%></p></div> </div>
            <%End If%>--%>
        </div>
    </div>
    
    <p class="buttonBar_menu"><a href="#" id="barMobileMenu" style="position:relative;top:0px;right:0px;float:right;width:35px;height:35px;display:block ;background:#6498FE;"><i class ="fa fa-bars" style="font-size :20pt;color:#fff;margin-left:25%;margin-right :25%;margin-top:10%;margin-bottom :10%;"></i></a></p><div class="memberPanel_rightBox">
        <div class="titleForm"><i class="fa fa-medkit"></i><a href="#">خدمات بیمه</a><i class="fa fa-chevron-left arrow"></i><a href="#">درخواست بیمه تکمیلی اشخاص وابسته</a><i class="fa fa-chevron-left arrow"></i><a>درج</a></div>
        
        <div class="formBox">
            
            <div class="containerForm"  style ="width:100%;">
                
                <div class="InterBoxFormLeft">
                    
                    <ul>
                        <li>
                            <a class ="LinkIcon" href="Kartable.aspx"    ><i class="fa  fa-list-alt"></i></a>
                            <ul>
                                <li><a  class="bubbleLink1" >کارتابل</a></li>
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
                            <div class="ContainerTextBoxCaption"><asp:RadioButtonList ID="type_BimeDet" runat ="server" RepeatDirection ="Horizontal"  ><asp:ListItem Value ="1" Text ="همسر" ></asp:ListItem><asp:ListItem Value ="2" Text ="فرزند" ></asp:ListItem><asp:ListItem Value ="3" Text ="پدر" ></asp:ListItem><asp:ListItem Value ="4" Text="مادر"></asp:ListItem></asp:RadioButtonList>&nbsp;<asp:Label id="lbltype_BimeDet" runat ="server" class="errStyle" ></asp:Label></div>
                        </div>
                        <div class ="ContainerTextBoxObject">       
                        
                        </div>
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">نام&nbsp;* <asp:Label id="lblname_BimeDet" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_name_BimeDet"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام متقاضی بیمه تکمیلی وابسته است که باید وارد شود</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_name_BimeDet');" onblur="GraphicalBorderRemove('container_name_BimeDet');" ID="name_BimeDet" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">نام خانوادگی&nbsp;* <asp:Label id="lbllname_BimeDet" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_lname_BimeDet"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام خانوادگی متقاضی بیمه تکمیلی وابسته است که باید وارد شود</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_lname_BimeDet');" onblur="GraphicalBorderRemove('container_lname_BimeDet');" ID="lname_BimeDet" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">نام پدر&nbsp;* <asp:Label id="lblfname_BimeDet" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_fname_BimeDet"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام پدر متقاضی بیمه تکمیلی وابسته است که باید وارد شود</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_fname_BimeDet');" onblur="GraphicalBorderRemove('container_fname_BimeDet');" ID="fname_BimeDet" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">شماره شناسنامه&nbsp;* <asp:Label id="lblid_BimeDet" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_id_BimeDet"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره شناسنامه متقاضی بیمه تکمیلی وابسته است که باید وارد شود</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_id_BimeDet');" onblur="GraphicalBorderRemove('container_id_BimeDet');" ID="id_BimeDet" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption"> کد ملی&nbsp;* <asp:Label id="lblmeliCode_BimeDet" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_meliCode_BimeDet"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">کد ملی متقاضی بیمه تکمیلی وابسته است که باید وارد شود</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_meliCode_BimeDet');" onblur="GraphicalBorderRemove('container_meliCode_BimeDet');" ID="meliCode_BimeDet" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption"> محل صدور&nbsp;* <asp:Label id="lblSodor_BimeDet" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_Sodor_BimeDet"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">محل صدور شناسنامه متقاضی بیمه تکمیلی وابسته است که باید وارد شود</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_Sodor_BimeDet');" onblur="GraphicalBorderRemove('container_Sodor_BimeDet');" ID="Sodor_BimeDet" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption"> تاریخ تولد&nbsp;* <asp:Label id="lblBirthdate_BimeDet" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_Birthdate_BimeDet"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تاریخ تولد متقاضی بیمه تکمیلی وابسته است که باید وارد شود</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_Birthdate_BimeDet');" onblur="GraphicalBorderRemove('container_Birthdate_BimeDet');" ID="Birthdate_BimeDet" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption"> محل تولد&nbsp;* <asp:Label id="lblpleace_BimeDet" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_pleace_BimeDet"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">محل تولد متقاضی بیمه تکمیلی وابسته است که باید وارد شود</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_pleace_BimeDet');" onblur="GraphicalBorderRemove('container_pleace_BimeDet');" ID="pleace_BimeDet" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>

                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption"> جنسیت&nbsp;* <asp:RadioButtonList RepeatDirection ="Horizontal"  ID="opt_sex_BimeDet" runat ="server"  ><asp:ListItem Selected="True"   Text ="مذکر" Value="1" ></asp:ListItem><asp:ListItem Text="مونث" Value="2" ></asp:ListItem></asp:RadioButtonList></div>
                        </div>
                       
                       
                        
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption"> تابعیت&nbsp;* <asp:Label id="lbltabeiat_BimeDet" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_tabeiat_BimeDet"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تابعیت متقاضی بیمه تکمیلی وابسته است که باید وارد شود</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_tabeiat_BimeDet');" onblur="GraphicalBorderRemove('container_tabeiat_BimeDet');" ID="tabeiat_BimeDet" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                       
                        
                        
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption"> شماره بیمه&nbsp;* <asp:Label id="lblno_BimeDet" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_no_BimeDet"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره بیمه متقاضی بیمه تکمیلی وابسته است که باید وارد شود</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_no_BimeDet');" onblur="GraphicalBorderRemove('container_no_BimeDet');" ID="no_BimeDet" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">  نام سازمان ذیربط&nbsp;* <asp:Label id="lblnameSazman_BimeDet" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_nameSazman_BimeDet"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام سازمان ذیربط متقاضی بیمه تکمیلی وابسته است که باید وارد شود</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_nameSazman_BimeDet');" onblur="GraphicalBorderRemove('container_nameSazman_BimeDet');" ID="nameSazman_BimeDet" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                       
                        
                     
                        
                        <div class ="ContainerTextBoxObject" style="width:100%;">       
                            <div class="ContainerTextBoxCaption">حداکثر سایز فایل های ارسالی باید 700 کیلو بایت و نوع آن JPG باشد.</div>
                        </div>
                        
                        
                       
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption"> فایل کارت ملی  &nbsp;  <asp:Label id="lblmeliFile_BimeDet" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_meliFile_BimeDet"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">فایل کارت ملی در صورت وجود باید از هارد کامپیوتر انتخاب شود</div></li></ul></a></li>
                                    <li><input id="uploadFile" tabindex="7"  placeholder="انتخاب فایل" disabled="disabled" class="fileUpload_Style" /><div class="upload-btn-wrapper"><a href="#"  class="btn" style="height :38px;position:relative ;top:2px;left:0px;margin :0;"><i class="fa  fa-upload"></i></a><asp:FileUpload  type="file" name="myfile" runat ="server"  id="meliFile_BimeDet" /></div> </li>
                                </ul>
                            </div>
                        </div>
                        
                        
                         <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">  فایل شناسنامه&nbsp;  <asp:Label id="lblidFile_BimeDet" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="Div1"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">فایل شناسنامه در صورت وجود باید از هارد کامپیوتر انتخاب شود</div></li></ul></a></li>
                                    <li><input id="uploadFile1" tabindex="7"  placeholder="انتخاب فایل" disabled="disabled" class="fileUpload_Style" /><div class="upload-btn-wrapper"><a href="#"  class="btn" style="height :38px;position:relative ;top:2px;left:0px;margin :0;"><i class="fa  fa-upload"></i></a><asp:FileUpload  type="file" name="myfile" runat ="server"  id="idFile_BimeDet" /></div> </li>
                                </ul>
                            </div>
                        </div>
                        
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption"> صفحه اول دفترچه بیمه&nbsp;  <asp:Label id="lbldaftaBime_BimeDet" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="Div2"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">صفحه اول دفترچه بیمه در صورت وجود باید از هارد کامپیوتر انتخاب شود</div></li></ul></a></li>
                                    <li><input id="uploadFile2" tabindex="7"  placeholder="انتخاب فایل" disabled="disabled" class="fileUpload_Style" /><div class="upload-btn-wrapper"><a href="#"  class="btn" style="height :38px;position:relative ;top:2px;left:0px;margin :0;"><i class="fa  fa-upload"></i></a><asp:FileUpload  type="file" name="myfile" runat ="server"  id="daftaBime_BimeDet" /></div> </li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">  تصویر پرسنلی&nbsp;  <asp:Label id="lblpic_BimeDet" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="Div3"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">فایل کارت ملی در صورت وجود باید از هارد کامپیوتر انتخاب شود</div></li></ul></a></li>
                                    <li><input id="uploadFile3" tabindex="7"  placeholder="انتخاب فایل" disabled="disabled" class="fileUpload_Style" /><div class="upload-btn-wrapper"><a href="#"  class="btn" style="height :38px;position:relative ;top:2px;left:0px;margin :0;"><i class="fa  fa-upload"></i></a><asp:FileUpload  type="file" name="myfile" runat ="server"  id="pic_BimeDet" /></div> </li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption"> سوال امنیتی&nbsp;* <asp:Label id="lblQuestion" runat ="server" class="errStyle" style="color:#000" ></asp:Label>&nbsp; <asp:Label id="lbltxtResult" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_txtResult"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">پاسخ سوال امنیتی را درج نمائید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_txtResult');" onblur="GraphicalBorderRemove('container_txtResult');" ID="txtResult" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class="containerButton">
                            <asp:Button ID="btnNewForm" OnClientClick="StartProgressBar()"  runat ="server" Text ="جدید" />&nbsp;<asp:Button ID="btnSaveForm" OnClientClick="StartProgressBar();"  runat ="server" Text ="ثبت" />
                        </div>
                        
                        
                    </div>
                </div>
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
              <%=Session("menu_admin_dashboard")%>
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
    function GraphicalBorder(oname) {
        var myContainer = document.getElementById(oname);
        myContainer.classList.add("effectContainerDiv_active");

    }

    function GraphicalBorderRemove(oname) {
        var myContainer = document.getElementById(oname);
        myContainer.classList.remove("effectContainerDiv_active");

    }
</script>

<script  type ="text/javascript" >
    document.getElementById("meliFile_BimeDet").onchange = function() {
        document.getElementById("uploadFile").value = this.value;

    };

    document.getElementById("idFile_BimeDet").onchange = function() {
        document.getElementById("uploadFile1").value = this.value;

    };

    document.getElementById("daftaBime_BimeDet").onchange = function() {
        document.getElementById("uploadFile2").value = this.value;

    };

    document.getElementById("pic_BimeDet").onchange = function() {
        document.getElementById("uploadFile3").value = this.value;

    };
</script>
<script type="text/javascript" >
    function closeDialog() {
        document.getElementById("saveContainer").style.display = "none";
    }
</script>

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
            $('#Birthdate_BimeDet').calendarsPicker({ calendar: calendar });
        });

</script>

<script >
    $(function() { $('#myAccount1').click(); });
</script>
 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>


