<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PanelMember_Attach.aspx.vb" Inherits="W_ISM.PanelMember_Attach" %>

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
      <script type="text/javascript" src="JS/code.jquery.com/jquery.min.js"></script> 
    <%--loading click--%>
    <link rel='stylesheet' type='text/css' href='ResponsiveTable/css/style.css' />
<link rel='stylesheet' type='text/css' href='ResponsiveTable/basictable.css' />
<script>function sendForm(){osendForm.submit();}</script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js'></script>
<script type='text/javascript' src='ResponsiveTable/jquery.basictable.min.js'></script>
<script type="text/javascript">
    $(document).ready(function() {
      $('#myTable').basictable();
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
            <div class="memberPanel_ContanerLogin"><a href="PanelMember_LogIn.aspx?e=1" style="border-right :1px solid #fff;"><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a></div>
            
            <%--<%If Session("numberBox") = 0 Then%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx" style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a> </div>
            <%Else%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx"  style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a><div class="boxMeessageAlert"><p><%=Session("numberBox")%></p></div> </div>
            <%End If%>--%>
        </div>
    </div>
    <table class="top_menu_Table" cellpadding ="3" cellspacing ="0">
        <tr><td><a href="PanelMember_MemberChart.aspx">داشبورد</a></td></tr>
        <tr><td><a href="PanelMember_ListPackage.aspx">پکیج های خریداری شده</a></td></tr>
        <tr><td><a href="PanelMember_Hesab.aspx">وضعیت مالی</a></td></tr>
        <tr><td><a href="PanelMember_BuyPackage.aspx">خرید پکیج</a></td></tr>
        <tr><td><a href="PanelMember_CustomerSp.aspx">سفارش تبلیغ در </a></td></tr>
        <tr><td><a href="PanelMember_ChangePassword.aspx">تغییر کلمه عبوری</a></td></tr>
        <tr><td><a href="PanelMember_Rules.aspx">قرارداد مشتری</a></td></tr>
        <tr><td><a href="PanelMember_Attach.aspx">مدیریت صفحه مشتری</a></td></tr>
        <tr><td><a href="PanelMember_EditProfile.aspx">پروفایل مشتری</a></td></tr>
   </table>

    <p class="buttonBar_menu"><a href="#" id="barMobileMenu" style="position:relative;top:0px;right:0px;float:right;width:35px;height:35px;display:block ;background:#6498FE;"><i class ="fa fa-bars" style="font-size :20pt;color:#fff;margin-left:25%;margin-right :25%;margin-top:10%;margin-bottom :10%;"></i></a></p><div class="memberPanel_rightBox">
        <div class="titleForm"><i class="fa fa-address-book icon"></i><a href="#">مدیریت صفحه مشتری</a><i class="fa fa-chevron-left arrow"></i><a>فرم</a></div>
        
        <div class="formBox">
            
            <div class="containerForm" style="width:100%;">
                <div class="SaveBoxContainer" id="saveContainer">
                    <div class ="SaveBox" id="saveDialog">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;اطلاعات با موفقیت در سامانه ثبت گردید</p>
                        <input type="button" value="تایید" onclick="closeDialog()" /> 
                    </div>
                </div>
                
                <div class="SaveBoxContainer" id="saveContainer1">
                    <div class="SaveBox1" id="saveDialog1" >
                        <p style ="text-align :right ;">لینک معرفی مشتری &nbsp;   <i title ="کپی متن" class="fa fa-clipboard" style="color:#8C8C8C;font-size :12pt;cursor:pointer" onclick="CopyTextFn('txtLink');"></i>&nbsp;</p>
                        <p><asp:TextBox ID="txtLink" runat ="server"  style="direction :ltr;font-size:10pt;font-family:Yekan;text-align :left;background :#acacac;padding :5px 5px 5px 5px;width:100%" ></asp:TextBox></p>
                        <p></p> 
                        <p><input type="button" value="خروج" onclick="closeDialog1();" /> </p>
                    </div>
                </div>

                
                <div class="InterBoxFormLeft">
                   
                    
                    
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
                       
                    </div>
            
                    <div class="bodyForm">
                        
                    
                        <table cellpadding="4"  style="width:90%;font-size:10pt;font-family:yekan,arial;border:0"   dir="rtl" >
                            <tr><td>عنوان تصویر</td><td>
                                    <asp:TextBox  runat ="server" ID="title_Attach" Font-Names ="yekan" Font-Size ="10pt"></asp:TextBox> </td></tr>
                            <tr><td>انتخاب فایل (400 در 400 پیکسل)</td><td>
                                    <asp:FileUpload   dir="ltr" runat ="server" ID="picFile_Attach" TextMode=""  Font-Names ="yekan" Font-Size ="10pt"></asp:FileUpload > </td>
                            </tr>
                            <tr>
                                <td colspan ="3" align="left" >
                                    <asp:Button ID="btnSend" style="float:none ;" runat ="server" Text ="ارسال فایل" Font-Names="tahoma"  />
                                </td>
                            </tr>
                            <tr>
                                <td colspan ="2">
                                    <asp:Label ID="lblList" runat ="server"  ></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan ="2" style="border-top:1px solid #000;border-bottom:1px solid #000;">
                                     ارسال ویدئو تبلیغاتی - سایز تا 15 مگابایت &nbsp;<br/><asp:Label ID="lblStatus_Video" runat ="server"  ></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan ="2">
                                    <iframe src="UploadFile_VideoPageCustomer.aspx" frameborder ="0" scrolling ="auto" style="width:100%;min-height:300px;" ></iframe>
                                </td>
                            </tr>
                        </table>
                        
                
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



<script type="text/javascript" >
    function closeDialog1() {
        document.getElementById("saveContainer1").style.display = "none";
    }
</script>
<script type="text/javascript" >
    function showDialog() {
        document.getElementById("saveContainer1").style.display = "block";
    }
</script>
 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>


<script type ="text/javascript" >
    function CopyTextFn(oname) {
        var copyText = document.getElementById(oname);
        copyText.select();
        document.execCommand("copy");
    }
</script>
