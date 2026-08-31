<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PanelMarketer_ForgetPassword.aspx.vb" Inherits="W_ISM.PanelMarketer_ForgetPassword" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>فراموشی رمز عبور</title>
    <link href="graphic/Main.css" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <meta runat ="server"  name="description" id="description" content="شرکت ساختمانی انهار در سال 1353 تاسیس شده و مجری پروژه های EPC ، ایستگاه های تقویت فشار گاز ، خطوط لوله ، ابنیه و ساختمان ، تاسیسات و تجهیزات پروژه های نفتی ، گازی ، پتروشیمی و خطوط لوله انتقال آب می باشد .">
    <meta runat ="server" name="keywords" id="keywords" content="شرکت ساختمانی, انهار, پیمانکاری EPC ، ایستگاه های تقویت فشار گاز ، خطوط لوله ،پیمانکاری ساختمان ، اجرا تاسیسات و تجهیزات پروژه های نفتی ، گازی ، پتروشیمی ، گاز رسانی ، تعمیر و نگهداری پالایشگاه ، تعویض پوشش خطوط ، تقلیل فشار گاز CGS ،  خطوط لوله انتقال آب ، ساخت پتروشیمی ، یار تعمیراتی ، اسکلت بتنی ، ساختمان مسکونی ، مخزن ، مخزن سد ، طراحی نقشه">
    <meta name="author" content="BSFE.ir">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <script type="text/javascript" src="jquery.js"></script>
   
    <link rel="stylesheet" href="MenuFinal/styles.css">
    <script src="js/jquery-latest.min.js" type="text/javascript"></script>
    <script src="MenuFinal/script.js"></script>
   
   <script type ="text/javascript" src="MyScript/TopMenuFixed.js"></script>
    
  
