<%@ Page Language="vb" AutoEventWireup="false" Inherits="SiteStudioEditPage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>ویرایش بخش سایت</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <link href="Graphic/StudioPanel.css?v=dashTop3" rel="stylesheet" />
</head>
<body class="studioApp">
<form id="form1" runat="server" enctype="multipart/form-data">
    <div class="memberPanel_TopBox">
        <div onclick="location.href='SiteStudio.aspx'" class="memberPanel_Logo" style="background-image:url(<%=Session("LogoPanel")%>);"></div>
        <div class="memberPanel_Logout"><div class="memberPanel_ContanerLogin"><a href="InputToPanel.aspx?e=1"><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a></div></div>
    </div>
    <%=dockHtml%>
    <div class="editShell">
        <div class="editWrap">
            <a class="back" href="SiteStudio.aspx?lang=<%=lang%>&amp;g=<%=groupId%>">بازگشت به فهرست همین بخش</a>
            <%=neighborHtml%>
            <h1><asp:Label ID="lblHead" runat="server"></asp:Label></h1>
            <div class="hint"><asp:Label ID="lblHint" runat="server"></asp:Label></div>
            <div class="editRowPair">
            <div class="editRowTexts">
            <asp:Panel ID="row1" runat="server" CssClass="field">
                <asp:Label ID="lbl1" runat="server" AssociatedControlID="txt1"></asp:Label>
                <asp:Panel ID="alignBar1" runat="server" CssClass="alignBar">
                    <button type="button" class="alignBtn" onclick="studioAlign('txt1','hidAlign1','rtl');return false;">راست‌چین</button>
                    <button type="button" class="alignBtn" onclick="studioAlign('txt1','hidAlign1','center');return false;">وسط‌چین</button>
                    <button type="button" class="alignBtn" onclick="studioAlign('txt1','hidAlign1','ltr');return false;">چپ‌چین</button>
                    <asp:HiddenField ID="hidAlign1" runat="server" Value="rtl" />
                </asp:Panel>
                <asp:TextBox ID="txt1" runat="server" dir="rtl"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="row2" runat="server" CssClass="field">
                <asp:Label ID="lbl2" runat="server" AssociatedControlID="txt2"></asp:Label>
                <asp:Panel ID="alignBar2" runat="server" CssClass="alignBar">
                    <button type="button" class="alignBtn" onclick="studioAlign('txt2','hidAlign2','rtl');return false;">راست‌چین</button>
                    <button type="button" class="alignBtn" onclick="studioAlign('txt2','hidAlign2','center');return false;">وسط‌چین</button>
                    <button type="button" class="alignBtn" onclick="studioAlign('txt2','hidAlign2','ltr');return false;">چپ‌چین</button>
                    <asp:HiddenField ID="hidAlign2" runat="server" Value="rtl" />
                </asp:Panel>
                <asp:TextBox ID="txt2" runat="server" TextMode="MultiLine" Rows="4" dir="rtl"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="row3" runat="server" CssClass="field">
                <asp:Label ID="lbl3" runat="server" AssociatedControlID="txt3"></asp:Label>
                <asp:Panel ID="alignBar3" runat="server" CssClass="alignBar">
                    <button type="button" class="alignBtn" onclick="studioAlign('txt3','hidAlign3','rtl');return false;">راست‌چین</button>
                    <button type="button" class="alignBtn" onclick="studioAlign('txt3','hidAlign3','center');return false;">وسط‌چین</button>
                    <button type="button" class="alignBtn" onclick="studioAlign('txt3','hidAlign3','ltr');return false;">چپ‌چین</button>
                    <asp:HiddenField ID="hidAlign3" runat="server" Value="rtl" />
                </asp:Panel>
                <asp:TextBox ID="txt3" runat="server" dir="rtl"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="row4" runat="server" CssClass="field">
                <asp:Label ID="lbl4" runat="server" AssociatedControlID="txt4"></asp:Label>
                <asp:Panel ID="alignBar4" runat="server" CssClass="alignBar">
                    <button type="button" class="alignBtn" onclick="studioAlign('txt4','hidAlign4','rtl');return false;">راست‌چین</button>
                    <button type="button" class="alignBtn" onclick="studioAlign('txt4','hidAlign4','center');return false;">وسط‌چین</button>
                    <button type="button" class="alignBtn" onclick="studioAlign('txt4','hidAlign4','ltr');return false;">چپ‌چین</button>
                    <asp:HiddenField ID="hidAlign4" runat="server" Value="rtl" />
                </asp:Panel>
                <asp:TextBox ID="txt4" runat="server" dir="rtl"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="row5" runat="server" CssClass="field">
                <asp:Label ID="lbl5" runat="server" AssociatedControlID="txt5"></asp:Label>
                <asp:Panel ID="alignBar5" runat="server" CssClass="alignBar">
                    <button type="button" class="alignBtn" onclick="studioAlign('txt5','hidAlign5','rtl');return false;">راست‌چین</button>
                    <button type="button" class="alignBtn" onclick="studioAlign('txt5','hidAlign5','center');return false;">وسط‌چین</button>
                    <button type="button" class="alignBtn" onclick="studioAlign('txt5','hidAlign5','ltr');return false;">چپ‌چین</button>
                    <asp:HiddenField ID="hidAlign5" runat="server" Value="rtl" />
                </asp:Panel>
                <asp:TextBox ID="txt5" runat="server" dir="rtl"></asp:TextBox>
            </asp:Panel>
            </div>
            <div class="editRowImage">
            <asp:Panel ID="rowFile" runat="server">
                <fieldset>
                    <legend>فایل (عکس WebP یا GIF متحرک)</legend>
                    <asp:FileUpload ID="fuFile" runat="server" />
                    <asp:HiddenField ID="hidWebp" runat="server" />
                    <asp:HiddenField ID="hidFit" runat="server" Value="50|50|100" />
                    <div class="cropBox">
                        <div class="cropFrameMeta"><%=cropFrameLabel%></div>
                        <div class="cropStage" id="cropStage" <%=cropFrameAttrs%>>
                            <asp:Image ID="imgPreview" runat="server" />
                        </div>
                        <div class="cropControls">
                            <label>بزرگنمایی / کوچک‌نمایی <input type="range" id="fitZoom" min="40" max="250" value="100" /></label>
                            <label>افقی <input type="range" id="fitX" min="0" max="100" value="50" /></label>
                            <label>عمودی <input type="range" id="fitY" min="0" max="100" value="50" /></label>
                            <button type="button" id="btnCropApply" class="alignBtn">برش با همین قاب سایت</button>
                            <button type="button" id="btnFitReset" class="alignBtn">بازنشانی موقعیت</button>
                        </div>
                    </div>
                    <div class="preview">
                        <asp:Label ID="lblPreview" runat="server"></asp:Label>
                    </div>
                </fieldset>
            </asp:Panel>
            </div>
            </div>
            <div class="field syncBox">
                <asp:CheckBox ID="chkSync" runat="server" Checked="true" Text="اعمال لینک و عکس روی فارسی، عربی و انگلیسی با هم (متن و چینش هر زبان جدا می‌ماند)" />
            </div>
            <div class="btns">
                <asp:Button ID="btnSave" runat="server" Text="ذخیره" CssClass="save" OnClick="btnSave_Click" />
                <asp:Button ID="btnDelete" runat="server" Text="حذف عکس این بخش" CssClass="del" OnClick="btnDelete_Click" />
            </div>
            <div class="status"><asp:Label ID="lblStatus" runat="server"></asp:Label></div>
        </div>
    </div>
