<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Chart.aspx.vb" Inherits="W_ISM.Chart1" %>

    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"  >
<head id="Head1" runat="server">
    <title></title>
    <style type ="text/css" >
        @import url('../persian-font.css');
    </style>
    <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/jquery.orgchart.css">
  <link rel="stylesheet" href="css/style.css">
  <style type="text/css">
    .orgchart .second-menu-icon {
      transition: opacity .5s;
      opacity: 0;
      right: -5px;
      top: -5px;
      z-index: 2;
      color: rgba(68, 157, 68, 0.5);
      font-size: 18px;
      position: absolute;
      cursor :pointer ;
    }
    .orgchart .second-menu-icon:hover { color: #449d44; }
    .orgchart .node:hover .second-menu-icon { opacity: 1; }
    .orgchart .node .second-menu {
      display: none;
      position: absolute;
      top: 0;
      right: -70px;
      border-radius: 35px;
      box-shadow: 0 0 10px 1px #999;
      background-color: #fff;
      z-index: 1;
    }
    .orgchart .node .second-menu .avatar {
      width: 60px;
      height: 60px;
      border-radius: 30px;
      float: left;
      margin: 5px;
    }
  </style>
  <style type="text/css">
      
    .orgchart { background: #fff;font-family :yekan,arial;font-size:12pt; }
    .orgchart td.left, .orgchart td.right, .orgchart td.top { border-color: #aaa; }
    .orgchart td>.down { background-color: #aaa; }
    .orgchart .middle-level .title { background-color: #006699; }
    .orgchart .middle-level .content { border-color: #006699; }
    .orgchart .product-dept .title { background-color: #009933; }
    .orgchart .product-dept .content { border-color: #009933; }
    .orgchart .rd-dept .title { background-color: #993366; }
    .orgchart .rd-dept .content { border-color: #993366; }
    .orgchart .pipeline1 .title { background-color: #996633; }
    .orgchart .pipeline1 .content { border-color: #996633; }
    .orgchart .frontend1 .title { background-color: #cc0066; }
    .orgchart .frontend1 .content { border-color: #cc0066; }
  </style>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
   
    <link href="../graphic/design.css" rel="stylesheet" />
    <script type ="text/javascript" src="../jquery.js"></script>
      <link rel="stylesheet" href="../fontawesome/css/font-awesome.min.css" />
      <script type="text/javascript" src="../Scroll.js"></script>
      <script type="text/javascript">
          $(function() {
              $('#myAccountBox').hide();
              $('#myAccount').click(function() {
                  $('#myAccountBox')
            .toggle('slow', function() {
                $(this).closest('#myAccount')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
              });
          });


          $(function() {
              $('#myAccountBox1').hide();
              $('#myAccount1').click(function() {
                  $('#myAccountBox1')
            .toggle('slow', function() {
                $(this).closest('#myAccount1')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
              });
          });

          $(function() {
              $('#myAccountBox2').hide();
              $('#myAccount2').click(function() {
                  $('#myAccountBox2')
            .toggle('slow', function() {
                $(this).closest('#myAccount2')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
              });
          });

          $(function() {
              $('#myAccountBox3').hide();
              $('#myAccount3').click(function() {
                  $('#myAccountBox3')
            .toggle('slow', function() {
                $(this).closest('#myAccount3')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
              });
          });


          $(function() {
              $('#myAccountBox4').hide();
              $('#myAccount4').click(function() {
                  $('#myAccountBox4')
            .toggle('slow', function() {
                $(this).closest('#myAccount4')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
              });
          });

          $(function() {
              $('#myAccountBox5').hide();
              $('#myAccount5').click(function() {
                  $('#myAccountBox5')
            .toggle('slow', function() {
                $(this).closest('#myAccount5')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
              });
          });


          $(function() {
              $('#myAccountBox6').hide();
              $('#myAccount6').click(function() {
                  $('#myAccountBox6')
            .toggle('slow', function() {
                $(this).closest('#myAccount6')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
              });
          });

          $(function() {
              $('#myAccountBox7').hide();
              $('#myAccount7').click(function() {
                  $('#myAccountBox7')
            .toggle('slow', function() {
                $(this).closest('#myAccount7')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
              });
          });

          $(function() {
              $('#myAccountBox8').hide();
              $('#myAccount8').click(function() {
                  $('#myAccountBox8')
            .toggle('slow', function() {
                $(this).closest('#myAccount8')
                .toggleClass('rolledup', $(this).is(':hidden'));
            });
              });
          });
      
    </script>
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
      <script type="text/javascript" src="JS/js/jquery.min.js"></script> 
    <%--loading click--%>
    
</head>
<body style ="margin :0">
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
  
    <div class="memberPanel_rightBox" style ="width :100%;">
        <div class="titleForm" style ="display:none;"><a href="#">مدیریت واحد های تعمیر و نگهداری</a><i class="fa fa-paperclip "></i><a href="#">پرسنل واحد های تعمیر و نگهداری</a><i class="fa fa-chevron-left arrow"></i><a>لیست</a></div>
        
        <div >
            
            <div class="containerForm formBox"  style ="width :100%;border :0;">
                <div class="SaveBoxContainer" id="saveContainer" style ="display:none;">
                    <div class ="SaveBox" id="saveDialog">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;&nbsp;تغییرات با<span style="color:#6498FE"> موفقیت </span>در سامانه ثبت گردید</p>
                        <input type="button" value="تایید" onclick="closeDialog()" /> 
                    </div>
                </div>
                <div class="InterBoxFormLeft" style ="display:none;">
                    <ul>
                        <li>
                            <a class ="LinkIcon" href="../personPM_frm1.aspx"><i class="fa  fa-pencil"></i></a>
                            <ul>
                                <li><a  class="bubbleLink" >درج</a></li>
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
                    
                    
                  
                    
                </div>
                <div class="InterBoxFormRight" style="width :100%;">
                
                  
                    
                    <div class="bodyForm" style ="border :0;">
                        <p style="position :relative ;top:0px;left:0px;width :100%;float:right ;direction:rtl;font-size:10pt;font-family:yekan,arial;text-align :right;padding-right :20px;margin-top :10px"><a style ="width :150px;display:inline-block ">واحد </a> &nbsp;<asp:DropDownList class="Combo_InList" runat ="server" dir="rtl" ID="cmb_PM" width="200" ></asp:DropDownList>&nbsp;<asp:Button ID="btnSearch" runat ="server" Text="نمایش" class="btnPublic"/></p>
                        <div id="chart-container"></div>

                            <script type="text/javascript" src="js/jquery.min.js"></script>
                            <script type="text/javascript" src="js/jquery.orgchart.js"></script>
                            <%=Session("chart") %>
                        </div>
                    </div>
                </div>    
           
        </div>
        
    </div>
    
   
    <div class="memberPanel_LeftBox" style ="display:none;">
        
        <div class="memberPanel_leftBox_top">
           <div class="boxRight_MemberName">
                <i class="fa fa-user-circle" ></i>
            </div>
            <div class="boxLeft_MemberName">
                <asp:Label ID="lblUser" runat ="server"></asp:Label>
            </div> 
        </div>
        <div class="memberPanel_leftBox_menuBox" style ="display:none ;">
            <ul class="Myul">
              <%=Session("menu_admin")%>
               
               
            </ul>
        </div>
        
    </div>
     <div class="menuMobile_Left"><i class="fa fa-bars"></i></div>
    <script type="text/javascript" src="../JS/jquery-scrolltofixed.js"></script>
        <script type="text/javascript">
            $('#test').scrollToFixed();

        </script>

      <%--loading click--%>
        <asp:ModalPopupExtender BackgroundCssClass="ModalBackground" ID="m"  Y="200" runat="server"  PopupControlID ="Panel1" TargetControlID ="hiddenField">
        </asp:ModalPopupExtender>    
        <asp:Panel ID="panel1" Direction= "RightToLeft"  runat="server"   style="z-index:1000">
        <center ><img src="../images/loading.gif" style ="z-index :1000" align="middle"    /></center>
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
    document.getElementById("Logo_Organ").onchange = function() {
        document.getElementById("uploadFile").value = this.value;
    };
</script>
<script type="text/javascript" >
    function closeDialog() {
        document.getElementById("saveContainer").style.display = "none";
    }
</script>

<script type ="text/javascript" >
    $(document).ready(function() {
        $("html").removeClass("loading");
    });
    </script>

