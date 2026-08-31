<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="KartablekDaily_Chart.aspx.vb" Inherits="W_ISM.KartablekDaily_Chart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
     <script type ="text/javascript" src="jquery.js"></script>
    <script type ="text/javascript" >
    $(document).ready(function(){
	 $( "html" ).removeClass( "loading" );
});
    </script>
    <style type ="text/css" >
	
	html {
    -webkit-transition: background-color 1s;
    transition: background-color 1s;
}
html, body {
    min-height: 100%;
}
html.loading {
    background: #efefef;
    background-image :url(images/loading.gif);
    background-repeat :no-repeat ;
    background-position : center center ;
    -webkit-transition: background-color 0;
    transition: background-color 0;
}
body {
    -webkit-transition: opacity 1s ease-in;
    transition: opacity 1s ease-in;
}
html.loading body {
    opacity: 0.2;
    -webkit-transition: opacity 0.5;
    transition: opacity 0.5;
}
	</style>
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
     <link rel="stylesheet" href="../fontawesome/css/font-awesome.min.css" />
     <script type ="text/javascript" src="jquery.js"></script>
     <script src="chart/Chart.bundle.js"></script>
    <script src="chart/utils.js"></script>
    <style>
    canvas{
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
   
    </style>
    <style type ="text/css" >
        @import url('persian-font.css');
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" > 
      <%=Session("createChart")%>
    </div>
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
</body>
</html>
