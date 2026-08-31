<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Request_Breng.aspx.vb" Inherits="W_ISM.Request_Breng" %>

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
        <div class="titleForm"><i class="fa fa-file-text-o icon"></i><a href="#">  درخواست ها </a><i class="fa fa-chevron-left arrow"></i><a href="#">  درخواست برنج</a><i class="fa fa-chevron-left arrow"></i><a>درج</a></div>
        
        <div class="formBox">
            
            <div class="containerForm">
               
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
            
                    <div class="bodyForm" style="height:600px;">
                        <p style="position:relative ;top:0px;left:0px;width :90%;padding :5%;font-size:12pt;font-family:yekan;direction:rtl;text-align :justify;">
                            باسلام <br />
                            به اطلاع می رساند در راستای ایجاد امکانات رفاهی برای همکاران محترم شرکتی، با توجه به هماهنگی های بعمل آمده با اداره رفاه كاركنان در خصوص تهیه برنج همكارانی که متقاضی خرید برنج می باشند حداكثر تا تاريخ 1401/06/22  برای ثبت درخواست خود از طریق لینک اعلام شده وارد و اطلاعات خود را ثبت نمایند.
                            <br />
                            شايان ذكر است مقدار درخواست مي بايست از 10 تا 50 كيلوگرم براي هر همکار می باشد و باز پرداخت آن  بصورت اقساط در چهار قسط (شهریور - مهر- آبان - آذر ) و تحویل برنج در پایان مهرماه خواهد بود ، مبلغ هر كیلوگرم برنج بین 100 تا 110 هزار تومان می باشد. 
                            <br />
                               روابط عمومی 
                               <br />
                               شرکت تامین نیروی انسانی و خدمات پشتیبانی بانک مسکن

                        </p>
                        <p style="position:relative ;top:0px;left:0px;width :90%;padding :5%;font-size:12pt;font-family:yekan;direction:rtl;text-align :justify;">
                            <asp:Label ID="lblMessage" runat ="server"  ></asp:Label>
                            <br />
                            <asp:Button ID="btnCancel" Visible ="false"  runat ="server" Text ="انصراف از سفارش" style="border:0;font-size:12pt;font-family:yekan;border:0;background:orange;cursor:pointer ;padding :10px 15px 10px 15px;" />
                        </p> 
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">  مقدار درخواستی-کیلو&nbsp; *<asp:Label id="lblamount" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_amount"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">مقدار برنج درخواستی را بر گزینید</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_amount" tabindex="1" runat ="server"  onfocus="GraphicalBorder('container_amount');" onblur="GraphicalBorderRemove('container_amount');"></asp:DropDownList></li>
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


<script >
    $(function() { $('#myAccount6').click(); });
</script>