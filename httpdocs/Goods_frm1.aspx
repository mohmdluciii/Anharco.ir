<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Goods_frm1.aspx.vb" Inherits="W_ISM.Goods_frm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"  >
<head id="Head1" runat="server">
    <title></title>

   
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
        <div class="titleForm"><a href="#">تعمیر و نگهداری</a><i class="fa fa-chevron-left arrow"></i><a href="#">تجهیزات</a><i class="fa fa-chevron-left arrow"></i><a>درج</a></div>
        
        <div class="formBox">
                       <div class="containerForm" style="width:98%">
                <div class="SaveBoxContainer" id="saveContainer">
                    <div class ="SaveBox" id="saveDialog">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;&nbsp;اطلاعات با<span style="color:#6498FE"> موفقیت </span>در سامانه ثبت گردید</p>
                        <input type="button" value="تایید" onclick="closeDialog()" /> 
                    </div>
                </div>
                <div class="InterBoxFormLeft">
                    <ul>
                        <li>
                            <a class ="LinkIcon" href="Goods_List1.aspx"><i class="fa  fa-pencil"></i></a>
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
            
                    <div class="bodyFormEdit">
                        
                        
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">منطقه&nbsp; *<asp:Label id="lblRowID_CostCenter" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_RowID_CostCenter"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">منطقه ای است که تجهیزات در آن قرار دارد</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_RowID_CostCenter" tabindex="1" runat ="server"  onfocus="GraphicalBorder('container_RowID_CostCenter');" onblur="GraphicalBorderRemove('container_RowID_CostCenter');" AutoPostBack ="true" ></asp:DropDownList></li>
                                </ul>
                            </div>
                        </div>
                    
                        
                                             
                        
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">پرسنل&nbsp; *<asp:Label id="lblRowID_Person" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_cmb_Person"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">پرسنلی است که تجهیزات به او تحویل داده شده است</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_Person" tabindex="3" runat ="server"  onfocus="GraphicalBorder('container_cmb_Person');" onblur="GraphicalBorderRemove('container_cmb_Person');"></asp:DropDownList></li>
                                    
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject">
                            <div class="ContainerTextBoxCaption">گروه تجهیزات&nbsp; *<asp:Label id="lblrowID_Group" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_cmb_Group"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">گروهی است که تجهیزات در آن قرار دارد</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_Group" tabindex="3" runat ="server"  onfocus="GraphicalBorder('container_cmb_Group');" onblur="GraphicalBorderRemove('container_cmb_Group');"></asp:DropDownList></li>
                                    
                                </ul>
                            </div>
                        </div>
                         <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">کد اموال &nbsp;  *<asp:Label id="lblcodeAmval_Tjhizat" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_codeAmval_Tjhizat"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">کد اموال تجهیز کارفرما است که از طرف کارفرما بر روی کالا قرارداده شده است</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="4"  onfocus="GraphicalBorder('container_codeAmval_Tjhizat');" onblur="GraphicalBorderRemove('container_codeAmval_Tjhizat');" ID="codeAmval_Tjhizat" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">کد فنی &nbsp;  *<asp:Label id="lblCode_Tajhizat" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="Div1"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">کد فنی است که برای شناسنایی اموال که باید منحصر باشد اختصاص می دهید</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="4"  onfocus="GraphicalBorder('container_Code_Tajhizat');" onblur="GraphicalBorderRemove('container_Code_Tajhizat');" ID="Code_Tajhizat" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                       <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">مدل &nbsp;  *<asp:Label id="lblmodel_Tajhizat" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_model_Tajhizat"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">اگر تجهیزات دارای مدل مشخصی است آنرا درج کنید</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="4"  onfocus="GraphicalBorder('container_model_Tajhizat');" onblur="GraphicalBorderRemove('container_model_Tajhizat');" ID="model_Tajhizat" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">برند&nbsp;  *<asp:Label id="lblbrand_Tajhizat" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_brand_Tajhizat"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">اگر تجهیزات برند مشخصی دارد آنرا درج کنید.</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="5"  onfocus="GraphicalBorder('container_brand_Tajhizat');" onblur="GraphicalBorderRemove('container_brand_Tajhizat');" ID="brand_Tajhizat" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تاریخ خرید&nbsp;  <asp:Label id="lbldateBuy_Tajhizat" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_dateBuy_Tajhizat"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تاریخی است که تجهیزات خریداری و وارد سازمان شده است. </div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="6"  onfocus="GraphicalBorder('container_dateBuy_Tajhizat');" onblur="GraphicalBorderRemove('container_dateBuy_Tajhizat');" ID="dateBuy_Tajhizat" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                    
                        
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تاریخ شروع گارانتی &nbsp;  <asp:Label id="lblsGaranty_Tajhizat" runat ="server"  class="errStyle" ></asp:Label></div>
                            
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_sGaranty_Tajhizat"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">اگر تجهیز گارانتی دارد تاریخی است که آن شروع شده است</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="7"  onfocus="GraphicalBorder('container_sGaranty_Tajhizat');" onblur="GraphicalBorderRemove('container_sGaranty_Tajhizat');" ID="sGaranty_Tajhizat" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تاریخ پایان گارانتی  &nbsp;  <asp:Label id="lbleGaranty_Tajhizat" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_eGaranty_Tajhizat"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">اگر تجهیز گارانتی دارد تاریخ اتمام گارانتی آن می باشد</div></li></ul></a></li>
                                    <li> <asp:TextBox tabindex="8"  onfocus="GraphicalBorder('container_eGaranty_Tajhizat');" onblur="GraphicalBorderRemove('container_eGaranty_Tajhizat');" ID="eGaranty_Tajhizat" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                       
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">شرکت خریداری شده  &nbsp;  <asp:Label id="lblcompanyBuy_Tajhizat" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_companyBuy_Tajhizat"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">شرکتی است که تجهیزات را به سازمان فروخته است.</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="10"  onfocus="GraphicalBorder('container_companyBuy_Tajhizat');" onblur="GraphicalBorderRemove('container_companyBuy_Tajhizat');" ID="companyBuy_Tajhizat" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" style="width :90%;">
                         <iframe  src="Editor_New.aspx" style ="width:90%;height:350px;visibility:visible;position:relative ;top:0px;right:0px;float:right " frameborder ="0" scrolling ="no" ></iframe>
                        </div> 
                        
                       
                        <div class="containerButton">
                            <asp:Button ID="btnNewForm" OnClientClick="StartProgressBar()"  runat ="server" Text ="جدید" />&nbsp;<asp:Button ID="btnSaveForm" OnClientClick="StartProgressBar();"  runat ="server" Text ="ثبت" />
                        </div>
                        
                
                    </div>
                </div>
            </div>    
            <div class="containerForm_Left" style="display:none;">
            
                
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
        <asp:ModalPopupExtender BackgroundCssClass="ModalBackground" ID="m"  Y="200" runat="server"  PopupControlID ="Panel1" TargetControlID ="hiddenField">
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
<script src="js/jquery-2.2.0.min.js" type="text/javascript"></script>

<!-- jQuery -->

     <link rel="stylesheet" href="Calender/jquery.calendars.picker.css">
    <script src="Calender/jquery.min.js"></script>
    <script src="Calender/jquery.plugin.js"></script>
    <script src="Calender/jquery.calendars.js"></script>
    <script src="Calender/jquery.calendars.plus.js"></script>
    <script src="Calender/jquery.calendars.picker.js"></script>
    <script src="Calender/jquery.calendars.persian.js"></script>
    

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




<script>
    $(function() {
        var calendar = $.calendars.instance('persian');
        $('#dateBuy_Tajhizat').calendarsPicker({ calendar: calendar });
        $('#sGaranty_Tajhizat').calendarsPicker({ calendar: calendar });
        $('#eGaranty_Tajhizat').calendarsPicker({ calendar: calendar });

    });

</script>
<script >
    $(function() { $('#myAccount8').click(); });
</script>
 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>