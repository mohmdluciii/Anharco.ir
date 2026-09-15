<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Captcha.aspx.vb" Inherits="W_ISM.Captcha" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
 <link href="Graphic/GraphicLayer.css" rel="Stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <script src="/utf8/utf8.js"></script>
      <!--ForExport data in iamge -->
        <script type="text/javascript">
           
            function ConvertToImage(btnExport) {
                html2canvas($("#dvTable")[0]).then(function(canvas) {
               

                    var base64 = canvas.toDataURL();
                    $("[id*=hfImageData]").val(base64);
                    __doPostBack(btnExport.name, "");
                });
                return false;
            }
        </script>
       
        <!--ForExport data in iamge -->

        <script type="text/javascript" src="js/jquery/js/jquery.min.js"></script>
        <script src="js/html2canvas.min.js"></script>
        <script>
            var canvas = document.getElementById("e");
            var a1 = document.getElementById("a1");

            var context = canvas.getContext("2d");
            context.fillStyle = "#000";
            context.font = "bold 16px Arial";
            context.fillText(a1.innerHTML, 10, 20);
</script>
<style type ="text/css" >


span {
  font-size: 18px;
  font-family: 'Kelly Slab', cursive;
}


</style>
<style type ="text/css" >
    .pattern1
    {
    	
background-color: #EEB400;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='100%25' height='100%25'%3E%3Cdefs%3E%3Cpattern id='p' width='100' height='100' patternUnits='userSpaceOnUse'%3E%3Cpath id='a' data-color='fill' fill='%23FFF' d='M0 0v50l50 50V50zM50 0v50l50 50V50z'%3E%3C/path%3E%3C/pattern%3E%3C/defs%3E%3Crect fill='url(%23p)' width='100%25' height='100%25'%3E%3C/rect%3E%3C/svg%3E");

background-position: center;
background-repeat: no-repeat;
background-size:100%;
    }
    
     .pattern2
    {
    	
background-color: #00C0EB;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='100%25' height='100%25'%3E%3Cdefs%3E%3Cpattern id='p' width='100' height='100' patternUnits='userSpaceOnUse'%3E%3Cpath data-color='fill' fill='%23FFF' d='M50 0C22.4 0 0 22.4 0 50c27.6 0 50-22.4 50-50zM0 50c0 27.6 22.4 50 50 50 0-27.6-22.4-50-50-50zM100 50c-27.6 0-50 22.4-50 50 27.6 0 50-22.4 50-50zM100 50c0-27.6-22.4-50-50-50 0 27.6 22.4 50 50 50z'%3E%3C/path%3E%3C/pattern%3E%3C/defs%3E%3Crect fill='url(%23p)' width='100%25' height='100%25'%3E%3C/rect%3E%3C/svg%3E");
background-size:100%;
background-position: center;
background-repeat: no-repeat;


    }
    
      .pattern3
    {
    	

background-color: #00C0EB;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25' height='100%25'%3E%3Cdefs%3E%3Cpattern id='p' width='100' height='100' patternUnits='userSpaceOnUse'%3E%3Cpath data-color='outline' fill='none' stroke='%23FFF' stroke-width='5' d='M0 0h100v50H0zM-50 50h100v50h-100zM50 50h100v50h-100z'%3E%3C/path%3E%3C/pattern%3E%3C/defs%3E%3Crect fill='url(%23p)' width='100%25' height='100%25'%3E%3C/rect%3E%3C/svg%3E");
background-size:100%;
background-position: center;
background-repeat: no-repeat;



    }
    
      .pattern4
    {
    	


background-color: #00C0EB;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='100%25' height='100%25'%3E%3Cdefs%3E%3Cpattern id='p' width='100' height='100' patternUnits='userSpaceOnUse'%3E%3Ccircle id='a' data-color='outline' fill='none' stroke='%23FFF' stroke-width='25' r='.5'%3E%3C/circle%3E%3Cuse xlink:href='%23a' y='100'%3E%3C/use%3E%3Cuse xlink:href='%23a' x='100'%3E%3C/use%3E%3Cuse xlink:href='%23a' x='100' y='100'%3E%3C/use%3E%3Cuse xlink:href='%23a' x='50' y='50'%3E%3C/use%3E%3C/pattern%3E%3C/defs%3E%3Crect fill='url(%23p)' width='100%25' height='100%25'%3E%3C/rect%3E%3C/svg%3E");
background-size:100%; 
background-position: center;
background-repeat: no-repeat;



    }
    
     .pattern5
    {
    	



background-color: #00C0EB;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25' height='100%25'%3E%3Cdefs%3E%3Cpattern id='p' width='100' height='100' patternUnits='userSpaceOnUse'%3E%3Cpath data-color='outline' fill='none' stroke='%23FFF' stroke-width='10' d='M50 0v100M100 50H0'%3E%3C/path%3E%3C/pattern%3E%3C/defs%3E%3Crect fill='url(%23p)' width='100%25' height='100%25'%3E%3C/rect%3E%3C/svg%3E");
background-size:100%;
background-position: center;
background-repeat: no-repeat;



    }
    
      .pattern6
    {
    	




background-color: #00C0EB;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='100%25' height='100%25'%3E%3Cdefs%3E%3Cpattern id='p' width='100' height='100' patternUnits='userSpaceOnUse'%3E%3Cg id='a' data-color='fill' fill='%23FFF'%3E%3Cpath d='M50-50h100V50H50z'%3E%3C/path%3E%3Cpath opacity='.5' d='M-50-50V50H50v100h100V-50z'%3E%3C/path%3E%3C/g%3E%3C/pattern%3E%3C/defs%3E%3Crect fill='url(%23p)' width='100%25' height='100%25'%3E%3C/rect%3E%3C/svg%3E");
background-size:100%;
background-position: center;
background-repeat: no-repeat;




    }
</style>
</head>
<body style="font-family:sans-serif" id="myBody">
    <form id="form1" runat="server">
   
    <table>
                <tr>
                    <td valign="top">
                        <asp:Button ID="btnExport" Text="Download Back" runat="server" UseSubmitBehavior="false"
                            OnClick="ExportToImage" OnClientClick="return ConvertToImage(this)"  style="display:none;"/>
                        <div id="dvTable" class="divsection2" style="width: 120px;direction:rtl;height:45px">
                            <asp:HiddenField ID="hfImageData" runat="server" />
                            <table width="100%" style="direction:rtl;" class="<%=Session("pattern") %>">
                                <tr>
                                    <td>
                                   
                                 <%=Session("codePayGiri")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Labelgg" runat="server" CssClass="labans4" Text=""></asp:Label>
                                    </td>
                                </tr>

                            </table>
                        </div>
                    </td>
                </tr>
            </table>

    </form>
</body>
</html>
<script >    $("#btnExport").click();</script>