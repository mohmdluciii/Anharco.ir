<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Managers.aspx.vb" Inherits="W_ISM.Managers" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title></title>
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
  
  
    <link href="LightBox_Simple/src/jquery.littlelightbox.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"><Services><asp:ServiceReference Path ="AutoCompletar.asmx" /></Services></asp:ToolkitScriptManager>
     <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtSearch" ServiceMethod="Buscar" ServicePath="AutoCompletar.asmx" MinimumPrefixLength="2" CompletionInterval="1000" EnableCaching="true" CompletionSetCount="12"   CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"></asp:AutoCompleteExtender>  
       <div onclick="clodeVideo();" id="saveDialog" style="position:fixed  ;top:0px;left:0px;width:100%;height:100%;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.5);text-align :center ;z-index:1000000" >
        <div style="position:relative ;float:inherit;margin-left :auto ;margin-right :auto ;margin-top :auto ;margin-bottom :auto; ">
            <iframe src="" id="videoFrame" style="width :920px;height:670px;float:none ;margin-top :20% ;margin-bottom :auto ;" frameborder ="0" scrolling ="no" ></iframe>
        </div>
      </div>
      
      <div onclick="clodeVideo1();" id="saveDialog1" style="position:fixed  ;top:0px;left:0px;width:100%;height:100%;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.5);text-align :center ;z-index:1000000" >
        <div style="position:relative ;float:inherit;margin-left :auto ;margin-right :auto ;margin-top :auto ;margin-bottom :auto; ">
            <iframe src="" id="aparatFrame" style="width :920px;height:670px;float:none ;margin-top :20% ;margin-bottom :auto ;" frameborder ="0" scrolling ="no" ></iframe>
        </div>
      </div>
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
            <div class ="TextTitle">معرفی مدیران</div>
       </div>
       <div class ="MainpathBox">
            <div class ="pathBox">
                <ul>
                    <li><a href="default.aspx">صفحه اصلی</a></li>
                    <li><i class ="fa fa-angle-left"></i></li>
                    <li><a >معرفی مدیران</a></li>
                    <li><i class ="fa fa-angle-left"></i></li>
                    <li><a ><asp:Label ID="lblTitle" runat ="server"  ></asp:Label></a></li>
                </ul>
            </div>
       </div> 


 
       
       <div class ="managerMainBox">
            <div class ="managerContainer">
                <%=Session("fetch_GalleryMain")%>
                <%=Session("fetch_Video")%>
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
<script src="LightBox_Simple/src/jquery.littlelightbox.js"></script>
<script>
    $('.lightbox').littleLightBox();
</script>
<script type="text/javascript" src="jquery.js"></script>
<script type ="text/javascript" src="MyScript/ScrollToView.js"></script>





<script type="text/javascript" src="Scroll.js"></script>
<script type ="text/javascript" src="MyScript/TopMenuBar.js"></script>
    
    


    
     <script type ="text/javascript" >
         function showVideo(oname) {
             var myBox = document.getElementById("saveDialog");
             myBox.style.display = "block";
             var v = document.getElementById("videoFrame");
             v.src = "Video_Viewer.aspx?f=" + oname;
         }

         function clodeVideo() {
             var v = document.getElementById("videoFrame");
             v.src = "";
             var myBox = document.getElementById("saveDialog");
             myBox.style.display = "none";
         }

         function showVideo1(oname) {
             var myBox = document.getElementById("saveDialog1");
             myBox.style.display = "block";
             var v = document.getElementById("aparatFrame");
             v.src = "Aparat_Viewer.aspx?f=" + oname;
         }

         function clodeVideo1() {
             var v = document.getElementById("aparatFrame");
             v.src = "";
             var myBox = document.getElementById("saveDialog1");
             myBox.style.display = "none";
         }
         
    </script>