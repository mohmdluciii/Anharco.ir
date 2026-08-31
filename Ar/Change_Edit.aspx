<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Change_Edit.aspx.vb" Inherits="W_ISM.Change_Edit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>تغییرات ارسال شده</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"><link href="graphic/design.css" rel="stylesheet" />
    <script type ="text/javascript" src="jquery.js"></script>
      <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width :100%" dir="rtl">
            <tr>
                <td align ="center" >
                    <table  style="width :90%;font-family:byekan,arial;font-size:10pt;" dir="rtl">
                        <tr><td align ="left" colspan ="2" ><a title="چاپ" onclick="window.open('printReport.aspx','_blank','top=0,left=0')" href="#"><i style="color:#000;font-size:18pt;" class="fa fa-print"></i></a></td></tr>
                        <tr>
                            <td>
                                <table style="width :100%;font-size :9pt;font-family:yekan " dir="rtl" >
                                  <tr>
                                        <td colspan ="2" align ="center" ><asp:Label ID="lblMessage" runat ="server"  ></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>وضعیت : </td>
                                        <td><asp:DropDownList ID="cmb_status" runat ="server" Width ="100" Font-Names ="tahoma" Font-Size ="8pt" ></asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td>اعلان وضعیت : </td>
                                        <td><asp:TextBox ID="textStatus_Change" runat ="server" Width ="300px" TextMode ="MultiLine"  Height ="50px"  Font-Names ="tahoma" Font-Size ="8pt" ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td align="left" ><asp:Button ID="btnSave" runat ="server" Text="ثبت اطلاعات"  
                                                Font-Names ="yekan" Font-Size ="8pt" Height="26px" class="btnPublic" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align ="center" >
                                <asp:Label ID="lblList" runat ="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
