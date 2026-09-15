<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm6.aspx.vb" Inherits="W_ISM.WebForm6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
        <link href="dist/css/vdrop.min.css" rel="stylesheet" type="text/css"/>
		<script src="js/jquery.min.js" type="text/javascript"></script>
		<script src="dist/js/jquery.vdrop.min.js" type="text/javascript"></script>
		<script type="text/javascript">
			(function ($) {
				$(document).ready(function () {
					$('[name="select-event"]').on('change update', function () {
						$(this).parent().siblings().children().text($(this).find('option:selected').val());
					});

					$('select').vDrop({allowMultiple: false});

					setTimeout(function () {
						$('[name="delayed"]').append('<option>Now</option><option>We\'re</option><option selected="selected">loaded & i\'m selected</option>').vDrop('update');
					}, 1000);

					$('[name="heading-close"]').closest('.example').find('h2').on('mouseover', function () {
						$('[name="heading-close"]').data('plugin_vDrop').close($('[name="heading-close"]'));
					});
				});
			})(jQuery);
		</script>
		<style type="text/css">
			body{
				font-family: arial, helvetica, sans-serif;
				font-size: 14px;
			}

			.example{
				margin-bottom: 20px;
				padding: 10px 10px 0 10px;
				border: 1px solid #ccc;
			}

			h2{
				margin: 0;
			}
		</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
			
				
				<asp:DropDownList ID="cmb_yes" runat ="server"  ></asp:DropDownList>
			
			<div class="example">
				<h2>Pre-selected</h2>
				<select name="selected">
					<option value="not">Not selected</option>
					<option selected="selected">This is pre-selected</option>
				</select>
			</div>
			<div class="example">
				<h2>Populated after interval</h2>
				<select name="delayed"></select>
			</div>
			<div class="example">
				<h2>Grouping</h2>
				<select name="grouping">
					<optgroup label="One">
						<option>First</option>
						<option>Group</option>
					</optgroup>
					<optgroup label="Two">
						<option>Second</option>
						<option>List</option>
						<option>With</option>
						<option selected="selected">Selected</option>
					</optgroup>
				</select>
			</div>
			<div class="example">
				<h2>Heading hover closes dropdown</h2>
				<select name="heading-close">
					<option>Hovering heading</option>
					<option>Closes this</option>
				</select>
			</div>
			<div class="example">
				<h2>Select value: <span id=""></span></h2>
				<select name="select-event">
					<option>Not</option>
					<option selected="selected">Selected</option>
				</select>
			</div>
		</div>
    </form>
</body>
</html>
