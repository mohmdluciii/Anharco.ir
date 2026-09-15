Module Menu_Inner
    Public number_SelectMenu As Integer = 0
    Public number_SelectSubMenu As Integer = 0
    Public Function create_Menu() As String
        Dim amount_str As String = ""
        amount_str = "<li>"
        If number_SelectMenu = 1 Then
            amount_str = amount_str & "<a href=@#@ class=@active@  id=@myAccount1@ ><i class=@fa  fa-hourglass-start@ ></i>راه اندازی سامانه<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        Else
            amount_str = amount_str & "<a href=@#@   id=@myAccount1@ ><i class=@fa  fa-hourglass-start@ ></i>راه اندازی سامانه<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        End If
        amount_str = amount_str & "<ul id=@myAccountBox1@> "
        amount_str = amount_str & "<li><a href=@../website_frm.aspx@    'classSubMenu11'><i class=@fa  fa-hourglass-start@ ></i>نام وب سایت</a></li>"
        amount_str = amount_str & "<li><a href=@../Upload_Icon.aspx@    'classSubMenu12'><i class=@fa  fa-hourglass-start@ ></i>آیکون سایت</a></li>"
        amount_str = amount_str & "<li><a href=@../Upload_Logo.aspx@    'classSubMenu13'><i class=@fa  fa-hourglass-start@ ></i>مدیریت لوگو</a></li>"
        amount_str = amount_str & "<li><a href=@../Upload_Logo_Footer.aspx@    'classSubMenu14'><i class=@fa  fa-hourglass-start@ ></i>مدیریت لوگو فوتر</a></li>"
        amount_str = amount_str & "<li><a href=@../TopMenu_Frm.aspx@    'classSubMenu15'><i class=@fa  fa-hourglass-start@ ></i>مدیریت منو</a></li>"
        amount_str = amount_str & "<li><a href=@../subMenu_Frm.aspx@    'classSubMenu16'><i class=@fa  fa-hourglass-start@ ></i>مدیریت زیر منو</a></li>"
        amount_str = amount_str & "<li><a href=@../SubMenuUnder_Frm.aspx@    'classSubMenu17'><i class=@fa  fa-hourglass-start@ ></i>مدیریت منو فرعی</a></li>"
        amount_str = amount_str & "<li><a href=@../Menu_frm.aspx@    'classSubMenu18'><i class=@fa  fa-hourglass-start@ ></i>مدیریت محتوا</a></li>"
        amount_str = amount_str & "<li><a href=@../FormGenerator/HTMLPage1.htm@   target='_blank' 'classSubMenu19'><i class=@fa  fa-hourglass-start@ ></i>مدیریت فرم</a></li>"
        amount_str = amount_str & "<li><a href=@../Upload_SocialNetworks.aspx@    'classSubMenu110'><i class=@fa  fa-hourglass-start@ ></i>مدیریت شبکه های اجتماعی</a></li>"
        amount_str = amount_str & "<li><a href=@../StatusMarquee_frm.aspx@    'classSubMenu111'><i class=@fa  fa-hourglass-start@ ></i>وضعیت متن رونده</a></li>"
        amount_str = amount_str & "<li><a href=@../copyRight_frm1.aspx@    'classSubMenu112'><i class=@fa  fa-hourglass-start@ ></i>مدیریت کپی رایت</a></li>"
        amount_str = amount_str & "<li><a href=@../StatusAmar_frm.aspx@    'classSubMenu113'><i class=@fa  fa-hourglass-start@ ></i>وضعیت نمایش آمار</a></li>"
        amount_str = amount_str & "<li><a href=@../ForgetPassword_Text_frm1.aspx@    'classSubMenu114'><i class=@fa  fa-hourglass-start@ ></i>متن فراموشی کلمه عبوری</a></li>"
        amount_str = amount_str & "<li><a href=@../PanelPerson_LogIn_frm1.aspx@    'classSubMenu115'><i class=@fa  fa-hourglass-start@ ></i>متن  ورود به پنل همکار</a></li>"
        amount_str = amount_str & "<li><a href=@../Upload_Watermark.aspx@    'classSubMenu116'><i class=@fa  fa-hourglass-start@ ></i>واترمارک</a></li>"
        amount_str = amount_str & "<li><a href=@../PM_frm1.aspx@    'classSubMenu117'><i class=@fa  fa-hourglass-start@ ></i>واحد های سازمانی</a></li>"
        amount_str = amount_str & "</ul>"
        amount_str = amount_str & "</li>"


        amount_str = amount_str & "<li>"
        If number_SelectMenu = 2 Then
            amount_str = amount_str & "<a href=@#@ class=@active@    id=@myAccount2@ ><i class=@fa   fa-home@ ></i>صفحه اصلی<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        Else
            amount_str = amount_str & "<a href=@#@  id=@myAccount2@ ><i class=@fa   fa-home@ ></i>صفحه اصلی<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        End If

        amount_str = amount_str & "<ul id=@myAccountBox2@> "
        amount_str = amount_str & "<li><a href=@../TopBanner_frm.aspx@   'classSubMenu21'><i class=@fa  fa-home@ ></i>اسلاید بنر </a></li>"
        amount_str = amount_str & "<li><a href=@../hadis_frm.aspx@   'classSubMenu22'><i class=@fa  fa-home@ ></i>متن رونده صفحه اصلی </a></li>"
        amount_str = amount_str & "<li><a href=@../Upload_KhadamatIcon.aspx@   'classSubMenu23'><i class=@fa  fa-home@ ></i>آیکون های خدمات صفحه اصلی </a></li>"
        amount_str = amount_str & "<li><a href=@../FirstPage_frm.aspx@   'classSubMenu24'><i class=@fa  fa-home@ ></i>درباره شرکت </a></li>"
        amount_str = amount_str & "<li><a href=@../FirstPage_PicAbout_frm1.aspx@   'classSubMenu25'><i class=@fa  fa-home@ ></i>گالری صفحه اول</a></li>"
        amount_str = amount_str & "<li><a href=@../Address_frm.aspx@   'classSubMenu26'><i class=@fa  fa-home@ ></i>آدرس</a></li>"


        amount_str = amount_str & "</ul>"
        amount_str = amount_str & "</li>"


        amount_str = amount_str & "<li>"
        If number_SelectMenu = 3 Then
            amount_str = amount_str & "<a href=@#@ class=@active@  id=@myAccount3@ ><i class=@fa  fa-cog@ ></i>مدیریت سایت<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        Else
            amount_str = amount_str & "<a href=@#@  id=@myAccount3@ ><i class=@fa  fa-cog@ ></i>مدیریت سایت<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        End If

        amount_str = amount_str & "<ul id=@myAccountBox3@> "
        amount_str = amount_str & "<li><a href=@../admin_frm1.aspx@   'classSubMenu31'><i class=@fa fa-cog@ ></i>پرسنل مدیریتی</a></li>"
        amount_str = amount_str & "<li><a href=@../Grant_frm.aspx@   'classSubMenu32'><i class=@fa fa-cog@ ></i>اهدای نقش</a></li>"
        amount_str = amount_str & "<li><a href=@../Upload_File.aspx@   'classSubMenu33'><i class=@fa fa-cog@ ></i>فایل</a></li>"
        amount_str = amount_str & "<li><a href=@../draweditor/OnlinePlan_SelectSize.aspx@  target='_blank'  'classSubMenu34'><i class=@fa fa-cog@ ></i>ابزار ویرایش تصویر</a></li>"
        amount_str = amount_str & "<li><a href=@../Report_Amar.aspx@   'classSubMenu35'><i class=@fa fa-cog@ ></i>آمار بازدید سایت</a></li>"
        amount_str = amount_str & "<li><a href=@../Ostan_Frm1.aspx@   'classSubMenu36'><i class=@fa fa-cog@ ></i>استان</a></li>"
        amount_str = amount_str & "</ul>"
        amount_str = amount_str & "</li>"


        amount_str = amount_str & "<li>"
        If number_SelectMenu = 4 Then
            amount_str = amount_str & "<a href=@#@ class=@active@    id=@myAccount4@ ><i class=@fa  fa-commenting-o@ ></i>درباره ما<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        Else
            amount_str = amount_str & "<a href=@#@  id=@myAccount4@ ><i class=@fa  fa-commenting-o@ ></i>درباره ما<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        End If

        amount_str = amount_str & "<ul id=@myAccountBox4@> "
        amount_str = amount_str & "<li><a href=@../History_frm.aspx@   'classSubMenu41'><i class=@fa fa-commenting-o@ ></i>تاریخچه</a></li>"
        amount_str = amount_str & "<li><a href=@../Policy_frm.aspx@   'classSubMenu42'><i class=@fa fa-commenting-o@ ></i>خط مشی</a></li>"
        amount_str = amount_str & "<li><a href=@../Baianieh_frm.aspx@   'classSubMenu43'><i class=@fa fa-commenting-o@ ></i>بیانیه</a></li>"
        amount_str = amount_str & "<li><a href=@../View_frm.aspx@   'classSubMenu44'><i class=@fa fa-commenting-o@ ></i>چشم انداز</a></li>"
        amount_str = amount_str & "<li><a href=@../PayamModir_frm.aspx@   'classSubMenu45'><i class=@fa fa-commenting-o@ ></i>پیام مدیر عامل</a></li>"
        amount_str = amount_str & "<li><a href=@../Arzesh_frm.aspx@   'classSubMenu46'><i class=@fa fa-commenting-o@ ></i>ارزش ها</a></li>"
        amount_str = amount_str & "<li><a href=@../Certificate_frm.aspx@   'classSubMenu47'><i class=@fa fa-commenting-o@ ></i>گواهینامه ها</a></li>"
        amount_str = amount_str & "<li><a href=@../Taghdirnameh_frm.aspx@   'classSubMenu48'><i class=@fa fa-commenting-o@ ></i>تقدیرنامه ها</a></li>"
        amount_str = amount_str & "<li><a href=@../AboutUs_frm.aspx@   'classSubMenu49'><i class=@fa fa-commenting-o@ ></i>خدمات شرکت</a></li>"
        amount_str = amount_str & "<li><a href=@../GroupPerson_frm.aspx@   'classSubMenu410'><i class=@fa fa-commenting-o@ ></i>گروه مدیران</a></li>"
        amount_str = amount_str & "<li><a href=@../Person_frm.aspx@   'classSubMenu411'><i class=@fa fa-commenting-o@ ></i>مدیران</a></li>"
        amount_str = amount_str & "<li><a href=@Hierarchical/ChartPersonPm1.aspx@   'classSubMenu412'><i class=@fa fa-commenting-o@ ></i>چارت سازمانی</a></li>"

        amount_str = amount_str & "</ul>"
        amount_str = amount_str & "</li>"


        amount_str = amount_str & "<li>"
        If number_SelectMenu = 5 Then
            amount_str = amount_str & "<a href=@#@ class=@active@  id=@myAccount5@ ><i class=@fa  fa-newspaper-o@ ></i>اطلاع رسانی<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        Else
            amount_str = amount_str & "<a href=@#@  id=@myAccount5@ ><i class=@fa  fa-newspaper-o@ ></i>اطلاع رسانی<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        End If


        amount_str = amount_str & "<ul id=@myAccountBox5@> "
        amount_str = amount_str & "<li><a href=@../news_frm.aspx@   'classSubMenu51'><i class=@fa fa-newspaper-o@ ></i>اخبار و رویدادها</a></li>"
        amount_str = amount_str & "<li><a href=@../Link_frm.aspx@   'classSubMenu52'><i class=@fa fa-newspaper-o@ ></i>لینک ها</a></li>"
        amount_str = amount_str & "<li><a href=@../File_Attach_frm.aspx@   'classSubMenu53'><i class=@fa fa-newspaper-o@ ></i>فیلم و ویدئو</a></li>"
        amount_str = amount_str & "<li><a href=@../Information_frm.aspx@   'classSubMenu54'><i class=@fa fa-newspaper-o@ ></i>اطلاعیه ها</a></li>"
        amount_str = amount_str & "<li><a href=@../GroupServices_frm.aspx@   'classSubMenu55'><i class=@fa fa-newspaper-o@ ></i>گروه خدمات</a></li>"
        amount_str = amount_str & "<li><a href=@../Services_frm.aspx@   'classSubMenu56'><i class=@fa fa-newspaper-o@ ></i>خدمات</a></li>"
        amount_str = amount_str & "<li><a href=@../LawGroup_frm.aspx@   'classSubMenu57'><i class=@fa fa-newspaper-o@ ></i>گروه مقررات</a></li>"
        amount_str = amount_str & "<li><a href=@../Law_frm.aspx@   'classSubMenu58'><i class=@fa fa-newspaper-o@ ></i>قواعد و مقررات</a></li>"
        amount_str = amount_str & "<li><a href=@../Essay_frm.aspx@   'classSubMenu59'><i class=@fa fa-newspaper-o@ ></i>مقاله ها</a></li>"
        amount_str = amount_str & "<li><a href=@../GalleyGroup_Frm.aspx@   'classSubMenu510'><i class=@fa fa-newspaper-o@ ></i>گروه تصاویر</a></li>"
        amount_str = amount_str & "<li><a href=@../Gallery_frm.aspx@   'classSubMenu511'><i class=@fa fa-newspaper-o@ ></i>گالری</a></li>"


        amount_str = amount_str & "</ul>"
        amount_str = amount_str & "</li>"


        amount_str = amount_str & "<li>"
        If number_SelectMenu = 6 Then
            amount_str = amount_str & "<a href=@#@ class=@active@  id=@myAccount6@ ><i class=@fa   fa-users@ ></i>مدیریت همکار<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        Else
            amount_str = amount_str & "<a href=@#@  id=@myAccount6@ ><i class=@fa   fa-users@ ></i>مدیریت همکار<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        End If


        amount_str = amount_str & "<ul id=@myAccountBox6@> "
        amount_str = amount_str & "<li><a href=@../PersonOrgan_frm.aspx@   'classSubMenu61'><i class=@fa  fa-users@ ></i>اعضاء شرکت</a></li>"
        amount_str = amount_str & "<li><a href=@../TypeGavahi_frm.aspx@   'classSubMenu62'><i class=@fa  fa-users@ ></i>نوع گواهی اشتغال</a></li>"
        amount_str = amount_str & "<li><a href=@../GroupFQ_frm.aspx@   'classSubMenu63'><i class=@fa  fa-users@ ></i>گروه سوالات</a></li>"
        amount_str = amount_str & "<li><a href=@../FQ_frm.aspx@   'classSubMenu64'><i class=@fa  fa-users@ ></i>سوالات</a></li>"
        amount_str = amount_str & "<li><a href=@../EducationGroup_frm.aspx@   'classSubMenu65'><i class=@fa  fa-users@ ></i>گروه آموزش</a></li>"
        amount_str = amount_str & "<li><a href=@../Education_frm.aspx@   'classSubMenu66'><i class=@fa  fa-users@ ></i>آموزش</a></li>"
        amount_str = amount_str & "<li><a href=@../Rahnama_BimeTakmili_frm.aspx@   'classSubMenu67'><i class=@fa  fa-users@ ></i>راهنمای بیمه تکمیلی</a></li>"
        amount_str = amount_str & "<li><a href=@../Upload_FileBimeh.aspx@   'classSubMenu68'><i class=@fa  fa-users@ ></i>فایل های بیمه</a></li>"
        amount_str = amount_str & "<li><a href=@../Upload_FilePanelHamkar.aspx@   'classSubMenu69'><i class=@fa  fa-users@ ></i>دریافت فایل</a></li>"
        amount_str = amount_str & "<li><a href=@../session_frm1.aspx@   'classSubMenu610'><i class=@fa  fa-users@ ></i>مدیریت جلسات</a></li>"
        amount_str = amount_str & "<li><a href=@../NazarSanji_frm.aspx@   'classSubMenu611'><i class=@fa  fa-users@ ></i>نظرسنجی</a></li>"

        amount_str = amount_str & "</ul>"
        amount_str = amount_str & "</li>"



        amount_str = amount_str & "<li>"
        If number_SelectMenu = 7 Then
            amount_str = amount_str & "<a href=@#@ class=@active@  id=@myAccount7@ ><i class=@fa  fa-phone@ ></i>ارتباط با ما<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        Else
            amount_str = amount_str & "<a href=@#@  id=@myAccount7@ ><i class=@fa  fa-phone@ ></i>ارتباط با ما<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        End If


        amount_str = amount_str & "<ul id=@myAccountBox7@> "
        amount_str = amount_str & "<li><a href=@../ContactUs_frm.aspx@   'classSubMenu71'><i class=@fa fa-phone@ ></i>تماس با ما</a></li>"
        amount_str = amount_str & "<li><a href=@../rep_FormContact.aspx@   'classSubMenu72'><i class=@fa fa-phone@ ></i>تماس با مدیریت</a></li>"
        amount_str = amount_str & "<li><a href=@../ResponseComments_Rep.aspx@   'classSubMenu73'><i class=@fa fa-phone@ ></i>گزارش تماس با مدیریت</a></li>"
        amount_str = amount_str & "<li><a href=@../NazarSAnji_rep.aspx@   'classSubMenu74'><i class=@fa fa-phone@ ></i>گزارش نظرسنجی</a></li>"
        amount_str = amount_str & "<li><a href=@../form_Report.aspx@   'classSubMenu75'><i class=@fa fa-phone@ ></i>گزارش فرم</a></li>"
        'amount_str = amount_str & "<li><a href=@Rep_EssayComment.aspx@   'classSubMenu76'><i class=@fa fa-phone@ ></i>گزارش نظرات مقاله ها</a></li>"
        amount_str = amount_str & "<li><a href=@../PhoneBook_frm1.aspx@   'classSubMenu77'><i class=@fa fa-phone@ ></i>راهنمای تماس</a></li>"


        amount_str = amount_str & "</ul>"
        amount_str = amount_str & "</li>"


        amount_str = amount_str & "<li>"
        If number_SelectMenu = 8 Then
            amount_str = amount_str & "<a href=@#@ class=@active@  id=@myAccount8@ ><i class=@fa  fa-wrench@ ></i>تعمیر و نگهداری<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        Else
            amount_str = amount_str & "<a href=@#@  id=@myAccount8@ ><i class=@fa  fa-wrench@ ></i>تعمیر و نگهداری<i class=@fa fa-caret-down@  style=@font-size :12pt@></i></a>"
        End If


        amount_str = amount_str & "<ul id=@myAccountBox8@> "
        amount_str = amount_str & "<li><a href=@../GroupServicePM_frm1.aspx@   'classSubMenu81'><i class=@fa fa-wrench@ ></i>گروه سرویس</a></li>"
        amount_str = amount_str & "<li><a href=@../Group_frm1.aspx@   'classSubMenu82'><i class=@fa fa-wrench@ ></i>گروه تجهیزات</a></li>"
        amount_str = amount_str & "<li><a href=@../Goods_frm1.aspx@   'classSubMenu83'><i class=@fa fa-wrench@ ></i>تجهیزات</a></li>"



        amount_str = amount_str & "</ul>"
        amount_str = amount_str & "</li>"

        create_Menu = Replace(Replace(amount_str, "@", """"), "'classSubMenu" & number_SelectSubMenu & "'", "class='activeSub'")
    End Function
End Module
