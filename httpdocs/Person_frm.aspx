<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Person_frm.aspx.vb" Inherits="Safe_Person_frm2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    
   <link href = "https://fonts.googleapis.com/icon?family=Material+Icons" rel = "stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"><link href="graphic/design.css" rel="stylesheet" />
    <link href="Graphic/StudioPanel.css?v=dockUsers1" rel="stylesheet" />
    <script type ="text/javascript" src="jquery.js"></script>
      <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
      <script type="text/javascript" src="Scroll.js"></script>
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
    <%=StudioNav.DockHtml("", "", "")%>
    <p class="buttonBar_menu"><a href="#" id="barMobileMenu" style="position:relative;top:0px;right:0px;float:right;width:35px;height:35px;display:block ;background:#6498FE;"><i class ="fa fa-bars" style="font-size :20pt;color:#fff;margin-left:25%;margin-right :25%;margin-top:10%;margin-bottom :10%;"></i></a></p><div class="memberPanel_rightBox">
        <div class="titleForm"><a href="#">درباره ما</a><i class="fa fa-chevron-left arrow"></i><a href="#">مدیران</a><i class="fa fa-chevron-left arrow"></i><a>درج</a></div>
        
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
                            <a class ="LinkIcon" href="Person_list.aspx"><i class="fa  fa-pencil"></i></a>
                            <ul>
                                <li><a  class="bubbleLink" >ویرایش</a></li>
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
                            <div class="ContainerTextBoxCaption">گروه &nbsp; *<asp:Label id="lblrowID_GroupPerson" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_rowID_GroupPerson"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">گروهی است که مدیر در آن قرار داده می شود.</div></li></ul></a></li>
                                    <li><asp:DropDownList  id="cmb_rowID_GroupPerson" tabindex="1" runat ="server"  onfocus="GraphicalBorder('container_rowID_GroupPerson');" onblur="GraphicalBorderRemove('container_rowID_GroupPerson');"></asp:DropDownList></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">نام&nbsp;* <asp:Label id="lblName_Person" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_Name_Person"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">نام و نام خانوادگی عضو می باشد</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  TextMode ="MultiLine"  onfocus="GraphicalBorder('container_Name_Person');" onblur="GraphicalBorderRemove('container_Name_Person');" ID="Name_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">سمت&nbsp;* <asp:Label id="lblSemat_Person" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_Semat_Person"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">سمت عضوی است که قرار است در سامانه سمت شود</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  TextMode ="MultiLine"  onfocus="GraphicalBorder('container_Semat_Person');" onblur="GraphicalBorderRemove('container_Semat_Person');" ID="Semat_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">تلفن&nbsp;* <asp:Label id="lblPhone_Person" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_Phone_Person"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تلفن ثبات مدیر است</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  TextMode ="MultiLine"  onfocus="GraphicalBorder('container_Phone_Person');" onblur="GraphicalBorderRemove('container_Phone_Person');" ID="Phone_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">ایمیل&nbsp;* <asp:Label id="lblEmail_Person" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_Email_Person"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">آدرس پست الکترونیکی  مدیر است</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"  TextMode ="MultiLine"  onfocus="GraphicalBorder('container_Email_Person');" onblur="GraphicalBorderRemove('container_Email_Person');" ID="Email_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                         <div class ="ContainerTextBoxObject">       
                            <div class="ContainerTextBoxCaption">فکس  <asp:Label id="lblDes_Person" runat ="server" class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle" >
                                <div class="effectContainerDiv"  id="container_Des_Person"></div>
                                <ul class="ContainerQuotation" >
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">در صورت وجو شماره فکس  درج نمائید</div></li></ul></a></li>
                                    <li> <asp:TextBox  tabindex="1"   onfocus="GraphicalBorder('container_Des_Person');" onblur="GraphicalBorderRemove('container_Des_Person');" ID="Des_Person" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                </ul>
                            </div>
                        </div>
                        <div class ="ContainerTextBoxObject" style="width :100%;">
                            <div class="ContainerTextBoxCaption"><asp:Label id="lblBio_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <iframe  src="Editor_New.aspx" style ="width:90%;height:350px;visibility:visible;position:relative ;top:0px;right:0px;float:right " frameborder ="0" scrolling ="no" ></iframe>
                        </div>
                        <div class ="ContainerTextBoxObject" >
                            <div class="ContainerTextBoxCaption">تصویر پرسنلی  &nbsp;  <asp:Label id="lblPic_Person" runat ="server"  class="errStyle" ></asp:Label></div>
                            <div class="ContainerTextBoxStyle">
                                <div class="effectContainerDiv"  id="container_pic_PersonIT"></div>
                                <ul class="ContainerQuotation">
                                    <li><a href ="#"><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">تصویر خبر است که در صورت وجود باید از هارد کامپیوتر انتخاب شود</div></li></ul></a></li>
                                    <li><input id="uploadFile" tabindex="7"  placeholder="انتخاب فایل" disabled="disabled" class="fileUpload_Style" /><div class="upload-btn-wrapper"><a href="#"  class="btn" style="height :38px;position:relative ;top:2px;left:0px;margin :0;"><i class="fa  fa-upload"></i></a><asp:FileUpload  type="file" name="myfile" runat ="server"  id="Pic_Person" onchange ="showPreview(event)"   /></div> </li>
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
        <div style="position:fixed;top:0px;left:0px;width :100%;height:100%;display:none;text-align :center ;background :rgb(0,0,0);background:rgba(0,0,0,0.8);z-index:1000000000000000000;background-repeat :no-repeat ;background-position :center center;justify-content:center;" id="objectPre" onclick="this.style.display='none';">
            <div style="position:relative ; width :365px;height:202px;border:2px dashed #fff;float :none;margin-left :auto ;margin-right :auto ;top:50%;margin-top :-100px;"></div>
        </div>
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
    document.getElementById("Pic_Person").onchange = function() {
        document.getElementById("uploadFile").value = this.value;
        showPreview(event);
    };
    function showPreview(event) {
        if (event.target.files.length > 0) {
            var src = URL.createObjectURL(event.target.files[0]);
            var p = document.getElementById("objectPre");
            p.style.backgroundImage = "url(" + src + ")";
            p.style.display = "block";
        }
    }
</script>
<script type="text/javascript" >
    function closeDialog() {
        document.getElementById("saveContainer").style.display = "none";
    }
</script>
<script >
    $(function() { $('#myAccount4').click(); });
</script>
 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>


