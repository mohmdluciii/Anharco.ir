<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Chart.aspx.vb" Inherits="W_ISM.Chart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type ="text/css" >
        @import url('persian-font.css');
        .contentBox
        {
            position:relative ;top:0px;left:0px;display:block;width:100%;height:100%;text-decoration :none;font-size :10pt;font-family:yekan,arial;color:#fff;line-height :45px;vertical-align :middle;cursor:pointer ;
        }
        .contentBox:hover
        {
            color:#000;
        }
                   
    </style>
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <meta runat ="server"  name="description" id="description" content="Anhar Construction Company was established in 1353 and implements EPC projects, gas pressure boosting stations, pipelines, buildings and structures, facilities and equipment for oil, gas, petrochemical projects and water transmission pipelines.">
    <meta runat ="server" name="keywords" id="keywords" content="Construction company, Anhar, EPC contracting, gas pressure boosting stations, pipelines, construction contracting, implementation of facilities and equipment for oil, gas, petrochemical projects, gas supply, refinery maintenance, replacement of line lining, CGS gas pressure reduction, lines Water transfer pipe, petrochemical construction, maintenance assistant, concrete skeleton, residential building, reservoir, dam reservoir, map design">
    <meta name="author" content="BSFE.ir">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <form id="form1" runat="server">
       



   <div style="position:relative;top:0px;left:0px;width:100%;min-height:600px;">
        
   <div style ="position:absolute ;top:30px;left:0px;width:100%;min-height:30px;line-height:30px;font-family:Yekan,arial;font-size:14pt;text-align :center ;direction:rtl;">نمودار سازمانی شرکت تامین نیروی انسانی و خدمات پشتیبانی بانک مسکن</div>     
         <div style ="position:absolute;top:100px;left:420px;width:150px;border:2px solid #FF9A6C;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#FF9A6C;line-height:45px;"><a class ="contentBox"  target="framePerson" onmouseover="part1.style.display='block';"  onmouseout="part1.style.display='none';" >هیات مدیره</a> </div>
         
         
  <div id="part1" style="position:absolute;top:5px;left:573px;width:350px;height:400px;background :#fff;display:none;">
         <div style="position:absolute;top:125px;left:0px;width:80px;background-color :gray;height:2px"></div>
         <div style="position:absolute;top:50px;left:27px;width:2px;background-color :gray;height:300px"></div>
         <div style="position:absolute;top:50px;left:27px;width:53px;background-color :gray;height:2px"></div>
         <div style ="position:absolute;top:15px;left:77px;width:180px;border:2px solid gray;font-size:10pt;font-family:Yekan,arial;text-align :center;height:65px;vertical-align :middle;background-color :#fff">
            <img src="images/izadi.jpg" style="position:relative ;top:2px;float:left;left:5px;width:60px;height:60px;border-radius:180px;" />
            <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;font-weight:700">مسعود ایزدی</p>
            <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;">رئیس هیات مدیره</p>
            <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;">تلفن: 82932320</p>
         </div>
         <div style ="position:absolute;top:90px;left:77px;width:180px;border:2px solid gray;font-size:10pt;font-family:Yekan,arial;text-align :center;height:65px;vertical-align :middle;background-color :#fff">
            <img src="images/DefaultMan.png" style="position:relative ;top:2px;float:left;left:5px;width:60px;height:60px;border-radius:180px;" />
            <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;font-weight:700">یوسف کمالی فر</p>
            <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;">نایب رئیس هیات مدیره</p>
         </div>
         <div style="position:absolute;top:200px;left:27px;width:53px;background-color :gray;height:2px"></div>
         <div style ="position:absolute;top:170px;left:77px;width:180px;border:2px solid gray;font-size:10pt;font-family:Yekan,arial;text-align :center;height:65px;vertical-align :middle;background-color :#fff">
            <img src="images/najafian.jpg" style="position:relative ;top:2px;float:left;left:5px;width:60px;height:60px;border-radius:180px;" />
            <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;font-weight:700">پرویز نجفیان</p>
            <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;">عضو هیات مدیره</p>
         </div>
         <div style="position:absolute;top:275px;left:27px;width:53px;background-color :gray;height:2px"></div>
         <div style ="position:absolute;top:245px;left:77px;width:180px;border:2px solid gray;font-size:10pt;font-family:Yekan,arial;text-align :center;height:65px;vertical-align :middle;background-color :#fff">
            <img src="images/jahanbakhsh.jpg" style="position:relative ;top:2px;float:left;left:5px;width:60px;height:60px;border-radius:180px;" />
            <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;font-weight:700">نریمان جهانبخش</p>
            <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;">عضو هیات مدیره</p>
         </div>
         <div style="position:absolute;top:350px;left:27px;width:53px;background-color :gray;height:2px"></div>
         <div style ="position:absolute;top:320px;left:77px;width:180px;border:2px solid gray;font-size:10pt;font-family:Yekan,arial;text-align :center;height:65px;vertical-align :middle;background-color :#fff">
            <img src="images/9696.jpg" style="position:relative ;top:2px;float:left;left:5px;width:60px;height:60px;border-radius:180px;" />
            <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;font-weight:700">مرتضی صالحی</p>
            <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;">عضو هیات مدیره</p>
            <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;">تلفن : 22034082</p>
         </div>
 </div>
 
 <div id="part2" style="position:absolute;top:160px;left:573px;width:350px;height:100px;background :#fff;display:none;">
    <div style="position:absolute;top:55px;left:0px;width:80px;background-color :gray;height:2px"></div>
    <div style ="position:absolute;top:20px;left:77px;width:180px;border:2px solid gray;font-size:10pt;font-family:Yekan,arial;text-align :center;height:65px;vertical-align :middle;background-color :#fff">
        <img src="images/Taleghani.jpg" style="position:relative ;top:2px;float:left;left:5px;width:60px;height:60px;border-radius:180px;" />
        <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;font-weight:700">حامد مقصود طالقانی</p>
        <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;">مدیر عامل</p>
        <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;">تلفن : 40224727 </p>
    </div>
 </div>   
 
 <div id="part3" style="position:absolute;top:360px;left:690px;width:300px;height:100px;background :#fff;display:none;z-index:1000;">
    <div style="position:absolute;top:55px;right:0px;width:80px;background-color :gray;height:2px"></div>
    <div style="position:absolute;top:55px;right:0px;height:45px;background-color :gray;width:2px"></div>
    <div style ="position:absolute;top:20px;left:87px;width:180px;border:2px solid gray;font-size:10pt;font-family:Yekan,arial;text-align :center;height:65px;vertical-align :middle;background-color :#fff">
        <img src="images/DefaultMan.png" style="position:relative ;top:2px;float:left;left:5px;width:60px;height:60px;border-radius:180px;" />
        <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;font-weight:700">بختیار مولوی</p>
        <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;">مدیر امور مالی</p>
    </div>
 </div>   
 
 
 <div id="part4" style="position:absolute;top:430px;left:260px;width:300px;height:100px;background :#fff;display:none ;z-index:1000;">
    <div style="position:absolute;top:55px;right:0px;width:80px;background-color :gray;height:2px"></div>
    
    <div style ="position:absolute;top:20px;left:87px;width:180px;border:2px solid gray;font-size:10pt;font-family:Yekan,arial;text-align :center;height:65px;vertical-align :middle;background-color :#fff">
        <img src="images/DefaultMan.png" style="position:relative ;top:2px;float:left;left:5px;width:60px;height:60px;border-radius:180px;" />
        <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;font-weight:700">فائزه قنبرپور</p>
        <p style="position:relative;margin :0;padding :0;font-size :9pt;font-family:Yekan,Arial;color:Gray;text-align :right ;direction:rtl;width:95%;height:20px;line-height :20px;">مدیر امور اداری</p>
    </div>
 </div>            
         
         <div style="position:absolute;top:148px;left:495px;width:2px;background-color :gray;height:40px"></div>
         <div style ="position:absolute;top:188px;left:420px;width:150px;border:2px solid #FF9B6A;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#FF9B6A"><a class ="contentBox" target="framePerson"  onmouseover="part2.style.display='block';"  onmouseout="part2.style.display='none';" >مدیر عامل</a></div>
         <div style="position:absolute;top:237px;left:495px;width:2px;background-color :gray;height:120px"></div>
         <div style ="position:absolute;top:355px;left:420px;width:150px;border:2px solid #FF9B6A;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#FF9B6A"><a class ="contentBox" target="framePerson" >معاون و ناظر مراکز رفاهی</a> </div>
         <div style="position:absolute;top:295px;left:316px;width:180px;background-color :gray;height:2px"></div>
         <div style="position:absolute;top:237px;left:345px;width:2px;background-color :gray;height:120px"></div>
         <div style="position:absolute;top:237px;left:315px;width:30px;background-color :gray;height:2px"></div>
         <div style="position:absolute;top:355px;left:315px;width:30px;background-color :gray;height:2px"></div>
         <div style ="position:absolute;top:215px;left:162px;width:150px;border:2px solid #A1B3B7;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#A1B3B7"><a class ="contentBox">مسئول دفتر</a> </div>
         <div style ="position:absolute;top:272px;left:162px;width:150px;border:2px solid #A1B3B7;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#A1B3B7"><a class ="contentBox">مشاورین </a> </div>
         <div style ="position:absolute;top:330px;left:162px;width:150px;border:2px solid #A1B3B7;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#A1B3B7"><a class ="contentBox">CRM کارشناس بازاریابی و </a> </div>
         <div style="position:absolute;top:403px;left:495px;width:2px;background-color :gray;height:350px"></div>
         <div style="position:absolute;top:430px;left:150px;width:800px;background-color :gray;height:2px"></div>
         <div style="position:absolute;top:430px;left:150px;width:2px;background-color :gray;height:30px"></div>
         <div style="position:absolute;top:430px;left:650px;width:2px;background-color :gray;height:30px"></div>
         <div style="position:absolute;top:430px;left:950px;width:2px;background-color :gray;height:30px"></div>
         <div style ="position:absolute;top:460px;left:60px;width:180px;border:2px  solid #FF9B6A;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#FF9B6A"><a class ="contentBox" target="framePerson" href="Person_co.aspx?p=4">مدیریت امور فنی و پشتیبانی   </a>  </div>
         <div style ="position:absolute;top:460px;left:560px;width:180px;border:2px solid #FF9B6A;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#FF9B6A"><a class ="contentBox" target="framePerson" onmouseover="part4.style.display='block';"  onmouseout="part4.style.display='none';">مدیریت امور اداری </a>  </div>
         <div style ="position:absolute;top:460px;left:860px;width:180px;border:2px solid #FF9B6A;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#FF9B6A"><a class ="contentBox" target="framePerson"   onmouseover="part3.style.display='block';"  onmouseout="part3.style.display='none';" >مدیریت امور مالی </a>  </div>
         <div style="position:absolute;top:509px;left:150px;width:2px;background-color :gray;height:30px"></div>
         <div style="position:absolute;top:509px;left:650px;width:2px;background-color :gray;height:30px"></div>
         <div style="position:absolute;top:509px;left:950px;width:2px;background-color :gray;height:30px"></div>
         <div style="position:absolute;top:537px;left:100px;width:100px;background-color :gray;height:2px"></div>
         <div style="position:absolute;top:537px;left:600px;width:100px;background-color :gray;height:2px"></div>
         <div style="position:absolute;top:537px;left:900px;width:100px;background-color :gray;height:2px"></div>
         
         <div style="position:absolute;top:538px;left:100px;width:2px;background-color :gray;height:30px"></div>
         <div style="position:absolute;top:538px;left:199px;width:2px;background-color :gray;height:30px"></div>
         
         <div style="position:absolute;top:538px;left:600px;width:2px;background-color :gray;height:30px"></div>
         <div style="position:absolute;top:538px;left:699px;width:2px;background-color :gray;height:30px"></div>
         
         <div style="position:absolute;top:538px;left:900px;width:2px;background-color :gray;height:30px"></div>
         <div style="position:absolute;top:538px;left:999px;width:2px;background-color :gray;height:30px"></div>
         
         <div style ="position:absolute;top:568px;left:45px;width:100px;border:2px solid #A1B3B7;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color:#A1B3B7"><a  class ="contentBox">خدمات عمومی</a> </div>
         <div style ="position:absolute;top:568px;left:150px;width:100px;border:2px solid #A1B3B7;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color:#A1B3B7"><a class ="contentBox">خدمات فنی </a> </div>
         
         <div style ="position:absolute;top:568px;left:545px;width:100px;border:2px solid #A1B3B7;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color:#A1B3B7"><a class ="contentBox">دبیرخانه </a> </div>
         <div style ="position:absolute;top:568px;left:650px;width:100px;border:2px solid #A1B3B7;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color:#A1B3B7"><a class ="contentBox">پرسنلی </a>  </div>
         
         <div style ="position:absolute;top:568px;left:845px;width:100px;border:2px solid #A1B3B7;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color:#A1B3B7"><a class ="contentBox">حسابداری داخلی </a> </div>
         <div style ="position:absolute;top:568px;left:950px;width:100px;border:2px solid #A1B3B7;font-size:10pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color:#A1B3B7"><a class ="contentBox">حسابداری مراکز </a> </div>
         
         <div style="position:absolute;top:650px;left:450px;width:100px;background-color :gray;height:2px"></div>
         <div style="position:absolute;top:707px;left:450px;width:100px;background-color :gray;height:2px"></div>
         
         <div style ="position:absolute;top:628px;left:268px;width:180px;border:2px solid #A1B3B7;font-size:9pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#A1B3B7"><a class ="contentBox">مجتمع فرهنگی و آموزشی دریاکنار</a></div>
         <div style ="position:absolute;top:628px;left:550px;width:180px;border:2px solid #A1B3B7;font-size:9pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#A1B3B7"><a class ="contentBox">مجتمع آموزشی،فرهنگی ،ورزشی بانک مسکن </a></div>
         
         <div style ="position:absolute;top:685px;left:268px;width:180px;border:2px solid #A1B3B7;font-size:9pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#A1B3B7"><a class ="contentBox">هتل سلام مشهد</a></div>
         <div style ="position:absolute;top:685px;left:550px;width:180px;border:2px solid #A1B3B7;font-size:9pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#A1B3B7"><a class ="contentBox">زائرسرای مشهد</a></div>
         
         <div style ="position:absolute;top:751px;left:400px;width:180px;border:2px solid #A1B3B7;font-size:9pt;font-family:Yekan,arial;text-align :center;height:45px;vertical-align :middle;background-color :#A1B3B7"><a class ="contentBox">چادگان</a></div>
         
    </div>
    </form>
</body>
</html>
