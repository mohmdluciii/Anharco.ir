<%@ Page language="vb" AutoEventWireup="true" %>
<%@ Import Namespace="FormsAuthAd.FormsAuth" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<html>
<head id="Head1" runat="server">
     <title>مشتریان - باشگاه مشتریان </title>
   
    <link href="../graphic/Graphic.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="../fontawesome/css/font-awesome.min.css" />
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="BSFE.ir">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://vjs.zencdn.net/3.2/video-js.css" type="text/css">
<script src="http://vjs.zencdn.net/3.2/video.js"></script>
    <script type="text/javascript" src="../jquery.js"></script>
    <link href="../StyleSheet/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="../JS/code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <link href="../SlideNew/sliderResponsive.css" rel="stylesheet" type="text/css">
    
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
    <style>

#slider2 {
    max-width: 30%;
    margin-right: 20px;
}

.row2Wrap {
    display: flex;
}

.content {
    padding: 50px;
    margin-bottom: 100px;
}



.content {
    padding: 10px 15vw;
}
</style> 
<link rel="stylesheet" type="text/css" href="../slick/slick.css">
<link rel="stylesheet" type="text/css" href="../slick/slick-theme.css">

<%--loading click--%>
   <script type="text/javascript" src="../JS/1.6.2/jquery.min.js"></script>
	    
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
     <link rel="stylesheet" href="../Calender/jquery.calendars.picker.css">
    <script src="../Calender/jquery.min.js"></script>
    <script src="../Calender/jquery.plugin.js"></script>
    <script src="../Calender/jquery.calendars.js"></script>
    <script src="../Calender/jquery.calendars.plus.js"></script>
    <script src="../Calender/jquery.calendars.picker.js"></script>
    <script src="../Calender/jquery.calendars.persian.js"></script>
    <script>
        $(function() {
            var calendar = $.calendars.instance('persian');
            $('#BirthDate_Member').calendarsPicker({ calendar: calendar });

        });

</script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
       <div class ="topPage_new_Mainpage">
            <div class ="topPage_new_Container">
                <div class ="leftBox">
                    <div class ="hamkarBox">
                        <div class ="hamkarTextMain"><i class="fa fa-caret-right"></i>همکار</div>
                        <div class ="hamkarLoginBox">
                            <a href="../PanelMarketer_AddMarketer.aspx"><i class="fa fa-plus-circle"></i>ثبت نام</a>
                            <a href="../PanelMarketer_LogIn.aspx"><i class="fa fa-user-circle-o"></i>ورود</a>
                        </div>
                    </div>
                    
                    <div class ="hamkarBox1">
                        <div class ="hamkarTextMain1"><i class="fa fa-caret-right"></i>مشتری</div>
                        <div class ="hamkarLoginBox1">
                            <a href="../PanelMember_AddMember.aspx"><i class="fa fa-user-plus"></i>ثبت نام</a>
                            <a href="../PanelMarketer_AddMarketer.aspx"><i class="fa fa-user-o"></i>ورود</a>
                        </div>
                    </div>
                    
                </div>
                <div class ="rightBox"><img src="../images/Logo_Toolbar.png" style='cursor:pointer' onclick="location.href='index.aspx'" /></div>
            </div>
        </div>
        <div class ="Top_MenuBar"  style="height:90px">
            <div class ="Top_ContainerMenuBar">
                <ul>
                    <li><a href="../Index.aspx">صفحه اصلی</a></li>
                    <li><a href="../Customers.aspx">مشتریان</a></li>
                    <li><a href="../Packages.aspx">پکیج ها</a></li>
                    <li><a href="../Law.aspx">قواعد و مقررات</a></li>
                    <li><a href="../AboutUs.aspx">درباره ما</a></li>
                    <li><a href="../ContactUs.aspx">تماس با ما</a></li>
                </ul>
            </div>
        </div> 
           
       
       <div class="title_MainBox">
            <div class ="title_Container">
                <asp:Label ID="lblTitle" runat ="server" class="titleText"  ></asp:Label>
                
            </div> 
            
       </div>
       <div class="SaveBoxContainer" id="saveContainer">
                    <div class ="SaveBox" id="saveDialog" style="top:25%;">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;&nbsp;اطلاعات با<span style="color:#888888"> موفقیت </span> در سامانه ثبت گردید <br /><asp:Label ID="lblCodeMoarefi" runat ="server"  ></asp:Label></p>
                        <input type="button" value="تایید" onclick="location.href='PanelMember_AddMember.aspx'" /> 
                    </div>
                </div>
       <div class ="Customer_MainBox" style="border-bottom :4px solid #fff;">
            <div class ="Customer_Container" >
            <div class="memberPanel_LeftBox" >
        
       
        <div class="memberPanel_leftBox_menuBox">
              <ul class="menuMobileCustomer"><i class="fa fa-caret-down"></i>عناوین شغلی</ul>              
              <ul class="Myul" style="border-left:1px solid #E2E2E2;">
                <%=Session("fetch_all_GroupService")%>
            </ul>

        </div>
        
    </div>
                 <div class="memberPanel_rightBox" >
                    <a href="#" class ="backButton" title="بازگشت به صفحه قبل" onclick="window.history.back();"><i class="fa fa-undo"></i></a>
                    <%=Session("create_Content_CustomerDet")%>
                </div>
    
   
    
                 
                 </div>   
 
            </div>

       
        <div class ="Footer_Mainpage">
            <div class ="Footer_Container">
                <div class ="whiteSpace"></div>
                <div class ="boxFooter">
                    <div class ="headerBox">عضویت در خبرنامه</div>
                    <div class ="ContentBoxText">برای دریافت آخرین اطلاعات وب سایت و پکیج های ویژه ، آدرس پست الکترونیکی خود را درج تا آبونه وب سایت شوید</div>
                    <div class ="sendMailBox">
                        <asp:TextBox ID="txtMail" runat ="server" class="TextBoxmail" placeholder="ایمیل خود را درج نمائید" ></asp:TextBox>
                        <a href="#" id="Member_Newsletters" runat ="server" ><i class="fa fa-envelope-o"></i>عضویت</a>
                    </div>
                </div>
                <div class ="boxFooter">
                    <div class ="headerBox">ارتباط با ما</div>
                    <div class ="ContentBoxText">
                        <div  style="position:relative ;top:0px;float:right ;right:0px;padding :0; width :100%;min-height:30px;min-height:30px;font-size:10pt;direction :rtl;"><span  style="position:relative ;float:right ;font-size :10pt;">مارا درشبکه های اجتماعی دنبال کنید</span> 
                        <a href="#"  class ="a_Content" style="position:relative ;float:right ;"><img src ="../images/Telegram.png" /></a><a class ="a_Content" href ="#"  style="position:relative ;float:right ;"><img src="../images/Instagram.png" /></a><a class ="a_Content" href ="#"  style="position:relative ;float:right ;"><img src="../images/aparat.png" /></a>
                        </div>
                        <a class ="a_Content"><%=Session("phone_setting")%><i class="fa fa-phone"></i></a>
                        <a class ="a_Content_left"><%=Session("mobile_setting")%><i class="fa fa-mobile"></i></a>
                        <a class ="a_Content_address" style="width :100%;"><i class="fa fa-map-marker"></i><%=Session("address_setting")%></a>
                        <a class ="a_Content_address" style="width :100%;" href="mailto:<%=Session("email_Setting")%>"><i class="fa fa-envelope-o"></i><%=Session("email_Setting")%></a>
                    </div>
                </div>
                <div class ="boxFooter">
                    <div class ="boxFooter_iframe">
                    <iframe src="" frameborder="0"></iframe>
                    </div>
                 </div>  
            </div>
            <p ><a href="../Law.aspx">قواعد و مقررات</a><a href="../ContactUs.aspx">تماس با ما</a><a href="../AboutUs.aspx">درباره ما</a><a href="../Index.aspx">صفحه اصلی</a></p>
        </div>
        <script type="text/javascript" src="../js/jquery-scrolltofixed.js"></script>
        <script type="text/javascript">
            if ($(window).width() > 785) {
                $('#test').scrollToFixed();
            }
        </script>
        <a class="scrollToTop" id="topObject" title="به سمت بالا"></a>
        
         <a href="../WorkWithUS.aspx" target ="_blank" style="position:fixed;bottom:0px;left :0px;"><img src="../images/icon-kasb-daramad2.png" title ="کسب درآمد " /></a>
         <%--loading click--%>
        <asp:ModalPopupExtender BackgroundCssClass="ModalBackground" ID="m" runat="server"  PopupControlID ="Panel1" TargetControlID ="hiddenField">
        </asp:ModalPopupExtender>    
        <asp:Panel ID="panel1" Direction= "RightToLeft"  runat="server"   style="z-index:1000">
        <center ><img src="../images/loading.gif" style ="z-index :1000" align="middle"    /></center>
        </asp:Panel> 
        <asp:HiddenField ID="hiddenField" runat ="server" />
        <%--loading click--%>
    </form>
