<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SubMenuUnder_frm.aspx.vb" Inherits="W_ISM.SubMenuUnder_frm" %>

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
     
		
</head>
<body style ="margin :0">
    <form id="form2" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <div class="memberPanel_TopBox" id="test">
        <div onclick="location.href='empty.aspx'" class="memberPanel_Logo" style="background-image :url(<%=Session("LogoPanel")%>);"></div>
       
        <div class="memberPanel_Logout" >
            <div class="memberPanel_ContanerLogin"><a href="InputToPanel_Manager.aspx?e=1" ><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a></div>
            <%--<div class="memberPanel_ContanerLogin"><iframe src="notification.aspx" style="width:600px;height:95px;" frameborder ="0" scrolling ="no"  ></iframe></div> --%>
            <%--<%If Session("numberBox") = 0 Then%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx" style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a> </div>
            <%Else%>
                <div class="memberPanel_ContanerLogin" ><a href="Member_MessageBox.aspx"  style="height:60px;width :60px;"><i class="fa fa-bell-o memberPanel_LogOut_Icon"></i></a><div class="boxMeessageAlert"><p><%=Session("numberBox")%></p></div> </div>
            <%End If%>--%>
        </div>
    </div>
    
    <p class="buttonBar_menu"><a href="#" id="barMobileMenu" style="position:relative;top:0px;right:0px;float:right;width:35px;height:35px;display:block ;background:#6498FE;"><i class ="fa fa-bars" style="font-size :20pt;color:#fff;margin-left:25%;margin-right :25%;margin-top:10%;margin-bottom :10%;"></i></a></p><div class="memberPanel_rightBox">
        <div class="titleForm"><a href="#">راه اندازی سامانه</a><i class="fa fa-chevron-left arrow"></i><a href="#">مدیریت منو فرعی</a><i class="fa fa-chevron-left arrow"></i><a>درج</a></div>
        
        <div class="formBox">
            
            <div class="containerForm">
                <div class="SaveBoxContainer" id="saveContainer">
                    <div class ="SaveBox" id="saveDialog">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;&nbsp;اطلاعات با<span style="color:#DB6767"> موفقیت </span>در سامانه ثبت گردید</p>
                        <input type="button" value="تایید" onclick="closeDialog()" /> 
                    </div>
                </div>
                <div class="InterBoxFormLeft">
                    <ul>
                        <li>
                            <a class ="LinkIcon" href="SubMenuUnder_list.aspx"><i class="fa  fa-pencil"></i></a>
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
                            <div class="ContainerTextBoxCaption">منوی اصلی &nbsp; *<asp:Label id="lblTopMenu" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_TopMenu"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">زیر منوها تحت این منو اصلی انتخابی قرار دارند</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_TopMenu" AutoPostBack ="true"  tabindex="1" runat ="server"  onfocus="GraphicalBorder('container_TopMenu');" onblur="GraphicalBorderRemove('container_TopMenu');"></asp:DropDownList></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">زیر منو &nbsp; *<asp:Label id="lblrowID_SubMenu" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_rowID_SubMenu"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">منو فرعی تحت این زیر منو انتخابی قرار دارد</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_rowID_SubMenu" tabindex="1" runat ="server"  onfocus="GraphicalBorder('container_rowID_SubMenu');" onblur="GraphicalBorderRemove('container_rowID_SubMenu');"></asp:DropDownList></li>
                                </ul>
                            </div>
                        </div>
                    
                                            
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">نام &nbsp; *<asp:Label id="lblname_SubMenuUnder" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_name_SubMenuUnder"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام منو فرعی است</div></li></ul></a></li>
                                    <li> <asp:TextBox   tabindex="1"  onfocus="GraphicalBorder('container_name_SubMenuUnder');" onblur="GraphicalBorderRemove('container_name_SubMenuUnder');" ID="name_SubMenuUnder" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">کد &nbsp; *<asp:Label id="lblcode_SubMenuUnder" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_code_SubMenuUnder"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">کد منو فرعی است که ترتیب نمایش منو فرعی را نمایش می دهد</div></li></ul></a></li>
                                    <li> <asp:TextBox   tabindex="1"  onfocus="GraphicalBorder('container_code_SubMenuUnder');" onblur="GraphicalBorderRemove('container_code_SubMenuUnder');" ID="code_SubMenuUnder" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">منبع &nbsp; *<asp:Label id="lblsource_SubMenuUnder" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_source_SubMenuUnder"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">منبع منو فرعی است </div></li></ul></a></li>
                                    <li> <asp:DropDownList  tabindex="1"  onfocus="GraphicalBorder('container_source_SubMenuUnder');" onblur="GraphicalBorderRemove('container_source_SubMenuUnder');" ID="cmb_source_SubMenuUnder"  runat ="server"  ></asp:DropDownList></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption"><asp:CheckBox ID="chk_status_SubMenuUnder" runat ="server" Text ="غیر فعال" /></div>
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
    document.getElementById("File_Gallery").onchange = function() {
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
    $(function() { $('#myAccount1').click(); });
</script>

 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>


