<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Hoghogh_Show_List.aspx.vb" Inherits="W_ISM.Hoghogh_Show_List" %>

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
      <script type="text/javascript" src="JS/code.jquery.com/jquery.min.js"></script> 
    <%--loading click--%>
    
</head>
<body style ="margin :0">
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <div class="memberPanel_TopBox" id="test">
        <div onclick="location.href='empty.aspx'" class="memberPanel_Logo" style="background-image :url(<%=Session("LogoPanel")%>);"></div>
       
        <div class="memberPanel_Logout" >
            <div class="memberPanel_ContanerLogin"><a href="PanelPerson_LogIn.aspx?e=1" ><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a></div>
            
            <%--<%If Session("numberBox") = 0 Then%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx" style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a> </div>
            <%Else%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx"  style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a><div class="boxMeessageAlert"><p><%=Session("numberBox")%></p></div> </div>
            <%End If%>--%>
        </div>
    </div>
    
    <p class="buttonBar_menu"><a href="#" id="barMobileMenu" style="position:relative;top:0px;right:0px;float:right;width:35px;height:35px;display:block ;background:#6498FE;"><i class ="fa fa-bars" style="font-size :20pt;color:#fff;margin-left:25%;margin-right :25%;margin-top:10%;margin-bottom :10%;"></i></a></p><div class="memberPanel_rightBox">
        <div class="titleForm"><i class="fa fa-money icon"></i><a href="#">فیش حقوقی</a><i class="fa fa-chevron-left arrow"></i><a href="#">آرشیو فیش های حقوقی</a><i class="fa fa-chevron-left arrow"></i><a>لیست</a></div>
        
        <div class="formBox">
            
            <div class="containerForm" style="width:100%;">
                
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
                <div class="SaveBoxContainer" id="saveContainer">
                    <div class ="SaveBox" id="saveDialog" style="top:5%">
                        <p><i class='fa fa-trash-o'></i> &nbsp;اطلاعات با موفقیت از سامانه حذف گردید</p>
                        <input type="button" value="تایید" onclick="window.open('OpenHoghogh_Person_pic.aspx','_top');" /> 
                    </div>
                  </div>
                    <div class="headForm_List" >
                       <a class="ExcelIcon" href="showExcel.aspx?page=OpenHoghogh_Person_pic" target="_blank" title ="خروجی اکسل"><i class="fa fa-file-excel-o"></i></a>
                    </div>
            
                    <div class="bodyForm">
                        <%--<p style="position :relative ;top:0px;left:0px;width :100%;float:right ;direction:rtl;font-size:10pt;font-family:yekan,arial;text-align :right;padding-right :20px;margin :0;margin-top :10px"><a style ="width :90px;display:inline-block ">ار تاریخ </a> &nbsp;<asp:TextBox  Height ="30" ID="txtDate" runat ="server" Width ="80" Font-Names ="tahoma" Font-Size ="8pt" style="border:1px solid #ccc;height:25px;width:100px;font-size:9pt;font-family:yekan,arial;padding-right :5px;" AutoComplete="off" ></asp:TextBox>&nbsp;تا <asp:TextBox  Height ="30" ID="txtDate1" runat ="server" Width ="80" Font-Names ="tahoma" Font-Size ="8pt" style="border:1px solid #ccc;height:25px;width:100px;font-size:9pt;font-family:yekan,arial;padding-right :5px;" AutoComplete="off" ></asp:TextBox>&nbsp;<asp:Button class="Button_InList" ID="btnSearch" runat ="server" Text ="جستجو" Font-Names ="tahoma" Font-Size ="8pt" /></p>--%>
                        <p style="position :relative ;top:0px;left:0px;width :100%;float:right ;direction:rtl;font-size:10pt;font-family:yekan,arial;text-align :right;padding-right :20px;margin :0;margin-top :10px"><asp:Label ID="lblPage" runat ="server"  ></asp:Label></p> 
                        <asp:Label ID="lblList" runat ="server"  ></asp:Label>
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
<%=Session("scriptDelete")%>


<script type="text/javascript"  language="javascript" src="checkNumber.js"></script>
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
            $('#txtDate').calendarsPicker({ calendar: calendar });
            $('#txtDate1').calendarsPicker({ calendar: calendar });

        });

</script>
<link rel='stylesheet' type='text/css' href='ResponsiveTable/css/style.css' />
<link rel='stylesheet' type='text/css' href='ResponsiveTable/basictable.css' />
<script type='text/javascript' src='ResponsiveTable/jquery.basictable.min.js'></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#myTable').basictable();
    });
  </script>
<script >
    $(function() { $('#myAccount2').click(); });
</script>
<script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script>