</body>
</html>
<script type="text/javascript" >
    var flg1 = 0;
    var flg2 = 0;
    var flg3 = 0;
    var flg4 = 0;
    var activeMember = 0;
    var amount_max_activeMember = 0;

    var Marketer = 0;
    var amount_Marketer = 0;

    var NumberPackage = 0;
    var amount_NumberPackage = 0;

    var NumberClick = 0;
    var amount_NumberClick = 0;
    var max_activeMember = document.getElementById("lbl_activeMember");
    amount_max_activeMember = max_activeMember.innerText;

    var max_Marketer = document.getElementById("lblMarketer");
    amount_max_Marketer = max_Marketer.innerText;

    var max_NumberPackage = document.getElementById("lbl_NumberPackage");
    amount_max_NumberPackage = max_NumberPackage.innerText;

    var max_NumberClick = document.getElementById("lbl_NumberClick");
    amount_max_NumberClick = max_NumberClick.innerText;

    var max_activeMember = document.getElementById("lbl_activeMember");

    var max_Marketer = document.getElementById("lblMarketer");

    var max_NumberPackage = document.getElementById("lbl_NumberPackage");

    var max_NumberClick = document.getElementById("lbl_NumberClick");

    var c;

    function initTimer_fn() {
        c = setInterval(fn_Start, 200);
    }


    function fn_Start() {

        if (activeMember <= amount_max_activeMember) {
            max_activeMember.innerHTML = activeMember;
            activeMember = activeMember + 1;
        }
        else {
            flg1 = 1;
        }

        if (Marketer <= amount_max_Marketer) {
            max_Marketer.innerHTML = Marketer;
            Marketer = Marketer + 1;
        }
        else {
            flg2 = 1;
        }

        if (NumberPackage <= amount_max_NumberPackage) {
            max_NumberPackage.innerHTML = NumberPackage;
            NumberPackage = NumberPackage + 1;
        }
        else {
            flg3 = 1;
        }

        if (NumberClick <= amount_max_NumberClick) {
            max_NumberClick.innerHTML = NumberClick;
            NumberClick = NumberClick + 1;
        }
        else {
            flg4 = 1;
        }



        if ((flg1 == 1) && (flg2 == 1) && (flg3 == 1) && (flg4 == 1)) {
            clearInterval(c);
        }



    }
