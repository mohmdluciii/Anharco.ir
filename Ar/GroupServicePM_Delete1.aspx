<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GroupServicePM_Delete1.aspx.vb" Inherits="W_ISM.GroupServicePM_Delete1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title></title>
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
    <div style ="position:absolute ;top:0px;left:0px;width:100%;display:inline-block;text-align :center;padding-top :10px;"><div class="DeleteContainer">
        <p ><i class='fa fa-trash-o'></i> &nbsp;آیا قصد حذف اطلاعات از سامانه را دارید؟</p>
        <p style="text-align :center;"><asp:Button ID="btn_cancel" runat ="server"  Text ="خیر" /><asp:Button ID="btn_ok" runat ="server" Text="بلی" /></p>
    </div></div>
    </form>
</body>
</html>
<script type ="text/javascript" >
    $(document).ready(function() {
        $("html").removeClass("loading");
    });
    </script>