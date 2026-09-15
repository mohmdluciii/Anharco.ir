<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Law_Delete.aspx.vb" Inherits="W_ISM.Law_Delete1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
      <title>Untitled Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"><link href="graphic/design.css" rel="stylesheet" />
     <script type ="text/javascript" src="jquery.js"></script>
      <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
      <style type ="text/css" >
        html,body
        {
        	padding :0;
        	margin :0;
        }
      </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="DeleteContainer">
        <p ><i class='fa fa-trash-o'></i> &nbsp;آیا قصد حذف اطلاعات از سامانه را دارید؟</p>
        <p style="text-align :center;"><asp:Button ID="btn_cancel" runat ="server"  Text ="خیر" /><asp:Button ID="btn_ok" runat ="server" Text="بلی" /></p>
    </div>
    <div id="helpContainer" style="position:fixed  ;top:0px;left:0px;width :100%;height:100%; margin :0;padding :0;background-attachment:fixed;display:none;background :rgb(0,0,0);background :rgba(0,0,0,0.9);text-align :center ;z-index:100000000000000000000000000000000000000000;" onclick="this.style.display='none';"><iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString %>" style="width:90%;min-height:800px;position:relative ;float:none;margin-left :auto ;margin-right :auto ;" ></iframe></div></form>
</body>
</html>