<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Empty.aspx.vb" Inherits="Safe_Empty" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head id="Head1" runat="server">
    <title>Anhar Co. - Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="Graphic/StudioPanel.css?v=avatar2" rel="stylesheet" />
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
    <div class="memberPanel_TopBox" id="test">
        <div onclick="location.href='empty.aspx'" class="memberPanel_Logo" style="background-image:url(<%=Session("LogoPanel")%>);"></div>
        <div class="memberPanel_Logout">
            <div class="memberPanel_ContanerLogin">
                <a href="InputToPanel.aspx?e=1"><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a>
            </div>
        </div>
    </div>
    <%=StudioNav.DockHtml("", "", "")%>
    <div class="studioShell">
        <div class="studioHero">
            <div>
                <h1>داشبورد مدیریتی</h1>
                <p>آمار بازدید، نمودارها و وضعیت کلی سایت</p>
            </div>
        </div>
        <div class="formBox">
            <div class="containerForm">
                <div class="SaveBoxContainer" id="saveContainer">
                    <div class="SaveBox" id="saveDialog">
                        <p><i class='fa fa-floppy-o'></i> &nbsp;اطلاعات با موفقیت در سامانه ثبت گردید</p>
                        <input type="button" value="تایید" onclick="closeDialog()" />
                    </div>
                </div>
                <div class="InterBoxFormLeft">
                    <ul>
                        <li>
                            <a class="LinkIcon" href="#" onclick="window.history.back();"><i class="fa fa-reply"></i></a>
                            <ul><li><a class="bubbleLink2">بازگشت</a></li></ul>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <a class="LinkIcon" href="#" onclick="helpContainer.style.display='block';"><i class="fa fa-question-circle"></i></a>
                            <ul><li><a class="bubbleLink3">راهنما</a></li></ul>
                        </li>
                    </ul>
                </div>
                <div class="InterBoxFormRight">
                    <div class="headForm">
                        <asp:Label ID="lblHeader" runat="server" />
                    </div>
                    <div class="bodyForm" style="overflow-x:auto;">
                        <div class="visitBoard">
                            <div class="visitBoardHead">بازدید سایت<button type="button" id="btnResetVisits" class="visitResetBtn" onclick="if(confirm('آیا از ریست کردن آمار بازدید اطمینان دارید؟ تمام اطلاعات بازدید پاک خواهد شد.'))__doPostBack('ResetVisits','');"><i class="fa fa-refresh"></i> ریست آمار</button></div>
                            <div class="visitStats">
                                <%=SiteVisits.DashboardHtml()%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="containerForm_Left">
                <div class="boxKartable_mainpage">
                    <%=Session("fetch_current_Kartable_Manager")%>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="JS/jquery-scrolltofixed.js"></script>
    <script type="text/javascript">$('#test').scrollToFixed();</script>
    <asp:ModalPopupExtender BackgroundCssClass="ModalBackground" ID="m" runat="server" PopupControlID="Panel1" TargetControlID="hiddenField" />
    <asp:Panel ID="panel1" Direction="RightToLeft" runat="server" Style="z-index:1000">
        <center><img src="images/loading.gif" style="z-index:1000" align="middle" /></center>
    </asp:Panel>
    <asp:HiddenField ID="hiddenField" runat="server" />
    <div id="helpContainer" style="position:fixed;top:0;left:0;width:100%;height:100%;margin:0;padding:0;display:none;background:rgba(0,0,0,0.9);text-align:center;z-index:1000000;" onclick="this.style.display='none';">
        <iframe src="pdf.aspx?pagename=<%=System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToString%>" style="width:90%;min-height:800px;position:relative;float:none;margin-left:auto;margin-right:auto;"></iframe>
    </div>
    </form>
</body>
</html>
<script type="text/javascript">
    function closeDialog() {
        document.getElementById("saveContainer").style.display = "none";
    }
</script>
<script type="text/javascript" src="Dashboard/chart/Chart.bundle.js"></script>
<script type="text/javascript" src="JS/visit-chart.js?v=vchart2"></script>
<script type="text/javascript" src="MyScript/MenuMobilePanel.js"></script>
<%=Session("scriptSave")%>
