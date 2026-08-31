<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PDF.aspx.vb" Inherits="W_ISM.PDF" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
   <script language="JavaScript">
window.print=function emptyMethod() {};
</script>
</head>
<body>
    <form id="form1" runat="server">
    
    </form>
</body>
</html>
 <script type ="text/javascript" >
    var mediaQueryList = window.matchMedia('print');
mediaQueryList.addListener(function(mql) {
    if (mql.matches) {
        console.log('onbeforeprint');
        alert ('ok');
        window .location .href="htmlpage2.html"
    };
});
    </script>