</script>
<script type="text/javascript" src="../jquery.js"></script>
	<script type="text/javascript">


	    var $window = $(window);


	    var $animation_elements1 = $('.box');
	    function check_if_in_view1() {
	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements1, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                $element.addClass('box_view');
	            } else {

	            }
	        });
	    }

	    var $animation_elements2 = $('.boxNews');
	    function check_if_in_view2() {
	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements2, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                $element.addClass('boxNews_view');
	            } else {

	            }
	        });
	    }
	    var flg_first = 0
	    var $animation_elements3 = $('.boxAmar');
	    function check_if_in_view3() {


	        var window_height = $window.height();
	        var window_top_position = $window.scrollTop();
	        var window_bottom_position = (window_top_position + window_height);

	        $.each($animation_elements3, function() {
	            var $element = $(this);
	            var element_height = $element.outerHeight();
	            var element_top_position = $element.offset().top;
	            var element_bottom_position = (element_top_position + element_height);

	            //check to see if this current container is within viewport
	            if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
	                if (flg_first == 0) {
	                    flg_first = 1;
	                    initTimer_fn();
	                }
	            } else {

	            }
	        });



	    }


	    $window.on('scroll resize', check_if_in_view1);
	    $window.on('scroll resize', check_if_in_view2);
	    $window.on('scroll resize', check_if_in_view3);
	    $window.trigger('scroll');
</script>
<script src="../JS/code.jquery.com/jquery-1.12.4.min.js"></script>
 <script src="../JS/code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
  <script src="../slick/slick.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript">
    $(document).on('ready', function() {
     $(".reg").slick({
        dots: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
      $(".vertical-center-4").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 4,
        slidesToScroll: 2
      });
      $(".vertical-center-3").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 3,
        slidesToScroll: 3
      });
      $(".vertical-center-2").slick({
        dots: true,
        vertical: true,
        centerMode: true,
        slidesToShow: 2,
        slidesToScroll: 2
      });
      $(".vertical-center").slick({
        dots: true,
        vertical: true,
        centerMode: true,
      });
      $(".vertical").slick({
        dots: true,
        vertical: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
      
    
      
     
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
     
     
       $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
     
      $(".variable").slick({
        dots: true,
        infinite: true,
        variableWidth: true
      });
      $(".lazy").slick({
        lazyLoad: 'ondemand', // ondemand progressive anticipated
        infinite: true
      });
    });
</script>
<script type="text/javascript" src="../Scroll.js"></script>
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
<%=Session("str_Style_menu")%>
 <script type ="text/javascript" src="MyScript/MenuMobilePanel.js" ></script><%=Session("scriptSave")%>
