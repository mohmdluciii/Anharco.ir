<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TopPage.aspx.vb" Inherits="W_ISM.TopPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>سامانه مدیریتی </title>
     <link href="StandardCSS.css" type="text/css" rel="styleSheet"/>
    <script type="text/javascript"  language="javascript" src="checkNumber.js"></script>
    <script type ="text/javascript" >
        var co_pic=0
        var co_frame=5.7
        var counter=0
        var co_other=5.2
        var flgIcon=0
        function setTimer()
        {
            counter=0
            ObjectTimer=setInterval(moveObject,50)
        }
        function moveObject()
        {
            if (counter  > 49 )
            {
                if (flgIcon==0)
                {
                    flgIcon =1
                }
                else
                {
                    flgIcon =0
                }
                clearInterval(ObjectTimer); 
            }
            else
            {
                if (flgIcon ==0)
                {
                    form1.oBanner.style.top =co_pic + "cm" ;
                    btnexit.style.top=co_other + "cm" ;
                    obj1.style.top=co_other + "cm" ;
                    obj2.style.top=co_other + "cm" ;
                    form1.oimg .style.top=co_other + "cm" ;
                    co_pic=co_pic- 0.1
                    co_other=co_other - 0.1
                    document.all.oFrame.style.top=co_frame+ "cm" ;
                    co_frame =co_frame - 0.1 
                    counter++;
                }
                else
                {
                    
                    form1.oBanner.style.top =co_pic + "cm" ;
                    btnexit.style.top=co_other + "cm" ;
                    obj1.style.top=co_other + "cm" ;
                    obj2.style.top=co_other + "cm" ;
                    form1.oimg .style.top=co_other + "cm" ;
                    co_pic=co_pic+ 0.1
                    co_other=co_other + 0.1
                    document.all.oFrame.style.top=co_frame+ "cm" ;
                    co_frame =co_frame + 0.1 
                    counter++;
                }
            }
        }
        function setIcon()
        {
            if (flgIcon ==0)
            {
                
                form1.oimg .src="images/icon2.gif"
            }
            else
            {
            
                form1.oimg .src="images/icon1.gif"
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img id="oBanner" src="images/banner.jpg" style="position:absolute ;top:0cm;left:0cm" alt="" />
        <span id="btnexit" onclick ="location.href='InputToPanelManager.aspx?Exit=1'"  onmouseover="this.style.color='yellow'" onmouseout="this.style.color='white'" style="position:absolute;top:5.2cm;left:5cm;width:3cm;font-size:8pt;font-family:Tahoma;font-weight:500;color:darkblue;color:White;text-decoration:none;cursor:pointer">خروج از پنل</span>
        
        <img id="oimg" src="images/icon1.gif" onclick="setTimer();setIcon()" style="position:absolute;top:5.2cm;left:0.2cm;cursor:pointer" alt="برای صفحه کاری بزرگتر کلیک نمائید" />
        <iframe src="index.htm" id="oFrame" style="position:absolute ;top:5.7cm;left:0cm;width:26.6cm;height:34cm" frameborder= "0" ></iframe>
        <p style="position:absolute ;top:38.5cm;left:4cm;width:16cm;font-size:8pt;font-weight:500;color:darkblue;color:#2d2d2d;text-align:justify;line-height:0.6cm;text-align:center" dir="rtl" >
        <!--کلیه حقوق این سامانه متعلق به شرکت مهندسی فرا ارتباط به پویان است. هر گونه الگو برداری و استفاده بدون اجازه شرکت ، بر اساس قانون مالکیت معنوی ، پی گرد قانونی دارد.-->
        </p>
    </div>
    </form>
</body>
</html>