</head>
<body>
    <form id="form1" runat="server">
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"><Services><asp:ServiceReference Path ="AutoCompletar.asmx" /></Services></asp:ToolkitScriptManager>
     <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtSearch" ServiceMethod="Buscar" ServicePath="AutoCompletar.asmx" MinimumPrefixLength="2" CompletionInterval="1000" EnableCaching="true" CompletionSetCount="12"   CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"></asp:AutoCompleteExtender>  
      <div class ="mainPageScreen">
        <div class ="topWhiteBar">
            <div class ="topWhiteBar_Container">
                <ul class ="main_ul">
                
                    
                    <li class ="main_li">
                        
                    </li>
                    <li class ="main_li"><a href="PanelPerson_LogIn.aspx"><i class ="fa fa-sign-in" ></i>ویژه همکاران</a>
                        <ul class="topWhiteBar_DropDown" id="LoginBox">
                            <li ><a style="width:80px;margin :0;padding :0;display:inline-block;font-size :9pt;font-family:yekan,arial;color:#fff;text-align :left ;margin-left :5px;">شناسه کاربری :  </a><a style="width:160px;margin :0;padding :0;display:inline-block;font-size :9pt;font-family:yekan,arial;text-align :right"><asp:TextBox AutoComplete="off" ID="txtUID" runat ="server" Width="150" style="padding :5px 5px 5px 5px;border-width:0px;"></asp:TextBox></a> </li>
                            <li ><a style="width:80px;margin :0;padding :0;display:inline-block;font-size :9pt;font-family:yekan,arial;color:#fff;text-align :left ;margin-left :5px;">کلمه عبوری :  </a><a style="width:160px;margin :0;padding :0;display:inline-block;font-size :9pt;font-family:yekan,arial;text-align :right"><asp:TextBox  AutoComplete="off"  ID="txtPWD" runat ="server" Width="100"  style="padding :5px 5px 5px 5px;border-width:0px;" TextMode ="Password" ></asp:TextBox></a></li>
                            <li style="padding-left:10px;text-align:left;"><asp:Label ID="ErrCation" runat ="server"  ></asp:Label><asp:Button runat ="server" ID="btnLogin"  Text ="ورود " /></li> 
                        </ul>
                    </li>
                    <li class ="main_li" ><a href="#" id="SearchMenu"><i class ="fa fa-search"></i>جستجو</a>
                        <ul class="topWhiteBar_DropDown_Search" id="searchBox">
                            <li ><a style="width:200px;margin :0;padding :0;display:inline-block;font-size :9pt;font-family:yekan,arial;"><asp:TextBox ID="txtSearch" Font-Names="yekan" AutoComplete="off" runat ="server" Width="180" ></asp:TextBox></a> </li>
                            
                            <li style="padding-left:10px;text-align:left;"><asp:Button runat ="server" ID="btnSearch"  Text ="جستجو " /></li> 
                        </ul>
                    </li>
                </ul>
            
            </div>
            
        </div>
         <div class ="topBar" id="test" style ="box-shadow:0px 2px 5px #c1c1c1;">
            <div class ="topBar_Container">
                <div class="logoBox" onclick="location.href='Default.aspx'">
                    <asp:Image ID="name_Logo" runat ="server"  />
                </div>
                <div class="menuPhoneBox">
                    <div class ="phoneBox">
                        
                    </div>
                    <div class ="menuBox">
                      <div id='cssmenu'>
                          <%=Session("create_Top_Menu")%>
                        </div>
                    
                    </div>
                </div>
                
            </div>
        </div>
        
       <div class ="topBannerBox">
            <hr />
            <div class ="TextTitle">فراموشی کلمه عبوری</div>
       </div>
       <div class ="MainpathBox">
            <div class ="pathBox">
                <ul>
                    <li><a href="default.aspx">صفحه اصلی</a></li>
                    <li><i class ="fa fa-angle-left"></i></li>
                    <li><a>فراموشی کلمه عبوری</a></li>
                </ul>
            </div>
       </div> 
       <div class ="MainPage_AboutUs">
         <div class ="Content_MainBox">
            <div class ="Content_Container">
                 <div class ="contentBox">
                    <div class ="box">
                        <div class ="loginBox">
                            <div class ="headerBox">
                                <a><i class="fa fa-sign-in"></i>برای بازیابی رمز عبور شماره تلفن همراه خود را وارد کنید</a>
                            </div>
                            <div class ="titleBox">
                               رمز عبور به شماره تلفن همراه شما ارسال می شود
                                <br />
                                 شما قبلا باید شماره تلفن همراه خود را در سامانه ثبت کرده باشید
                            </div>
                            <div class ="titleBox">
                                <div class ="ContainerTextBoxObject" style="display:none;">
                                    <div class="ContainerTextBoxCaption">آدرس ایمیل&nbsp;*  <asp:Label id="lblUID" runat ="server"  class="errStyle" ></asp:Label></div>
                                    <div class="ContainerTextBoxStyle">
                                        <div class="effectContainerDiv"  id="container_UID"></div>
                                        <ul class="ContainerQuotation">
                                            <li><a><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">لطفا ایمیل خود را که در بخش ثبت نام انتخاب کرده اید را درج نمائید.</div></li></ul></a></li>
                                            <li> <asp:TextBox tabindex="1"  onfocus="GraphicalBorder('container_UID');" onblur="GraphicalBorderRemove('container_UID');" ID="UID" AutoComplete="off" runat ="server"    ></asp:TextBox></li>
                                        </ul>
                                    </div>
                                </div>
                                
                                <div class ="ContainerTextBoxObject" >
                                    <div class="ContainerTextBoxCaption">تلفن همراه&nbsp;*  <asp:Label id="lblMobile" runat ="server"  class="errStyle" ></asp:Label></div>
                                    <div class="ContainerTextBoxStyle">
                                        <div class="effectContainerDiv"  id="container_Mobile"></div>
                                        <ul class="ContainerQuotation">
                                            <li><a><i class="fa fa-file-text-o"></i><ul  class="quotation"><li><div class="talkbubble">لطفا موبایل خود را که در بخش ثبت نام انتخاب کرده اید را درج نمائید.</div></li></ul></a></li>
                                            <li> <asp:TextBox tabindex="1"  onfocus="GraphicalBorder('container_Mobile');" onblur="GraphicalBorderRemove('container_Mobile');" ID="Mobile" AutoComplete="off" runat ="server"  MaxLength="11" style="text-align :left ;" ></asp:TextBox></li>
                                        </ul>
                                    </div>
                                </div>
                                
                            </div>
                           
                            <div class ="titleBox">
                                <div class="containerButton">
                                    <asp:Button ID="btnSaveForm" OnClientClick="StartProgressBar();"  runat ="server" Text ="بازیابی" style="width:200px;min-height:40px;margin-top:50px; " />
                                </div>
                            </div> 
                            <div class ="headerBox">
                               
                            </div>
                        </div>
                    </div>
                    <div class ="box">
                        <div class ="loginBox">
                            <div class ="headerBox">
                                <a><i class="fa fa-user-plus"></i><b style="color:#000">جهت استفاده بازیابی رمز عبور فقط و فقط ازطریق سامانه اقدام کنید </b> </a>
                            </div>
                            <div class ="titleBox"><b style="color:#a20000">
                                همکار گرامی 
                                <br />
                                
                                <%= Session("fetch_ForgetPassword_Text") %>

                            </div>
                            <div class ="titleBox">
                                <div class="containerButton">
                                    <asp:Button ID="btnAddMember" Visible ="false"  OnClientClick="StartProgressBar();"  runat ="server" Text ="تماس با شرکت" style="width:200px;min-height:40px;margin-top:50px; " />
                                </div>
                            </div> 
                        </div> 
                    </div> 
                 </div>
 
            </div>
      
       
     <div class ="footer_mainPage">
            <div class ="footer_Container">
                <div class ="whiteBox"></div>
                <div class ="rightBox" style="background-image :url(<%= Session("fetch_Logo_footer")%>)"></div>
                <div class ="leftBox">
                    <%=Session("init_Footer")%>
                </div>
                  <p>
                    <%=Session("initSocialNetworks")%>
                  </p> 
                  <p style="position:relative;float:none;margin-left :auto ;margin-right :auto ; font-size:8pt;font-family:Yekan,arial;direction:rtl;color:#fff;max-width:500px;">
                    <%=Session("fetch_Address")%>
                  </p>                 
            </div>
            <div class ="footer_Container_Copy"><%=Session("fetch_copyRight") %>
            <br />
            
            <%If Session("check_Is_Amar") = 1 Then%>
            <asp:Label ID="lblAmar" runat ="server"  ></asp:Label>
            <%End If%>

            </div>
       </div>
   
        <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
        <script type="text/javascript">
            if ($(window).width() > 785) {
                $('#test').scrollToFixed();
            }
        </script>
        <a class="scrollToTop" id="topObject" title="به سمت بالا"></a>
        
    </div>     
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
</body>
</html>


<script type="text/javascript" src="jquery.js"></script>
	<script type ="text/javascript" src="MyScript/ScrollToView.js"></script>



<script type="text/javascript" src="Scroll.js"></script>




<%=Session("animateScript") %>



<script type ="text/javascript" src="MyScript/TopMenuBar.js"></script>
    
    

