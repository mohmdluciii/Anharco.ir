<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="OnlinePlan_SelectSize.aspx.vb" Inherits="W_ISM.OnlinePlan_SelectSize" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <link href="graphic/GraphicLayer.css" rel="Stylesheet"  />
    <link rel="stylesheet" type="text/css" href="src/css/style.css">
</head>
<body>
    <form id="form1" runat="server">
    
    
    <div class="onlineplan_selectSize_Mainpage">
        <p style="position:relative ;top:0px;margin-top :100px; font-family :yekan,arial;font-size:12pt;direction:rtl">لطفا سایز را انتخاب نمائید : <asp:DropDownList ID="cmb_size" runat ="server" style="font-family:yekan,arial;font-size :12pt;height:40px;width :200px;border:1px solid #ccc;" AutoPostBack ="true" class="canvas-background-color" ></asp:DropDownList></p>
         
    </div>
    </form>
</body>
</html>
