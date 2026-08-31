<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Calender.aspx.vb" Inherits="W_ISM.Calender" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <script src="js/jquery.min.js"></script>
    <link rel="stylesheet" href="CalenderInput/jquery.calendars.picker.css">
    <script src="JS/1.11.0/jquery.min.js"></script>
    <script src="CalenderInput/jquery.plugin.js"></script>
    <script src="CalenderInput/jquery.calendars.js"></script>
    <script src="CalenderInput/jquery.calendars.plus.js"></script>
    <script src="CalenderInput/jquery.calendars.picker.js"></script>
    <script src="CalenderInput/jquery.calendars.persian.js"></script>

    <script>
$(function() {
//	$.calendars.picker.setDefaults({renderer: $.calendars.picker.themeRollerRenderer}); // Requires jquery.calendars.picker.ext.js
	var calendar = $.calendars.instance('persian');
	
	$('#inlineDatepicker').calendarsPicker({calendar: calendar, onSelect: showDate});
});
function showDate(date) {
	
}
</script>
</head>
<body >
    <form id="form1" runat="server">
<div style="position :relative ;top:0px;left:0px;">
                        <div id="inlineDatepicker" >
                        </div>
                    </div>
    </form>
</body>
</html>
