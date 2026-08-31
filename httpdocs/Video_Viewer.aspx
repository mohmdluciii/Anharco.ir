<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Video_Viewer.aspx.vb" Inherits="W_ISM.Video_Viewer" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <title></title>
    <link href="video/video-js.css" rel="stylesheet" />
    <script src="video/video.min.js"></script>
</head>
<body>
   
    <form id="form1" runat="server">
        <table style="width :100%">
            <tr>
                <td align ="center" >
                    
                    <%If Session("MobileVersion") = 1 Then%>
                    <video id="video1"  height="260" width="280"  class="video-js vjs-default-skin" data-setup='{"controls" : true, "autoplay" : true, "preload" : "auto"}'>
                       <%=Session("GalleryFileSource") %>
                     </video>
                    <%Else%>
                    <video id="video1"  height="370" width="620"  class="video-js vjs-default-skin" data-setup='{"controls" : true, "autoplay" : true, "preload" : "auto"}'>
                       <%=Session("GalleryFileSource") %>
                     </video>
                    <%End If%>
                    
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>
