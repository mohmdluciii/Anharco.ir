<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RSS.aspx.vb" Inherits="W_ISM.RSS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>RSS خبری شرکت تامین نیروی انسانی و خدمات پشتیبانی بانک مسکن سهامی خاص</title>
    <link href="graphic/Main.css" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <meta runat ="server"  name="description" id="description" content="Anhar Construction Company was established in 1353 and implements EPC projects, gas pressure boosting stations, pipelines, buildings and structures, facilities and equipment for oil, gas, petrochemical projects and water transmission pipelines.">
    <meta runat ="server" name="keywords" id="keywords" content="Construction company, Anhar, EPC contracting, gas pressure boosting stations, pipelines, construction contracting, implementation of facilities and equipment for oil, gas, petrochemical projects, gas supply, refinery maintenance, replacement of line lining, CGS gas pressure reduction, lines Water transfer pipe, petrochemical construction, maintenance assistant, concrete skeleton, residential building, reservoir, dam reservoir, map design">
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