<script>
<%=Session("str_script_menu")%>
</script>
<script>
<%=Session("str_script_menu1")%>
</script>
<script runat="server">
    Dim amount_str As String = ""
    Dim amount_RS As String = ""
    Dim amount_M As String = ""
    Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Session("scriptSave") = ""
        End If
        If fetch_Is_Amar() = False Then
            AddToAmar()
        Else
            update_Amar()
        End If
        fetch_all_GroupService()
        create_Content()
        init_Setting_Page()
    End Sub
    Sub AddToAmar()
        Dim c As New W_ISM.ConnectionClass
        Dim ins As New W_ISM.InsertToDB
        Dim f As New W_ISM.IdentityAmount
        f.tableName = "tblAmarCust"
        ins.TableName = "tblAmarCust"
        f.fieldKey = "rowID_AmarCust"
        ins.ListFields = "rowID_AmarCust,rowID_Member,numberVisit_AmarCust"
        ins.ListValues = f.fetchAmountKey & "," & fetch_Statement(amount_M) & "," & 1
        c.ConnectToDB()
        c.OpenRecordSet(ins.InsertToDb, W_ISM.ConnectionClass.myE.ForwardOnly)
        c.DisConnectOfDB()
    End Sub
    Sub update_Amar()
        Dim c As New W_ISM.ConnectionClass
        Dim upd As New W_ISM.UpdateDB
        upd.tableName = "tblAmarCust"
        upd.FiledsForUpdate = "numberVisit_AmarCust=numberVisit_AmarCust+1"
        upd.Condition = "rowID_Member=" & fetch_Statement(amount_M)
        c.ConnectToDB()
        c.OpenRecordSet(upd.updateStr, W_ISM.ConnectionClass.myE.ForwardOnly)
        c.DisConnectOfDB()
    End Sub
    Function fetch_Is_Amar() As Boolean
        Dim c As New W_ISM.ConnectionClass
        Dim str As String = ""
        str = "select * from tblAmarCust"
        str = str & " where rowID_Member=" & fetch_Statement(amount_M)
        c.ConnectToDB()
        c.OpenRecordSet(str, W_ISM.ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            fetch_Is_Amar = True
        Else
            fetch_Is_Amar = False
        End If
        c.DisConnectOfDB()
    End Function
    Sub init_Setting_Page()
        Dim c As New W_ISM.ConnectionClass
        Dim str As String = ""
        str = "select top 1* from tblSetting"
        str = str & " order by rowID_Setting desc"
        c.ConnectToDB()
        c.OpenRecordSet(str, W_ISM.ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            Session("faceBook_Setting") = c.rs.Fields("faceBook_Setting").Value
            Session("twitter_Setting") = c.rs.Fields("twitter_Setting").Value
            Session("instagram_Setting") = c.rs.Fields("instagram_Setting").Value
            Session("googlePlus_Setting") = c.rs.Fields("googlePlus_Setting").Value
            Session("telegram_Setting") = c.rs.Fields("telegram_Setting").Value
            Session("aparat_Setting") = c.rs.Fields("aparat_Setting").Value
            Session("youtube_settng") = c.rs.Fields("youtube_settng").Value
            Session("email_Setting") = c.rs.Fields("email_Setting").Value
            Session("phone_setting") = c.rs.Fields("phone_setting").Value
            Session("mobile_setting") = c.rs.Fields("mobile_setting").Value
            Session("address_setting") = ReplaceForYekan(c.rs.Fields("address_setting").Value)
        End If
        c.DisConnectOfDB()
    End Sub
    
   
   
    
    Private Sub fetch_Service(ByVal RowID_GroupService As Integer)
        Dim c As New W_ISM.ConnectionClass
        Dim str As String = ""
        Dim amount_Service As Integer = 0
        If amount_RS <> "" Then
            amount_Service = fetch_Statement(amount_RS)
        End If
        str = "select * from tblService"
        str = str & " where RowID_GroupService=" & RowID_GroupService
        c.ConnectToDB()
        c.OpenRecordSet(str, W_ISM.ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            Do While Not c.rs.EOF
                If amount_Service <> 0 Then
                    If amount_Service = c.rs.Fields("rowID_Service").Value Then
                        amount_str = amount_str & "<li><a  class='activeSub' href='../Customers.aspx?rs=" & create_code_Statement(c.rs.Fields("rowID_Service").Value) & "#" & ReplaceForYekan(c.rs.Fields("name_Service").Value) & "' >" & ReplaceForYekan(c.rs.Fields("name_Service").Value) & "</a></li>"
                    Else
                        amount_str = amount_str & "<li><a style='color:#7C7C7C' href='../Customers.aspx?rs=" & create_code_Statement(c.rs.Fields("rowID_Service").Value) & "#" & ReplaceForYekan(c.rs.Fields("name_Service").Value) & "' >" & ReplaceForYekan(c.rs.Fields("name_Service").Value) & "</a></li>"
                    End If

                Else
                    amount_str = amount_str & "<li><a style='color:#7C7C7C' href='../Customers.aspx?rs=" & create_code_Statement(c.rs.Fields("rowID_Service").Value) & "#" & ReplaceForYekan(c.rs.Fields("name_Service").Value) & "' >" & ReplaceForYekan(c.rs.Fields("name_Service").Value) & "</a></li>"
                End If

                c.rs.MoveNext()
            Loop
        End If
        c.DisConnectOfDB()
    End Sub

    Private Sub create_Content()
        Dim c As New W_ISM.ConnectionClass
        Dim str As String = ""
        Dim s As String = ""
        Dim temp_Video As String = "data-setup='{@controls@ : true, @autoplay@ : true, @preload@ : @auto@}'"
        str = "select * from tblMember"
        If amount_RS <> "" Then
            str = str & " where RowID_Service=" & fetch_Statement(amount_RS)
        End If
        If amount_M <> "" Then
            str = str & " and rowID_Member=" & fetch_Statement(amount_M)
        End If
        str = str & " order by rowID_Member desc"
        c.ConnectToDB()
        c.OpenRecordSet(str, W_ISM.ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            Do While Not c.rs.EOF
                Me.Title = ReplaceForYekan(c.rs.Fields("company_Member").Value) & " - باشگاه مشتریان  "
                s = s & "<div class='customerPage_Header_CompanyName'>" & fetch_First_Pic(c.rs.Fields("rowID_Member").Value) & "<span>" & ReplaceForYekan(c.rs.Fields("company_Member").Value) & "</span><span style='font-size:7pt;position:relative;float:left;left:10px;'>تعداد بازدید : " & fetch_name_Object("tblAmarCust", "rowID_Member", "numberVisit_AmarCust", fetch_Statement(amount_M)) & "</span></div>"
                s = s & "<div class='customerPage_Header_CompanyAddress'>"
                s = s & "<div class='ContentTextBox'><i class='fa fa-envelope-o'></i>" & ReplaceForYekan(c.rs.Fields("email_Member").Value) & "</div>"
                s = s & "<div class='ContentTextBox'><i class='fa fa-phone'></i>" & ReplaceForYekan(c.rs.Fields("phone_Member").Value) & "</div>"
                s = s & "<div class='ContentTextBox'><i class='fa fa-map-marker'></i>" & ReplaceForYekan(c.rs.Fields("address_Member").Value) & "</div>"
                If IsDBNull(c.rs.Fields("Link_Member").Value) = False Then
                    If c.rs.Fields("Link_Member").Value <> "" Then
                        s = s & "<div class='ContentTextBox'><a style='text-decoration:none;' href='" & c.rs.Fields("Link_Member").Value & "' target='_blank'><i class='fa fa-link'></i>" & ReplaceForYekan(c.rs.Fields("Link_Member").Value) & "</a></div>"
                    End If
                End If
                s = s & "</div>"

                s = s & "<div class='customerPage_Body_CompanyMainpage'>"
                s = s & "<div class='headerBodyCustomer'><img src='../images/IconCustTitle.png' align='middle'>" & ReplaceForYekan(c.rs.Fields("company_Member").Value) & "</div>"
                s = s & "<div class='CustomerDetBox'>"
                If c.rs.Fields("company_Member").Value <> "" Then
                    lblTitle.Text = fetch_name_Object("tblOstan", "rowID_Ostan", "name_Ostan", c.rs.Fields("rowID_Ostan").Value) & "<i class='fa fa-angle-left'></i>" & fetch_name_Object("tblOstan", "rowID_Ostan", "name_Ostan", c.rs.Fields("rowID_Ostan").Value) & "<i class='fa fa-angle-left'></i>" & fetch_name_Object("tblGroupService", "rowID_GroupService", "name_GroupService", c.rs.Fields("rowID_GroupService").Value) & "<i class='fa fa-angle-left'></i>" & fetch_name_Object("tblService", "rowID_Service", "name_Service", c.rs.Fields("rowID_Service").Value) & "<i class='fa fa-angle-left'></i><span style='color:#FCB354'>" & ReplaceForYekan(c.rs.Fields("company_Member").Value) & "</span>"
                Else
                    s = s & "<div class='headerBox'>" & ReplaceForYekan(c.rs.Fields("name_Member").Value & " " & c.rs.Fields("lname_Member").Value) & "</div>"
                    lblTitle.Text = fetch_name_Object("tblOstan", "rowID_Ostan", "name_Ostan", c.rs.Fields("rowID_Ostan").Value) & "<i class='fa fa-angle-left'></i>" & fetch_name_Object("tblOstan", "rowID_Ostan", "name_Ostan", c.rs.Fields("rowID_Ostan").Value) & "<i class='fa fa-angle-left'></i>" & fetch_name_Object("tblGroupService", "rowID_GroupService", "name_GroupService", c.rs.Fields("rowID_GroupService").Value) & "<i class='fa fa-angle-left'></i>" & fetch_name_Object("tblService", "rowID_Service", "name_Service", c.rs.Fields("rowID_Service").Value) & "<i class='fa fa-angle-left'></i>" & ReplaceForYekan(c.rs.Fields("name_Member").Value & " " & c.rs.Fields("lname_Member").Value)
                End If
                

                s = s & "<div class='InCustomerDetBox'>" & ReplaceForYekan(c.rs.Fields("des_Member").Value) & "</div>"

                s = s & "</div>"

                s = s & "<div class='CustomerDetBox1'>"
                s = s & "<div class='slidePicBox'>"
                s = s & "<section class='reg slider sectionPart'  data-sizes='50vw' style='height:400px'>"

                s = s & fetch_Pic(c.rs.Fields("rowID_Member").Value)

                s = s & "</section>"
                s = s & "</div>"
                s = s & "</div>"
                s = s & "</div>"
                If IsDBNull(c.rs.Fields("Video_Member").Value) = False Then
                    If c.rs.Fields("Video_Member").Value <> "" Then
                        s = s & "<div class='customerPage_Body_CompanyMainpage'>"
                        s = s & "<div class='headerBodyCustomer'><img src='../images/IconCustVideo.png' align='middle'>فیلم تبلیغاتی</div>"
                        s = s & "<video id='video1'  width='100%' class='video-js vjs-default-skin video_style' " & Replace(temp_Video, "@", """") & " >"
                        Dim myAry() As String
                        myAry = Split(c.rs.Fields("Video_Member").Value, ".")
                        Select Case UCase(myAry(UBound(myAry)))
                            Case "MP4"
                                s = s & "<source height='309' src='../Film_BuyPackage/" & c.rs.Fields("Video_Member").Value & "' type='video/mp4'>"
                            Case "FLV"
                                s = s & "<source height='309' src='../Film_BuyPackage/" & c.rs.Fields("Video_Member").Value & "' type='video/x-flv'>"
                            Case Else
                                s = s & "<source height='309' src='../Film_BuyPackage/" & c.rs.Fields("Video_Member").Value & "' >"
                        End Select
                        s = s & "</video>"
                        s = s & "</div>"
                    End If
                End If

                c.rs.MoveNext()
            Loop
        End If
        c.DisConnectOfDB()
        Session("create_Content_CustomerDet") = s
    End Sub
    Function fetch_First_Pic(ByVal rowID_Member As Integer) As String
        Dim c As New W_ISM.ConnectionClass
        Dim str As String = ""
        Dim st As String = ""
        fetch_First_Pic = ""
        str = "select top 1 * from tblAttach"
        str = str & " where sectionCode_Attach=1"
        str = str & " and codeAgahi_Attach=" & rowID_Member
        c.ConnectToDB()
        c.OpenRecordSet(str, W_ISM.ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            fetch_First_Pic = "<img  src='../Images_Attach/" & c.rs.Fields("picFile_Attach").Value & "'>"
        End If
        c.DisConnectOfDB()
    End Function
    Private Function fetch_Pic(ByVal rowID_Member As Integer) As String
        Dim c As New W_ISM.ConnectionClass
        Dim str As String = ""
        Dim st As String = ""
        str = "select * from tblAttach"
        str = str & " where sectionCode_Attach=1"
        str = str & " and codeAgahi_Attach=" & rowID_Member
        c.ConnectToDB()
        c.OpenRecordSet(str, W_ISM.ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            Do While Not c.rs.EOF
                st = st & "<div class='picBox' style='background-image:url(../Images_Attach/" & c.rs.Fields("picFile_Attach").Value & ");background-repeat:no-repeat;background-size:100%;'>"
                'st = st & "<img src='../Images_Attach/" & c.rs.Fields("picFile_Attach").Value & "'>"
                st = st & "</div>"
                c.rs.MoveNext()
            Loop
        End If
        c.DisConnectOfDB()
        fetch_Pic = st
    End Function
    Public Function create_code_Statement(ByVal amount_string As String) As String
        Dim amount_str As String = amount_string
        Dim final_str As String = ""
        For i = 0 To Len(amount_str) - 1
            final_str = final_str & "$" & createCode_Char(Left(Right(amount_str, Len(amount_str) - i), 1))
        Next
        create_code_Statement = final_str
    End Function
    Public Function fetch_Statement(ByVal amount_string As String) As String
        Dim myary() As String
        Dim final_str As String = ""
        myary = Split(amount_string, "$")
        For i = 1 To UBound(myary)
            final_str = final_str & createDeCode_Char(myary(i))
        Next
        fetch_Statement = final_str
    End Function
    Private Function createCode_Char(ByVal amount_Char As String) As String
        Select Case LCase(amount_Char)
            Case "1"
                createCode_Char = "1509"
            Case "!"
                createCode_Char = "6566"
            Case "`"
                createCode_Char = "1500"
            Case "~"
                createCode_Char = "1490"
            Case "2"
                createCode_Char = "8971"
            Case "@"
                createCode_Char = "7510"
            Case "3"
                createCode_Char = "8710"
            Case "#"
                createCode_Char = "9128"
            Case "4"
                createCode_Char = "3001"
            Case "$"
                createCode_Char = "1278"
            Case "5"
                createCode_Char = "3409"
            Case "%"
                createCode_Char = "8010"
            Case "6"
                createCode_Char = "1076"
            Case "^"
                createCode_Char = "4901"
            Case "7"
                createCode_Char = "3221"
            Case "8"
                createCode_Char = "6569"
            Case "*"
                createCode_Char = "1091"
            Case "9"
                createCode_Char = "1002"
            Case "("
                createCode_Char = "5642"
            Case "0"
                createCode_Char = "1290"
            Case ")"
                createCode_Char = "1987"
            Case "-"
                createCode_Char = "1922"
            Case "_"
                createCode_Char = "5484"
            Case "="
                createCode_Char = "9012"
            Case "+"
                createCode_Char = "1209"
            Case "q"
                createCode_Char = "8901"
            Case "w"
                createCode_Char = "2371"
            Case "e"
                createCode_Char = "1208"
            Case "r"
                createCode_Char = "4739"
            Case "t"
                createCode_Char = "5691"
            Case "y"
                createCode_Char = "2409"
            Case "u"
                createCode_Char = "7827"
            Case "i"
                createCode_Char = "2300"
            Case "o"
                createCode_Char = "9083"
            Case "p"
                createCode_Char = "4576"
            Case "["
                createCode_Char = "3999"
            Case "{"
                createCode_Char = "0213"
            Case "]"
                createCode_Char = "8434"
            Case "}"
                createCode_Char = "2325"
            Case "a"
                createCode_Char = "7432"
            Case "s"
                createCode_Char = "4490"
            Case "d"
                createCode_Char = "4356"
            Case "f"
                createCode_Char = "7533"
            Case "g"
                createCode_Char = "2656"
            Case "h"
                createCode_Char = "6689"
            Case "j"
                createCode_Char = "4467"
            Case "k"
                createCode_Char = "2364"
            Case "l"
                createCode_Char = "8675"
            Case ";"
                createCode_Char = "3277"
            Case ":"
                createCode_Char = "0988"
            Case "'"
                createCode_Char = "4343"
            Case """"
                createCode_Char = "6732"
            Case "\"
                createCode_Char = "0763"
           
            Case "z"
                createCode_Char = "3456"
            Case "x"
                createCode_Char = "5120"
            Case "c"
                createCode_Char = "3244"
            Case "v"
                createCode_Char = "1187"
            Case "b"
                createCode_Char = "7645"
            Case "n"
                createCode_Char = "1222"
            Case "m"
                createCode_Char = "4555"
            Case ","
                createCode_Char = "6777"
            Case "<"
                createCode_Char = "7666"
            Case "."
                createCode_Char = "7888"
            Case ">"
                createCode_Char = "9990"
            Case "?"
                createCode_Char = "6000"
            Case "/"
                createCode_Char = "8350"
            Case "÷"
                createCode_Char = "9812"

            Case "ض"
                createCode_Char = "1178"
            Case "ص"
                createCode_Char = "1190"
            Case "ث"
                createCode_Char = "1165"
            Case "ق"
                createCode_Char = "1122"
            Case "ف"
                createCode_Char = "1133"
            Case "غ"
                createCode_Char = "1144"
            Case "ع"
                createCode_Char = "1155"
            Case "ه"
                createCode_Char = "1166"
            Case "خ"
                createCode_Char = "1177"
            Case "ح"
                createCode_Char = "1188"
            Case "ج"
                createCode_Char = "1199"
            Case "چ"
                createCode_Char = "1100"
            Case "ش"
                createCode_Char = "2233"
            Case "س"
                createCode_Char = "2244"
            Case "ی"
                createCode_Char = "2255"
            Case "ب"
                createCode_Char = "2266"
            Case "ل"
                createCode_Char = "2277"
            Case "ا"
                createCode_Char = "2288"
            Case "ت"
                createCode_Char = "2299"
            Case "ن"
                createCode_Char = "3344"
            Case "م"
                createCode_Char = "3355"
            Case "ک"
                createCode_Char = "3366"
            Case "گ"
                createCode_Char = "3377"
            Case "پ"
                createCode_Char = "3388"
            Case "ظ"
                createCode_Char = "3399"
            Case "ط"
                createCode_Char = "4455"
            Case "ز"
                createCode_Char = "4466"
            Case "ر"
                createCode_Char = "4477"
            Case "ذ"
                createCode_Char = "4488"
            Case "د"
                createCode_Char = "4499"

            Case "ئ"
                createCode_Char = "8899"
            Case "و"
                createCode_Char = "8888"
            Case "ژ"
                createCode_Char = "8877"
            Case "ي"
                createCode_Char = "8866"
            Case "؟"
                createCode_Char = "8855"
            Case Else
                createCode_Char = ""
        End Select
    End Function

    Private Function createDeCode_Char(ByVal amount_Char As String) As String
        Select Case amount_Char
            Case "1509"
                createDeCode_Char = "1"
            Case "6566"
                createDeCode_Char = "!"
            Case "1500"
                createDeCode_Char = "`"
            Case "1490"
                createDeCode_Char = "~"
            Case "8971"
                createDeCode_Char = "2"
            Case "7510"
                createDeCode_Char = "@"
            Case "8710"
                createDeCode_Char = "3"
            Case "9128"
                createDeCode_Char = "#"
            Case "3001"
                createDeCode_Char = "4"
            Case "1278"
                createDeCode_Char = "$"
            Case "3409"
                createDeCode_Char = "5"
            Case "8010"
                createDeCode_Char = "%"
            Case "1076"
                createDeCode_Char = "6"
            Case "4901"
                createDeCode_Char = "^"
            Case "3221"
                createDeCode_Char = "7"
            Case "6569"
                createDeCode_Char = "8"
            Case "1091"
                createDeCode_Char = "*"
            Case "1002"
                createDeCode_Char = "9"
            Case "5642"
                createDeCode_Char = "("
            Case "1290"
                createDeCode_Char = "0"
            Case "1987"
                createDeCode_Char = ")"
            Case "1922"
                createDeCode_Char = "-"
            Case "5484"
                createDeCode_Char = "_"
            Case "9012"
                createDeCode_Char = "="
            Case "1209"
                createDeCode_Char = "+"
            Case "8901"
                createDeCode_Char = "q"
            Case "2371"
                createDeCode_Char = "w"
            Case "1208"
                createDeCode_Char = "e"
            Case "4739"
                createDeCode_Char = "r"
            Case "5691"
                createDeCode_Char = "t"
            Case "2409"
                createDeCode_Char = "y"
            Case "7827"
                createDeCode_Char = "u"
            Case "2300"
                createDeCode_Char = "i"
            Case "9083"
                createDeCode_Char = "o"
            Case "4576"
                createDeCode_Char = "p"
            Case "3999"
                createDeCode_Char = "["
            Case "0213"
                createDeCode_Char = "{"
            Case "8434"
                createDeCode_Char = "]"
            Case "2325"
                createDeCode_Char = "}"
            Case "7432"
                createDeCode_Char = "a"
            Case "4490"
                createDeCode_Char = "s"
            Case "4356"
                createDeCode_Char = "d"
            Case "7533"
                createDeCode_Char = "f"
            Case "2656"
                createDeCode_Char = "g"
            Case "6689"
                createDeCode_Char = "h"
            Case "4467"
                createDeCode_Char = "j"
            Case "2364"
                createDeCode_Char = "k"
            Case "8675"
                createDeCode_Char = "l"
            Case "3277"
                createDeCode_Char = ";"
            Case "0988"
                createDeCode_Char = ":"
            Case "4343"
                createDeCode_Char = "'"
            Case "6732"
                createDeCode_Char = """"
            Case "0763"
                createDeCode_Char = "\"
            
            Case "3456"
                createDeCode_Char = "z"
            Case "5120"
                createDeCode_Char = "x"
            Case "3244"
                createDeCode_Char = "c"
            Case "1187"
                createDeCode_Char = "v"
            Case "7645"
                createDeCode_Char = "b"
            Case "1222"
                createDeCode_Char = "n"
            Case "4555"
                createDeCode_Char = "m"
            Case "6777"
                createDeCode_Char = ","
            Case "7666"
                createDeCode_Char = "<"
            Case "7888"
                createDeCode_Char = "."
            Case "9990"
                createDeCode_Char = ">"
            Case "6000"
                createDeCode_Char = "?"
            Case "8350"
                createDeCode_Char = "/"
            Case "9812"
                createDeCode_Char = "÷"

            Case "1178"
                createDeCode_Char = "ض"
            Case "1190"
                createDeCode_Char = "ص"
            Case "1165"
                createDeCode_Char = "ث"
            Case "1122"
                createDeCode_Char = "ق"
            Case "1133"
                createDeCode_Char = "ف"
            Case "1144"
                createDeCode_Char = "غ"
            Case "1155"
                createDeCode_Char = "ع"
            Case "1166"
                createDeCode_Char = "ه"
            Case "1177"
                createDeCode_Char = "خ"
            Case "1188"
                createDeCode_Char = "ح"
            Case "1199"
                createDeCode_Char = "ج"
            Case "1100"
                createDeCode_Char = "چ"
            Case "2233"
                createDeCode_Char = "ش"
            Case "2244"
                createDeCode_Char = "س"
            Case "2255"
                createDeCode_Char = "ی"
            Case "2266"
                createDeCode_Char = "ب"
            Case "2277"
                createDeCode_Char = "ل"
            Case "2288"
                createDeCode_Char = "ا"
            Case "2299"
                createDeCode_Char = "ت"
            Case "3344"
                createDeCode_Char = "ن"
            Case "3355"
                createDeCode_Char = "م"
            Case "3366"
                createDeCode_Char = "ک"
            Case "3377"
                createDeCode_Char = "گ"
            Case "3388"
                createDeCode_Char = "پ"
            Case "3399"
                createDeCode_Char = "ظ"
            Case "4455"
                createDeCode_Char = "ط"
            Case "4466"
                createDeCode_Char = "ز"
            Case "4477"
                createDeCode_Char = "ر"
            Case "4488"
                createDeCode_Char = "ذ"
            Case "4499"
                createDeCode_Char = "د"

            Case "8899"
                createDeCode_Char = "ئ"
            Case "8888"
                createDeCode_Char = "و"
            Case "8877"
                createDeCode_Char = "ژ"
            Case "8866"
                createDeCode_Char = "ي"
            Case "8855"
                createDeCode_Char = "؟"
            Case Else
                createDeCode_Char = ""
        End Select
        
        
        
    End Function
    
    Function ReplaceForYekan(ByVal amount_str As String) As String
        ReplaceForYekan = Replace(amount_str, "ي", "ی")
    End Function
    
    Function fetch_name_Object(ByVal tableName As String, ByVal fieldsKey As String, ByVal fieldName As String, ByVal amountKey As Integer) As String
        Dim c As New W_ISM.ConnectionClass
        Dim str As String = ""
        str = "select " & fieldName & " from " & tableName
        str = str & " where " & fieldsKey & "=" & amountKey
        c.ConnectToDB()
        c.OpenRecordSet(str, W_ISM.ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            fetch_name_Object = ReplaceForYekan(c.rs.Fields(0).Value)
        Else
            fetch_name_Object = ""
        End If
        c.DisConnectOfDB()
    End Function

    Function fetch_name_Object1(ByVal tableName As String, ByVal fieldsKey As String, ByVal fieldName As String, ByVal amountKey As String) As String
        Dim c As New W_ISM.ConnectionClass
        Dim str As String = ""
        str = "select " & fieldName & " from " & tableName
        str = str & " where " & fieldsKey & "='" & amountKey & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, W_ISM.ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            fetch_name_Object1 = ReplaceForYekan(c.rs.Fields(0).Value)
        Else
            fetch_name_Object1 = ""
        End If
        c.DisConnectOfDB()
    End Function
    
    Sub fetch_all_GroupService()
        Dim c As New W_ISM.ConnectionClass
        Dim str As String = ""
        Dim row As Integer = 0
        Dim str_script As String = ""
        Dim str_script1 As String = ""
        Dim str_Style As String = ""
        Dim amount_Service As Integer = 0
        Dim amount_Group_Service As Integer = 0
        If amount_RS <> "" Then
            amount_Service = fetch_Statement(amount_RS)
        End If
        If amount_RS <> "" Then
            amount_Group_Service = fetch_name_Object("tblService", "rowID_Service", "rowID_GroupService", amount_Service)
        End If
        str = "select * from tblGroupService"
        c.ConnectToDB()
        c.OpenRecordSet(str, W_ISM.ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then

            Do While Not c.rs.EOF
                amount_str = amount_str & "<li>"
               
                str_script1 = str_script1 & " $(function() {$('#myAccountBox_c" & row + 1 & "').hide();$('#myAccount" & row + 1 & "').click(function() {$('#myAccountBox_c" & row + 1 & "').toggle('slow', function() {$(this).closest('#myAccount" & row + 1 & "').toggleClass('rolledup', $(this).is(':hidden'));});});});"
                
                If amount_Group_Service <> 0 Then
                    If amount_Group_Service = c.rs.Fields("rowID_GroupService").Value Then
                                                
                       
                        str_script = str_script & "$(@document@).ready(function() {"
                        str_script = str_script & "$(@#myAccount" & row + 1 & "@).trigger(@click@);"
                        str_script = str_script & "});"
                       

                        
                        amount_str = amount_str & "<a href='#'  class='active'  id='myAccount" & row + 1 & "' >" & ReplaceForYekan(c.rs.Fields("Name_GroupService").Value) & "</a>"
                    Else
                        amount_str = amount_str & "<a href='#'  id='myAccount" & row + 1 & "' >" & ReplaceForYekan(c.rs.Fields("Name_GroupService").Value) & "</a>"
                    End If
                Else
                    amount_str = amount_str & "<a href='#'  id='myAccount" & row + 1 & "' >" & ReplaceForYekan(c.rs.Fields("Name_GroupService").Value) & "</a>"
                End If
                str_Style = str_Style & "<style>#myAccountBox_c" & row + 1
                str_Style = str_Style & "{background :none;}#myAccountBox_c" & row + 1 & " li{height :30px;}#myAccountBox_c" & row + 1 & " a{border-right:0px solid #5C5C5C;height :30px;line-height :30px;background :none;margin :0;top:0px;font-size :10pt;}#myAccountBox_c" & row + 1 & " a:hover{color:#FCB354;border-right:0px solid #888888;background :none;}#myAccountBox_c" & row + 1 & " a.activeSub{color:#FCB354;border-right:0px solid #888888;background :none;}"
                str_Style = str_Style & "</style>"
                amount_str = amount_str & "<ul id='myAccountBox_c" & row + 1 & "'>"
                fetch_Service(c.rs.Fields("RowID_GroupService").Value)
                amount_str = amount_str & "</ul>"
                amount_str = amount_str & "</li>"
                row = row + 1
                c.rs.MoveNext()
            Loop

        End If
        c.DisConnectOfDB()
        Session("fetch_all_GroupService") = amount_str
        Session("str_script_menu") = Replace(str_script, "@", """")
        Session("str_script_menu1") = Replace(str_script1, "@", """")
        Session("str_Style_menu") = str_Style
    End Sub
    
</script>
 <script type ="text/javascript" >
     $(function() {
         if ($(window).width() <= 470) {
             $('.Myul').hide();
         }
         $('.menuMobileCustomer').click(function() {


             $('.Myul').toggle('fast', function() {
                 $(this).closest('#Myul')
                .toggleClass('rolledup', $(this).is(':hidden'));
             });
         });
     });
        
        
        
    </script>