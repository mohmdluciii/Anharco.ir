<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FirstPage_Service_frm1.aspx.vb" Inherits="W_ISM.FirstPage_Service_frm1" %>

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
        <div class="titleForm"><a href="#">تنظیمات صفحه اول</a><i class="fa fa-chevron-left arrow"></i><a href="#">خدمات</a><i class="fa fa-chevron-left arrow"></i><a>فرم</a></div>
        
        <div class="formBox">
            
            <div class="containerForm">
                <div class="SaveBoxContainer" id="saveContainer">
                    <div class ="SaveBox" id="saveDialog">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;اطلاعات با موفقیت در سامانه ثبت گردید</p>
                        <input type="button" value="تایید" onclick="closeDialog()" /> 
                    </div>
                </div>
                <div class="InterBoxFormLeft">
                    <ul>
                        <li>
                            <a class ="LinkIcon" href="FirstPage_about_list1.aspx"><i class="fa  fa-pencil"></i></a>
                            <ul>
                                <li><a  class="bubbleLink" >لیست</a></li>
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
                            <div class="ContainerTextBoxCaption">عنوان 1&nbsp; *<asp:Label id="lbltitle1_FirstPage_Service" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_title1_FirstPage_Service"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">عنوان را درج نمایید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_title1_FirstPage_Service');" onblur="GraphicalBorderRemove('container_title1_FirstPage_Service');" ID="title1_FirstPage_Service" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">متن 1&nbsp; *<asp:Label id="lbltext1_FirstPage_Service" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" style ="height:200px;width:100%;">
                                <div class="effectContainerDiv"  id="container_text1_FirstPage_Service"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">متن را درج نمائید</div></li></ul></a></li>
                                    <li> <asp:TextBox style="height:190px;resize:none"  tabindex="1" TextMode ="MultiLine"   onfocus="GraphicalBorder('container_text1_FirstPage_Service');" onblur="GraphicalBorderRemove('container_text1_FirstPage_Service');" ID="text1_FirstPage_Service" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">عنوان 2&nbsp; *<asp:Label id="lbltitle2_FirstPage_Service" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_title2_FirstPage_Service"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">عنوان را درج نمایید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_title2_FirstPage_Service');" onblur="GraphicalBorderRemove('container_title2_FirstPage_Service');" ID="title2_FirstPage_Service" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">متن 2&nbsp; *<asp:Label id="lbltext2_FirstPage_Service" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" style ="height:200px;width:100%;">
                                <div class="effectContainerDiv"  id="container_text2_FirstPage_Service"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">متن را درج نمائید</div></li></ul></a></li>
                                    <li> <asp:TextBox style="height:190px;resize:none"  tabindex="1" TextMode ="MultiLine"   onfocus="GraphicalBorder('container_text1_FirstPage_Service');" onblur="GraphicalBorderRemove('container_text2_FirstPage_Service');" ID="text2_FirstPage_Service" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">عنوان 3&nbsp; *<asp:Label id="lbltitle3_FirstPage_Service" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_title3_FirstPage_Service"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">عنوان را درج نمایید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_title3_FirstPage_Service');" onblur="GraphicalBorderRemove('container_title3_FirstPage_Service');" ID="title3_FirstPage_Service" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">متن 3&nbsp; *<asp:Label id="lbltext3_FirstPage_Service" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" style ="height:200px;width:100%;">
                                <div class="effectContainerDiv"  id="container_text3_FirstPage_Service"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">متن را درج نمائید</div></li></ul></a></li>
                                    <li> <asp:TextBox style="height:190px;resize:none"  tabindex="1" TextMode ="MultiLine"   onfocus="GraphicalBorder('container_text1_FirstPage_Service');" onblur="GraphicalBorderRemove('container_text3_FirstPage_Service');" ID="text3_FirstPage_Service" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">عنوان 4&nbsp; *<asp:Label id="lbltitle4_FirstPage_Service" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_title4_FirstPage_Service"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">عنوان را درج نمایید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  onfocus="GraphicalBorder('container_title4_FirstPage_Service');" onblur="GraphicalBorderRemove('container_title4_FirstPage_Service');" ID="title4_FirstPage_Service" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">متن 4&nbsp; *<asp:Label id="lbltext4_FirstPage_Service" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" style ="height:200px;width:100%;">
                                <div class="effectContainerDiv"  id="container_text4_FirstPage_Service"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">متن را درج نمائید</div></li></ul></a></li>
                                    <li> <asp:TextBox style="height:190px;resize:none"  tabindex="1" TextMode ="MultiLine"   onfocus="GraphicalBorder('container_text1_FirstPage_Service');" onblur="GraphicalBorderRemove('container_text4_FirstPage_Service');" ID="text4_FirstPage_Service" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                     <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">همکاری&nbsp; *<asp:Label id="lblHamkari_FirstPage_Service" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" style ="height:200px;width:100%;">
                                <div class="effectContainerDiv"  id="container_Hamkari_FirstPage_Service"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">متن را درج نمائید</div></li></ul></a></li>
                                    <li> <asp:TextBox style="height:190px;resize:none"  tabindex="1" TextMode ="MultiLine"   onfocus="GraphicalBorder('container_Hamkari_FirstPage_Service');" onblur="GraphicalBorderRemove('container_Hamkari_FirstPage_Service');" ID="Hamkari_FirstPage_Service" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                       <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">ثبت نام&nbsp; *<asp:Label id="lblRegister_FirstPage_Service" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" style ="height:200px;width:100%;">
                                <div class="effectContainerDiv"  id="container_Register_FirstPage_Service"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">متن را درج نمائید</div></li></ul></a></li>
                                    <li> <asp:TextBox style="height:190px;resize:none"  tabindex="1" TextMode ="MultiLine"   onfocus="GraphicalBorder('container_Register_FirstPage_Service');" onblur="GraphicalBorderRemove('container_Register_FirstPage_Service');" ID="Register_FirstPage_Service" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">تخفیف های ویژه&nbsp; *<asp:Label id="lblOff_FirstPage_Service" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" style ="height:200px;width:100%;">
                                <div class="effectContainerDiv"  id="container_Off_FirstPage_Service"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">متن را درج نمائید</div></li></ul></a></li>
                                    <li> <asp:TextBox style="height:190px;resize:none"  tabindex="1" TextMode ="MultiLine"   onfocus="GraphicalBorder('container_Off_FirstPage_Service');" onblur="GraphicalBorderRemove('container_Off_FirstPage_Service');" ID="Off_FirstPage_Service" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
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


