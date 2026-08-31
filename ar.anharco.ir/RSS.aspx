<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RSS.aspx.vb" Inherits="W_ISM.RSS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>RSS خبری شرکت تامین نیروی انسانی و خدمات پشتیبانی بانک مسکن سهامی خاص</title>
    <link href="graphic/Main.css" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <meta runat ="server"  name="description" id="description" content="تأسست شركة أنهار للإنشاءات عام 1353هـ وتقوم بتنفيذ مشاريع EPC ومحطات تعزيز ضغط الغاز وخطوط الأنابيب والمباني والهياكل والمرافق والمعدات لمشاريع النفط والغاز والبتروكيماويات وخطوط أنابيب نقل المياه.">
    <meta runat ="server" name="keywords" id="keywords" content="شركة إنشاءات، أنهار، مقاولات EPC، محطات تعزيز ضغط الغاز، خطوط الأنابيب، مقاولات البناء، تنفيذ مرافق ومعدات مشاريع النفط والغاز والبتروكيماويات، إمداد الغاز، صيانة المصافي، استبدال بطانة الخطوط، تخفيض ضغط الغاز CGS، خطوط نقل المياه الأنابيب، البناء البتروكيماوي، مساعد الصيانة، الهيكل الخرساني، المبنى السكني، الخزان، خزان السد، تصميم الخريطة">
    <meta name="author" content="BSFE.ir">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
</body>
</html>
