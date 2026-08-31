<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Services_Request.aspx.vb" Inherits="W_ISM.Services_Request" %>

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
        <div class="titleForm"><i class="fa fa-file-text-o icon"></i><a href="#"> درخواست ها </a><i class="fa fa-chevron-left arrow"></i><a href="#">درخواست مراکز رفاهی </a><i class="fa fa-chevron-left arrow"></i><a>درج</a></div>
        
        <div class="formBox">
            
            <div class="containerForm">
               
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
                        <center ><h1 style ="font-family :Yekan;direction:rtl;text-align :center ;">کاربر گرامی لطفا درخواست خود را از طریق اداره رفاه بانک انجام دهید <br /> با تشکر</h1></center> 
                    </div>
                    <div class="bodyForm" style ="display:none;">
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">  مرکز رفاهی&nbsp; *<asp:Label id="lblServices" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_Services"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">مرکز رفاهی مورد نظر را که قصد درخواست از آنرا دارید را برگزینید.</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_Services" tabindex="1" runat ="server"  onfocus="GraphicalBorder('container_Services');" onblur="GraphicalBorderRemove('container_Services');"></asp:DropDownList></li>
                                </ul>
                            </div>
                        </div>
                    
                        <div class ="ContainerTextBoxObject" style="width:90%;height:190px">       
                            <div class="ContainerTextBoxCaption"> متن درخواست&nbsp;* <asp:Label id="lbltext_Services_Request" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" style="height:170px">
                                <div class="effectContainerDiv"  id="container_text_Services_Request"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">متن درخواست خود را برای مرکز رفاهی مورد نظر درج نمائید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1" style="width:90%;height:160px;" TextMode ="MultiLine"   onfocus="GraphicalBorder('container_text_Services_Request');" onblur="GraphicalBorderRemove('container_text_Services_Request');" ID="text_Services_Request" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">منطقه&nbsp;* <asp:Label id="lblkhedmat_services_Request" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_khedmat_services_Request"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">منطقه خود را درج نمائید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_khedmat_services_Request');" onblur="GraphicalBorderRemove('container_khedmat_services_Request');" ID="khedmat_services_Request" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">شماره تلفن تماس&nbsp;* <asp:Label id="lblphone_services_Request" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_phone_services_Request"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شماره تلفن تماس خود را درج نمائید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_phone_services_Request');" onblur="GraphicalBorderRemove('container_phone_services_Request');" ID="phone_services_Request" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">تاریخ مورد استفاده از&nbsp;* <asp:Label id="lblsDate_services_Request" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_sDate_services_Request"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تاریخ شروع استفاده از مرکز رفاهی درخواستی را درج کنید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_sDate_services_Request');" onblur="GraphicalBorderRemove('container_sDate_services_Request');" ID="sDate_services_Request" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">تا تاریخ&nbsp;* <asp:Label id="lbleDate_services_Request" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_eDate_services_Request"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تاریخ پایان استفاده از مرکز رفاهی درخواستی را درج کنید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_eDate_services_Request');" onblur="GraphicalBorderRemove('container_eDate_services_Request');" ID="eDate_services_Request" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">تعداد افراد همراه : <br />(عایله تحت تکفل)&nbsp;* <asp:Label id="lblnoPerson_services_Request" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_noPerson_services_Request"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تعداد افراد تحت تکفل را درج کنید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_noPerson_services_Request');" onblur="GraphicalBorderRemove('container_noPerson_services_Request');" ID="noPerson_services_Request" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
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
 
    </form>
   
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
    document.getElementById("fileMeli_Bime").onchange = function() {
        document.getElementById("uploadFile").value = this.value;

    };

    document.getElementById("FileID_Bime").onchange = function() {
        document.getElementById("uploadFile1").value = this.value;

    };

    document.getElementById("FileID_Bime1").onchange = function() {
        document.getElementById("uploadFile2").value = this.value;

    };

    document.getElementById("PicPerson_Bime").onchange = function() {
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
            $('#eDate_services_Request').calendarsPicker({ calendar: calendar });
            $('#sDate_services_Request').calendarsPicker({ calendar: calendar });
        });

</script>

 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>
<link rel='stylesheet' type='text/css' href='ResponsiveTable/css/style.css' />
<link rel='stylesheet' type='text/css' href='ResponsiveTable/basictable.css' />
<script type='text/javascript' src='ResponsiveTable/jquery.basictable.min.js'></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#myTable').basictable();
    });
  </script>

<script >
    $(function() { $('#myAccount6').click(); });
</script>
