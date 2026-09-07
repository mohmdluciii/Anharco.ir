<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Empty.aspx.vb" Inherits="Safe_Empty" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head id="Head1" runat="server">
    <title>Anhar Co. - Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="Graphic/StudioPanel.css?v=dashTop1" rel="stylesheet" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#myAccountBox').hide();
            $('#myAccount').click(function () {
                $('#myAccountBox').toggle('slow');
            });
        });
    </script>
    <style type="text/css">
        canvas { -moz-user-select: none; -webkit-user-select: none; -ms-user-select: none; }
        .ModalBackground { background-color: black; filter: alpha(opacity=50); opacity: 0.5; }
    </style>
</head>
<body class="studioApp studioDash">
    <form id="form2" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />
    <%=StudioNav.DockHtml("", "", "")%>
    <div class="studioShell">
        <div class="studioHero dashHero">
            <div>
                <div class="dashKicker"><%=LocalPanelSupport.GreetingLine()%></div>
                <h1>داشبورد مدیریتی</h1>
                <p><%=LocalPanelSupport.WelcomeLine()%>. از اینجا آمار سایت را ببینید و متن و عکس صفحات را ویرایش کنید.</p>
            </div>
            <div class="dashQuick">
                <a href="SiteStudio.aspx"><i class="fa fa-picture-o"></i> ویرایش متن و عکس</a>
                <a href="SiteStudio.aspx?g=home"><i class="fa fa-desktop"></i> صفحه اصلی</a>
                <%If LocalPanelSupport.IsSupervisor() Then%>
                <a href="PanelUsers.aspx?kind=admin"><i class="fa fa-users"></i> کاربران پنل</a>
                <%End If%>
            </div>
        </div>
        <div class="formBox">
            <div class="containerForm">
                <div class="InterBoxFormRight">
                    <div class="bodyForm" style="overflow-x:auto;">
                        <div class="visitBoard">
                            <div class="visitBoardHead">
                                <span>بازدید سایت</span>
                                <%If LocalPanelSupport.IsSupervisor() Then%>
                                <button type="button" id="btnResetVisits" class="visitResetBtn" onclick="if(confirm('آیا از ریست کردن آمار بازدید اطمینان دارید؟ تمام اطلاعات بازدید پاک خواهد شد.'))__doPostBack('ResetVisits','');"><i class="fa fa-refresh"></i> ریست آمار</button>
                                <%End If%>
                            </div>
                            <div class="visitStats">
                                <%=SiteVisits.DashboardHtml()%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="Dashboard/chart/Chart.bundle.js"></script>
<script type="text/javascript" src="JS/visit-chart.js?v=vchart2"></script>
<script type="text/javascript" src="MyScript/MenuMobilePanel.js"></script>
<%=Session("scriptSave")%>
</form>
</body>
</html>