</form>
<script type="text/javascript">
function studioAlign(inputId, hiddenId, dir) {
    var input = document.getElementById(inputId);
    var hidden = document.getElementById(hiddenId);
    if (!input || !hidden) { return; }
    var start = 0, end = 0, hasSel = false;
    try {
        if (typeof input.selectionStart === "number") {
            start = input.selectionStart;
            end = input.selectionEnd;
            hasSel = true;
        }
    } catch (ex) { }
    hidden.value = dir;
    var cls = " " + (input.className || "") + " ";
    cls = cls.replace(/ studioAlignRtl /g, " ").replace(/ studioAlignLtr /g, " ").replace(/ studioAlignCenter /g, " ");
    if ((cls.indexOf(" ltrInput ") >= 0)) { return; }
    var pageRtl = true;
    try {
        var htmlDir = (document.documentElement.getAttribute("dir") || "").toLowerCase();
        if (htmlDir === "ltr") { pageRtl = false; }
    } catch (ex0) { }
    if (dir === "ltr") {
        input.className = (cls + " studioAlignLtr").replace(/\s+/g, " ").replace(/^\s+|\s+$/g, "");
        input.setAttribute("dir", "ltr");
    } else if (dir === "center") {
        input.className = (cls + " studioAlignCenter").replace(/\s+/g, " ").replace(/^\s+|\s+$/g, "");
        input.setAttribute("dir", pageRtl ? "rtl" : "ltr");
    } else {
        input.className = (cls + " studioAlignRtl").replace(/\s+/g, " ").replace(/^\s+|\s+$/g, "");
        input.setAttribute("dir", "rtl");
    }
    input.style.unicodeBidi = "isolate";
    if (hasSel) {
        try {
            input.focus();
            input.setSelectionRange(start, end);
        } catch (ex2) { }
    }
}
function studioInitAlign() {
    var i, hid, inp, bar, val, cls;
    for (i = 1; i <= 5; i++) {
        hid = document.getElementById("hidAlign" + i);
        inp = document.getElementById("txt" + i);
        bar = document.getElementById("alignBar" + i);
        if (!hid || !inp) { continue; }
        cls = " " + (inp.className || "") + " ";
        if (cls.indexOf(" ltrInput ") >= 0) {
            if (bar) { bar.style.display = "none"; }
            inp.setAttribute("dir", "ltr");
            continue;
        }
        val = hid.value || "rtl";
        studioAlign("txt" + i, "hidAlign" + i, val);
    }
}
if (window.addEventListener) {
    window.addEventListener("load", studioInitAlign, false);
} else if (window.attachEvent) {
    window.attachEvent("onload", studioInitAlign);
}
</script>
<script type="text/javascript" src="Graphic/StudioCrop.js?v=shape1"></script>
</body>
</html>
