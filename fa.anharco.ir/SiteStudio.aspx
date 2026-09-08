<%@ Page Language="vb" AutoEventWireup="false" Inherits="SiteStudioPage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>استودیو سایت</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="fontawesome/css/font-awesome.min.css" />
    <link href="Graphic/StudioPanel.css?v=dashTop3" rel="stylesheet" />
</head>
<body class="studioApp">
<form id="form1" runat="server">
    <div class="memberPanel_TopBox">
        <div onclick="location.href='SiteStudio.aspx'" class="memberPanel_Logo" style="background-image:url(<%=Session("LogoPanel")%>);"></div>
        <div class="memberPanel_Logout"><div class="memberPanel_ContanerLogin"><a href="InputToPanel.aspx?e=1"><i class="fa fa-power-off memberPanel_LogOut_Icon"></i></a></div></div>
    </div>
    <%=dockHtml%>
    <div class="studioShell">
        <div class="studioHero">
            <div>
                <h1>استودیو سایت</h1>
                <p>دسته بندی ها همان ترتیب منوی سایت است. از نوار شناور سمت راست هر لحظه به بخش بعدی بروید. لینک و عکس با یک ذخیره روی هر سه زبان عوض می شوند.</p>
            </div>
            <div class="langTabs">
                <a href="SiteStudio.aspx?lang=fa&amp;g=<%=groupId%>" class="<%If lang="fa" Then%>on<%End If%>">فارسی</a>
                <a href="SiteStudio.aspx?lang=ar&amp;g=<%=groupId%>" class="<%If lang="ar" Then%>on<%End If%>">العربية</a>
                <a href="SiteStudio.aspx?lang=en&amp;g=<%=groupId%>" class="<%If lang="en" Then%>on<%End If%>">English</a>
            </div>
        </div>
        <div class="groupRail">
            <a href="SiteStudio.aspx?lang=<%=lang%>" class="<%If groupId="" Then%>on<%End If%>">همه</a>
            <a href="SiteStudio.aspx?lang=<%=lang%>&amp;g=home" class="<%If groupId="home" Then%>on<%End If%>">صفحه اصلی</a>
            <a href="SiteStudio.aspx?lang=<%=lang%>&amp;g=about" class="<%If groupId="about" Then%>on<%End If%>">درباره ما</a>
            <a href="SiteStudio.aspx?lang=<%=lang%>&amp;g=projects" class="<%If groupId="projects" Then%>on<%End If%>">پروژه ها</a>
            <a href="SiteStudio.aspx?lang=<%=lang%>&amp;g=services" class="<%If groupId="services" Then%>on<%End If%>">خدمات</a>
            <a href="SiteStudio.aspx?lang=<%=lang%>&amp;g=contact" class="<%If groupId="contact" Then%>on<%End If%>">تماس با ما</a>
            <a href="SiteStudio.aspx?lang=<%=lang%>&amp;g=news" class="<%If groupId="news" Then%>on<%End If%>">اخبار</a>
            <a href="SiteStudio.aspx?lang=<%=lang%>&amp;g=gallery" class="<%If groupId="gallery" Then%>on<%End If%>">گالری</a>
            <a href="SiteStudio.aspx?lang=<%=lang%>&amp;g=footer" class="<%If groupId="footer" Then%>on<%End If%>">فوتر و شبکه ها</a>
            <a href="SiteStudio.aspx?lang=<%=lang%>&amp;g=chrome" class="<%If groupId="chrome" Then%>on<%End If%>">هویت و لوگو</a>
        </div>
        <div class="map">
            <%=mapHtml%>
        </div>
        <div class="studioMore">
            <b>فهرست های جانبی که هنوز از پنل قدیمی باز می شوند:</b><br />
            <a href="Gallery_List.aspx">آلبوم گالری</a>
            <a href="ContactUs_List.aspx">پیام های تماس</a>
            <a href="PanelUsers.aspx?kind=admin">کاربران پنل</a>
            <a href="PanelUsers.aspx?kind=person">پرسنل</a>
        </div>
    </div>
</form>
</body>
</html>
