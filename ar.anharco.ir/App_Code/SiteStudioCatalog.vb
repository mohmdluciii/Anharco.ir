Option Explicit On
Option Strict Off

Imports System.Collections.Generic

Public Class StudioField
    Public Key As String
    Public GroupId As String
    Public GroupTitle As String
    Public Title As String
    Public Hint As String
    Public Kind As String
    Public Fallback As String
    Public PageFile As String
    Public SharedAcrossLang As Boolean
    Public SessionKey As String
    Public SectionTitle As String
End Class

Public Class StudioCropFrame
    Public Fit As String
    Public W As Integer
    Public H As Integer
    Public Shape As String
    Public Kind As String
    Public Label As String
End Class

Public Module SiteStudioCatalog
    Private ready As Boolean = False
    Private itemList As List(Of StudioField)
    Private groupList As List(Of String())
    Private ReadOnly locker As New Object()

    Public Sub Ensure()
        If ready AndAlso itemList IsNot Nothing Then
            Return
        End If
        SyncLock locker
            If ready AndAlso itemList IsNot Nothing Then
                Return
            End If
            itemList = New List(Of StudioField)()
        groupList = New List(Of String())()
        groupList.Add(New String() {"home", "صفحه اصلی"})
        groupList.Add(New String() {"about", "درباره ما"})
        groupList.Add(New String() {"projects", "پروژه ها"})
        groupList.Add(New String() {"services", "خدمات"})
        groupList.Add(New String() {"contact", "تماس با ما"})
        groupList.Add(New String() {"news", "اخبار"})
        groupList.Add(New String() {"gallery", "گالری"})
        groupList.Add(New String() {"footer", "فوتر و شبکه های اجتماعی"})
        groupList.Add(New String() {"chrome", "هویت و لوگوی سایت"})

        Dim i As Integer
        For i = 1 To 4
            Img("slider" & i & "_image", "home", "اسلایدر خانه - عکس " & i, "images/Bananer-Anhar-co-no-" & i & ".jpg", "Index.aspx", "url_slidBanner" & i)
            Txt("slider" & i & "_name", "home", "اسلایدر خانه - تیتر " & i, "", "Index.aspx", "name_TopBanner" & i)
            Txt("slider" & i & "_text", "home", "اسلایدر خانه - توضیح " & i, "", "Index.aspx", "text_TopBanner" & i)
            Txt("slider" & i & "_button", "home", "اسلایدر خانه - متن دکمه " & i, "", "Index.aspx", "small_TopBanner" & i)
            Lnk("slider" & i & "_link", "home", "اسلایدر خانه - لینک دکمه " & i, "", "Index.aspx", "link_TopBanner" & i)
        Next
        For i = 1 To 8
            Img("gallery" & i & "_image", "home", "کلاژ خانه - عکس " & i, "FirstPage_PicAbout/MainPagePic" & i & ".jpg", "Index.aspx", "url_PicAbout" & i)
            Txt("gallery" & i & "_title", "home", "کلاژ خانه - عنوان " & i, "", "Index.aspx", "title" & i & "_FirstPage_PicAbout")
            Lnk("gallery" & i & "_link", "home", "کلاژ خانه - لینک " & i, "", "Index.aspx", "Link" & i & "_FirstPage_PicAbout")
        Next
        Img("home_pic9", "home", "عکس کناری بخش پروژه ها", "images/MainPagePic9.jpg", "Index.aspx", "")
        Lnk("projects_more_link", "home", "لینک دکمه پروژه های بیشتر", "pipelines.aspx", "Index.aspx", "initProject_Button")

        Hero("hero_MessageCEO", "about", "پیام رئیس هیات مدیره - عکس هدر", "images/MessageCEO.jpg", "MessageCEO.aspx")
        Img("pic_MessageCEO1", "about", "پیام مدیر - عکس 1", "images/MessageCEO1.jpg", "MessageCEO.aspx", "")
        Img("pic_MessageCEO2", "about", "پیام مدیر - عکس 2", "images/MessageCEO2.jpg", "MessageCEO.aspx", "")
        Img("pic_MessageCEO3", "about", "پیام مدیر - عکس 3", "images/MessageCEO3.jpg", "MessageCEO.aspx", "")
        Img("pic_MessageCEO4", "about", "پیام مدیر - عکس 4", "images/MessageCEO4.jpg", "MessageCEO.aspx", "")
        Img("pic_MessageCEO5", "about", "پیام مدیر - عکس 5", "images/MessageCEO5.jpg", "MessageCEO.aspx", "")
        Hero("hero_History", "about", "تاریخچه - عکس هدر", "images/HistoryAnhar.jpg", "History.aspx")
        Img("pic_History1", "about", "تاریخچه - عکس 1", "images/HistoryAnhar1.jpg", "History.aspx", "")
        Img("pic_History2", "about", "تاریخچه - عکس 2", "images/HistoryAnhar2.jpg", "History.aspx", "")
        Hero("hero_Pillars", "about", "ارکان جهت ساز - عکس هدر", "images/PillarsAnhar.jpg", "Pillars.aspx")
        Hero("hero_OrganizationPolicy", "about", "خط مشی - عکس هدر", "images/OrganizationPolicyAnhar.jpg", "OrganizationPolicy.aspx")
        Hero("hero_Certificates", "about", "گواهینامه ها - عکس هدر", "images/CertificatesAnhar.jpg", "Certificates.aspx")
        For i = 1 To 9
            Img("cert" & i & "_image", "about", "گواهینامه " & i & " - عکس", "images/CertificatesAnhar" & i & ".jpg", "Certificates.aspx", "")
            Txt("cert" & i & "_title", "about", "گواهینامه " & i & " - عنوان", "", "Certificates.aspx", "")
            Txt("cert" & i & "_text", "about", "گواهینامه " & i & " - خلاصه", "", "Certificates.aspx", "")
        Next
        Hero("hero_leadership", "about", "هیات مدیره - عکس هدر", "images/leadershipAnhar.jpg", "leadership.aspx")
        Img("pic_leadership1", "about", "هیات مدیره - عکس 1", "images/leadership1.jpg", "leadership.aspx", "")
        Img("pic_leadership2", "about", "هیات مدیره - عکس 2", "images/leadership2.jpg", "leadership.aspx", "")
        Img("pic_leadership3", "about", "هیات مدیره - عکس 3", "images/leadership3.jpg", "leadership.aspx", "")
        Img("pic_leadership4", "about", "هیات مدیره - عکس 4", "images/leadership4.jpg", "leadership.aspx", "")
        Img("pic_leadership5", "about", "هیات مدیره - عکس 5", "images/leadership5.jpg", "leadership.aspx", "")
        Img("pic_leadership6", "about", "هیات مدیره - عکس 6", "images/leadership6.jpg", "leadership.aspx", "")
        Hero("hero_Acknowledgments", "about", "تقدیرنامه ها - عکس هدر", "images/AcknowledgmentsAnhar.jpg", "Acknowledgments.aspx")
        For i = 1 To 12
            Dim ackImg As String = "images/AcknowledgmentsAnhar" & i & ".jpg"
            If i = 6 Then
                ackImg = "images/AcknowledgmentsAnhar6.png"
            End If
            Img("ack" & i & "_image", "about", "تقدیرنامه " & i & " - عکس", ackImg, "Acknowledgments.aspx", "")
            Txt("ack" & i & "_title", "about", "تقدیرنامه " & i & " - عنوان", "", "Acknowledgments.aspx", "")
            Txt("ack" & i & "_text", "about", "تقدیرنامه " & i & " - خلاصه", "", "Acknowledgments.aspx", "")
        Next
        Hero("hero_InternationalArena", "about", "عرصه بین الملل - عکس هدر", "images/InternationalArenaAnhar.jpg", "InternationalArena.aspx")
        Img("pic_International1", "about", "عرصه بین الملل - عکس 1", "images/InternationalArenaAnhar1.jpg", "InternationalArena.aspx", "")
        Img("pic_International2", "about", "عرصه بین الملل - عکس 2", "images/InternationalArenaAnhar2.jpg", "InternationalArena.aspx", "")
        Img("pic_ApexLogo", "about", "لوگوی Apex", "images/ApexLogo.png", "InternationalArena.aspx", "")
        Hero("hero_Employers", "about", "کارفرمایان - عکس هدر", "images/EmployersAnhar.jpg", "Employers.aspx")
        Img("pic_nioc", "about", "لوگوی کارفرما NIOC", "images/nioc-logo.jpg", "Employers.aspx", "")
        Img("pic_logogz", "about", "لوگوی کارفرما گاز", "images/logogz.png", "Employers.aspx", "")

        Hero("hero_GasBoosterStation", "projects", "تقویت فشار گاز - عکس هدر", "images/GasboosterstationAnhar.jpg", "GasBoosterStation.aspx")
        For i = 1 To 7
            Img("proj_gas" & i & "_image", "projects", "تقویت فشار - پروژه " & i & " - عکس", "Pic_Project/Project_Tghviat_feshar_gaz_homa.jpg", "GasBoosterStation.aspx", "")
            Txt("proj_gas" & i & "_title", "projects", "تقویت فشار - پروژه " & i & " - عنوان", "", "GasBoosterStation.aspx", "")
            Txt("proj_gas" & i & "_employer", "projects", "تقویت فشار - پروژه " & i & " - کارفرما", "", "GasBoosterStation.aspx", "")
        Next
        Hero("hero_pipelines", "projects", "خطوط لوله - عکس هدر", "images/pipelinesAnhar.jpg", "pipelines.aspx")
        For i = 1 To 8
            Img("proj_pipe" & i & "_image", "projects", "خطوط لوله - پروژه " & i & " - عکس", "images/pipelinesAnhar.jpg", "pipelines.aspx", "")
            Txt("proj_pipe" & i & "_title", "projects", "خطوط لوله - پروژه " & i & " - عنوان", "", "pipelines.aspx", "")
            Txt("proj_pipe" & i & "_employer", "projects", "خطوط لوله - پروژه " & i & " - کارفرما", "", "pipelines.aspx", "")
        Next
        Hero("hero_building", "projects", "ابنیه و ساختمان - عکس هدر", "images/buildingAnhar.jpg", "building.aspx")
        For i = 1 To 7
            Img("proj_build" & i & "_image", "projects", "ابنیه - پروژه " & i & " - عکس", "images/buildingAnhar.jpg", "building.aspx", "")
            Txt("proj_build" & i & "_title", "projects", "ابنیه - پروژه " & i & " - عنوان", "", "building.aspx", "")
            Txt("proj_build" & i & "_employer", "projects", "ابنیه - پروژه " & i & " - کارفرما", "", "building.aspx", "")
        Next
        Hero("hero_FacilitiesEquipment", "projects", "تاسیسات و تجهیزات - عکس هدر", "images/FacilitiesEquipmentAnhar.jpg", "FacilitiesEquipment.aspx")
        For i = 1 To 4
            Img("proj_fac" & i & "_image", "projects", "تاسیسات - پروژه " & i & " - عکس", "images/FacilitiesEquipmentAnhar.jpg", "FacilitiesEquipment.aspx", "")
            Txt("proj_fac" & i & "_title", "projects", "تاسیسات - پروژه " & i & " - عنوان", "", "FacilitiesEquipment.aspx", "")
            Txt("proj_fac" & i & "_employer", "projects", "تاسیسات - پروژه " & i & " - کارفرما", "", "FacilitiesEquipment.aspx", "")
        Next
        Hero("hero_WateTransmissionPipelines", "projects", "خطوط لوله آب - عکس هدر", "images/WaterTransmissionPipelines.jpg", "WateTransmissionPipelines.aspx")
        For i = 1 To 3
            Img("proj_water" & i & "_image", "projects", "خطوط آب - پروژه " & i & " - عکس", "images/WaterTransmissionPipelines.jpg", "WateTransmissionPipelines.aspx", "")
            Txt("proj_water" & i & "_title", "projects", "خطوط آب - پروژه " & i & " - عنوان", "", "WateTransmissionPipelines.aspx", "")
            Txt("proj_water" & i & "_employer", "projects", "خطوط آب - پروژه " & i & " - کارفرما", "", "WateTransmissionPipelines.aspx", "")
        Next

        Hero("hero_DesignServices", "services", "خدمات طراحی - عکس هدر", "images/Services-Design-Anhar.jpg", "DesignServices.aspx")
        Img("pic_DesignInner", "services", "خدمات طراحی - عکس داخلی", "images/DesignServices_Inner.jpg", "DesignServices.aspx", "")
        Hero("hero_BuyServices", "services", "خدمات خرید - عکس هدر", "images/Services-Buy-Anhar.jpg", "BuyServices.aspx")
        Img("pic_BuyInner", "services", "خدمات خرید - عکس داخلی", "images/BuyServices_Inner.jpg", "BuyServices.aspx", "")
        Hero("hero_OperationsServices", "services", "خدمات اجرا - عکس هدر", "images/Services-operations-Anhar.jpg", "OperationsServices.aspx")
        Img("pic_OperationsInner", "services", "خدمات اجرا - عکس داخلی", "images/OprationServices_Inner.jpg", "OperationsServices.aspx", "")

        Hero("hero_ContactUs", "contact", "تماس با ما - عکس هدر", "images/ContactUsAnhar.jpg", "ContactUs.aspx")
        Hero("hero_Links", "contact", "لینک ها - عکس هدر", "images/LinksAnhar.jpg", "Links.aspx")
        Hero("hero_FielsDownload", "contact", "دانلود فایل - عکس هدر", "images/FilesDownloadAnhar.jpg", "FielsDownload.aspx")
        Hero("hero_Privacy", "contact", "حریم خصوصی - عکس هدر", "images/PrivacyAnhar.jpg", "Privacy.aspx")
        Hero("hero_Law", "contact", "قوانین - عکس هدر", "images/LawAnhar.jpg", "Law.aspx")
        Hero("hero_FQ", "contact", "سوالات متداول - عکس هدر", "images/FandQAnhar.jpg", "FQ.aspx")
        Hero("hero_Indexer_Search", "contact", "جستجو - عکس هدر", "images/SearchAnhar.jpg", "Indexer_Search.aspx")

        Hero("hero_News", "news", "اخبار - عکس هدر", "images/NewsAnhar.jpg", "News.aspx")
        Dim n As Integer
        For n = 1 To 6
            Img("news" & n & "_image", "news", "خبر " & n & " - عکس", "images/NewsAnhar.jpg", "News.aspx", "")
            Txt("news" & n & "_title", "news", "خبر " & n & " - عنوان", "", "News.aspx", "")
            Txt("news" & n & "_date", "news", "خبر " & n & " - تاریخ", "", "News.aspx", "")
            Txt("news" & n & "_text", "news", "خبر " & n & " - خلاصه", "", "News.aspx", "")
            Lnk("news" & n & "_link", "news", "خبر " & n & " - لینک", "NewsShow.aspx?n=" & n, "News.aspx", "")
        Next
        Hero("hero_Gallery", "gallery", "گالری - عکس هدر", "images/GalleryMain.jpg", "Gallery.aspx")

        Txt("copy_MessageCEO_h1", "about", "پیام مدیر - عنوان", "پیام رئیس هیات مدیره", "MessageCEO.aspx", "")
        Txt("copy_MessageCEO_p1", "about", "پیام مدیر - پاراگراف ۱", "از حضور و آغاز فعالیتمان نزدیک به پنجاه سال می گذرد، همواره معتقد بوده ایم ایجاد و کسب اعتبار با پایبندی به تعهدات خود با دیگران به دست می آید. موسسان انهار با رویکرد ارتقای سطح سواد و فرهنگ در جامعه موفق به ساخت بیش از یکصد واحد آموزشی و فرهنگی در شهرهای گلپایگان، خوانسار، خمین و روستاهای اطرافشان شدند و خوشحالیم که پس از گذشت سال ها و حضور موفق در دیگر عرصه ها همچنان احداث مجموعه های آموزشی و فرهنگی در مناطق محروم از برنامه های متداول شرکت می باشد.", "MessageCEO.aspx", "")
        Txt("copy_MessageCEO_p2", "about", "پیام مدیر - پاراگراف ۲", "ما با گذار از فراز و نشیب های بسیار و تحولات دوران انقلاب، با انتقال دفتر مرکزی به تهران و دریافت گواهی تائید صلاحیت از سازمان برنامه و بودجه کشور، شرایط ورود به پروژه های شرکت ملی گاز، را آغاز و طی سالهای متمادی گستره این فعالیت با مجموعه های گوناگون وزارت نفت همچون شرکت ملی صنایع پتروشیمی ایران، شرکت ملی مهندسی و ساختمان نفت ایران، شرکت خطوط لوله و مخابرات نفت ایران گسترش یافته است.", "MessageCEO.aspx", "")
        Txt("copy_MessageCEO_p3", "about", "پیام مدیر - پاراگراف ۳", "موفقیت های حاصله را نتیجه تلاش شبانه روزی کلیه همکاران عزیزمان در خانواده بزرگ انهار از کارمندان سازمانی، مهندسین و متخصصین دلسوز می دانم که در تمامی شرایط سخت و دشوار ناشی از تحریم های بین المللی، بروز پاندومی کرونا، افزایش شدید قیمت ها و موارد دیگر با بردباری و ایثار، در به ثمر رساندن پروژه های در تعهد شرکت از هیچ کوششی فروگذاری نکردند و امیدوارم همکاران شاغل جوان و پرشور با مدیریت جدید افتخاری بزرگ برای خود و کشور عزیزمان ایران در تاریخچه بخش خصوصی کشور به ثبت برسانند.", "MessageCEO.aspx", "")
        Txt("copy_MessageCEO_p4", "about", "پیام مدیر - پاراگراف ۴", "شرکت انهار افتخار دارد در راستای تلاش همگی عزیزان شاغل خود، به وظیفه حمایت از آنان به اشکال مختلف اقدام نماید. افزایش دانش و توانمندی تخصصی از طریق استفاده از مراکز آموزشی، همکاری در ارائه تسهیلات بلاعوض و بدون بهره در جهت بالا بردن آسایش و رفاه کارکنان در این راستا تعریف می گردد.", "MessageCEO.aspx", "")
        Txt("copy_MessageCEO_p5", "about", "پیام مدیر - پاراگراف ۵", "شرکت انهار به عنوان یکی از شرکت های طرفدار محیط زیست و هم چنین در حوزه انجام وظیفه مرتبط با مسئولیت های اجتماعی دارای کارنامه قابل قبولی می باشد. سرزمینمان ایران امروزه بشدت نیازمند خدمتگزاران واقعی می باشد که بدون هیچ چشم داشت در قبال حفظ محیط زیست آن و تعهد در انجام مسئولیت های اجتماعی پایبند می باشد.", "MessageCEO.aspx", "")
        Txt("copy_MessageCEO_p6", "about", "پیام مدیر - پاراگراف ۶", "در خاتمه جا دارد یاد و خاطره 3 نفر از موسسان شرکت را که امروزه در جمع ما نیستند:", "MessageCEO.aspx", "")
        Txt("copy_MessageCEO_p7", "about", "پیام مدیر - نام موسس ۱", "جناب آقای محمدباقر عظیمی", "MessageCEO.aspx", "")
        Txt("copy_MessageCEO_p8", "about", "پیام مدیر - نام موسس ۲", "جناب آقای جواد معظمی", "MessageCEO.aspx", "")
        Txt("copy_MessageCEO_p9", "about", "پیام مدیر - نام موسس ۳", "جناب آقای محمدعلی خرمی", "MessageCEO.aspx", "")
        Txt("copy_MessageCEO_p10", "about", "پیام مدیر - پاراگراف پایانی", "گرامی داریم و با افتخار تمام، راه و پیمان آنان در جهت خدمت رسانی و آبادانی را به قدر توان ادامه دهیم و این تفکر برجسته را به فرهنگی عام در سازمان و خانواده بزرگ انهار نهادینه گردانیم.", "MessageCEO.aspx", "")
        Txt("copy_History_h1", "about", "تاریخچه - عنوان", "تاریخچه شرکت انهار", "History.aspx", "")
        Txt("copy_History_p1", "about", "تاریخچه - پاراگراف ۱", "شرکت ساختمانی انهار در سال 1353 با استعانت از خداوند منان در شهرستان گلپایگان توسط چهار نفر از معتمدان این شهر تأسیس گردید که از همان ابتدای تأسیس با حضور در عرصه ساخت مراکز آموزشی، گام های مؤثری در راستای تحقق مسئولیت اجتماعی برداشته است.", "History.aspx", "")
        Txt("copy_History_p2", "about", "تاریخچه - پاراگراف ۲", "در حال حاضر این شرکت پس از نیم قرن تلاش خستگی ناپذیر در راه آبادانی و پیشرفت کشور عزیزمان ایران، به افتخاری عظیم برای خانواده بزرگ شرکت انهار تبدیل گردیده است و امید است به پشتوانه تلاش این خانواده بزرگ از شرکتی به صورت سهامی خاص به شرکتی با سهامداران متعدد و به صورت سهامی عام تبدیل گردد.", "History.aspx", "")
        Txt("copy_History_p3", "about", "تاریخچه - پاراگراف ۳", "چشم انداز این شرکت تبدیل شدن به یک شرکت پیشرو در پروژه های EPC در صنعت نفت، گاز و پتروشیمی را نمایان می سازد و در این راستا طیف گسترده ای از خدمات زیر را ارائه می دهد.", "History.aspx", "")
        Txt("copy_History_p4", "about", "تاریخچه - خدمت ۱", "مدیریت و اجرای پروژه های ساخت", "History.aspx", "")
        Txt("copy_History_p5", "about", "تاریخچه - خدمت ۲", "مشارکت در اجرا، نصب و راه اندازی پروژه های EPC", "History.aspx", "")
        Txt("copy_History_p6", "about", "تاریخچه - خدمت ۳", "مدیریت مهندسی و تأمین و تدارک پروژه ها", "History.aspx", "")
        Txt("copy_History_p7", "about", "تاریخچه - خدمت ۴", "صدور خدمات فنی و مهندسی به عنوان یک هدف استراتژیک", "History.aspx", "")
        Txt("copy_History_p8", "about", "تاریخچه - پاراگراف ۸", "شرکت انهار به عنوان یک شرکت اجرایی و مهندسی، در زمینه های نفت، گاز و پتروشیمی، آب، ساختمان و ابنیه و راه و باند،  پروژه های بسیاری را در اقصی نقاط کشور در زمینه طراحی، اجرا، تأمین کالا و نصب و راه اندازی ایستگاه های تقویت فشار گاز، یاردهای تعمیراتی بین خطوط و خطوط لوله انتقال نفت و گاز به اتمام رسانده است و مورد وثوق و اعتماد بسیاری از کارفرمایان فعال در این حوزه ها می باشد.", "History.aspx", "")
        Txt("copy_History_p9", "about", "تاریخچه - پاراگراف ۹", "امید است در ادامه راه، نسل سوم از مدیران شرکت انهار همانند مدیران نسل دوم که با ایده ها و انگیزه های بزرگ آن را از شرکتی منطقه ای به شرکتی با توان اجرایی بالا در سرتاسر ایران سوق دادند، با وسعت بخشیدن به حوزه جغرافیایی فعالیت های خود، فعالیت های این شرکت را به خارج از مرزهای ملی و به سوی حضور در عرصه های بین المللی رهنمون سازند.", "History.aspx", "")
        Txt("copy_InternationalArena_h1", "about", "عرصه بین الملل - عنوان", "حضور در عرصه بین الملل", "InternationalArena.aspx", "")
        Txt("copy_InternationalArena_p1", "about", "عرصه بین الملل - پاراگراف ۱", "یکی از وجوه تعالی شرکت‌های فعال در حوزه نفت، گاز و پتروشیمی، توسعه روابط علمی و اقتصادی در عرصه بین‌الملل می باشد. در این راستا، شرکت انهار حضور در نمایشگاه‌های بین‌المللی و ایجاد دفاتر نمایندگی در کشورهای را مدنظر قرار داده است. حضور در نمایشگاه های نفت و گاز و پتروشیمی تهران، ،شرکت در نمایشگاه بین المللی حوزه صنایع نفت، گاز و پتروشیمی، پالایشگاهی کشور پاکستان که یکی از کشورهای تولید کننده نفت خام در منطقه غرب آسیا می‌باشد بنا به دعوت از شرکت مهندسی و توسعه گاز ایران در سال 1401تعدادی از حضورهای شرکت انهار در عرصه بین المللی می‌باشد.", "InternationalArena.aspx", "")
        Txt("copy_InternationalArena_p2", "about", "عرصه بین الملل - پاراگراف ۲", "علاوه بر این شرکت انهار به جهت تقویت بخش تأمین کالا و تجهیزات در پروژه‌های شرکت، اقدام به ثبت و راه‌اندازی شعبه‌ای در کشور امارات نموده است. که با ایجاد این شعبه، امکان تأمین کالای تخصصی پروژه‌ها از شرکت‌های بین المللی فراهم گردیده است. شرکت Apex Group ثبت شده در کشور امارات، از شرکت‌های زیرمجموعه شرکت انهار جهت انجام فعالیت های بازرگانی برون مرزی بوده که تاکنون چندین قرارداد با سازندگان خارجی منعقد نموده است.", "InternationalArena.aspx", "")
        Txt("copy_InternationalArena_p3", "about", "عرصه بین الملل - پاراگراف ۳", "درنهایت شرکت انهار با هدف ورود به بازارهای بین المللی نفت و گاز در مجاورت ایران جهت اجرای پروژه های نفت، گاز و پتروشیمی اقدام به تاسیس شعبه دیگری در کشور عراق نموده است. که در آینده نزدیک در فاز اجرای این گونه پروژه های خارج از کشور فعالیت خواهد نمود.", "InternationalArena.aspx", "")
        Txt("copy_leadership_h1", "about", "هیات مدیره - عنوان", "اعضای هیات مدیره", "leadership.aspx", "")
        Txt("copy_leadership_1_name", "about", "هیات مدیره 1 - نام", "مسعود معظمی", "leadership.aspx", "")
        Txt("copy_leadership_1_role", "about", "هیات مدیره 1 - سمت", "مهندسی عمران و تاریخ", "leadership.aspx", "")
        Txt("copy_leadership_2_name", "about", "هیات مدیره 2 - نام", "ستار عزیزیان تفتی", "leadership.aspx", "")
        Txt("copy_leadership_2_role", "about", "هیات مدیره 2 - سمت", "مهندسی مواد", "leadership.aspx", "")
        Txt("copy_leadership_3_name", "about", "هیات مدیره 3 - نام", "اکبر اشراقی", "leadership.aspx", "")
        Txt("copy_leadership_3_role", "about", "هیات مدیره 3 - سمت", "حسابداری و مدیریت مالی", "leadership.aspx", "")
        Txt("copy_leadership_4_name", "about", "هیات مدیره 4 - نام", "مجتبی معظمی", "leadership.aspx", "")
        Txt("copy_leadership_4_role", "about", "هیات مدیره 4 - سمت", "فیزیک و MBA", "leadership.aspx", "")
        Txt("copy_leadership_5_name", "about", "هیات مدیره 5 - نام", "نگار معظمی", "leadership.aspx", "")
        Txt("copy_leadership_5_role", "about", "هیات مدیره 5 - سمت", "مهندسی عمران/مهندسی سازه", "leadership.aspx", "")
        Txt("copy_leadership_6_name", "about", "هیات مدیره 6 - نام", "مهدیار شریف", "leadership.aspx", "")
        Txt("copy_leadership_6_role", "about", "هیات مدیره 6 - سمت", "مهندسی عمران", "leadership.aspx", "")
        Txt("copy_Pillars_h1", "about", "ارکان جهت ساز - عنوان", "ارکان جهت ساز", "Pillars.aspx", "")
        Txt("copy_Pillars_h2", "about", "ارکان جهت ساز - چشم انداز", "چشم انداز", "Pillars.aspx", "")
        Txt("copy_Pillars_p1", "about", "ارکان جهت ساز - متن چشم انداز", "یکی از معتبرترین پیمانکاران EPC  در صنعت نفت، گاز، پتروشیمی وسایر دوایر کارفرمایی کشور", "Pillars.aspx", "")
        Txt("copy_Pillars_h3", "about", "ارکان جهت ساز - ماموریت", "ماموریت", "Pillars.aspx", "")
        Txt("copy_Pillars_p2", "about", "ارکان جهت ساز - متن ماموریت", "آبادانی از طریق طراحی ، خرید، اجرا و مدیریت پروژه های نفت، گاز، پتروشیمی و ساختمان", "Pillars.aspx", "")
        Txt("copy_OrganizationPolicy_h1", "about", "خط مشی - عنوان", "خط مشی سازمان", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p1", "about", "خط مشی - مقدمه", "خط مشی سندی است راهبردی که توسط مدیریت رده بالای سازمان تعیین و سیاست گذاری می گردد.خط مشی کیفیت ضمن اشاره به تعهدات کیفی، الزامات قابل اعمال و بهبود مستمر متناسب با محیط کسب و کار سازمان، هم  راستا با چشم انداز و ماموریت سازمان بوده و چارچوبی را برای تعیین  اهداف کیفیت ارائه می دهد.خط مشی HSE نیز ضمن تعهد به رعایت الزامات قانونی، پیشگیری از آلودگی، حذف خطرات، کاهش ریسک های بهداشتی و ایمنی، بهبود مستمر و مشارکت دهی کارگران، چارچوبی را برای تعیین اهداف مرتبط با HSE ارائه می دهد.", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p2", "about", "خط مشی کیفیت - عنوان", "خط مشی کیفیت", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p3", "about", "خط مشی کیفیت - متن", "شرکت انهار با نزدیک به نیم قرن فعالیت در زمینه های طراحی خرید اجرا و مدیریت پروژه های نفت گاز پتروشیمی و ساختمانی خود را ملزم به رعایت توافقات و قراردادهای فی مابین با کارفرمایان دانسته و کیفیت را حق مشتری و لازمه وجدان کاری میداند. به باور ما تحقق این نگرش در گرو جلب رضایت مشتری و رعایت استانداردهای فنی و مهندسی میباشد. بدین منظور سیستم مدیریت کیفیت را مطابق با اجرا نموده و ISO 3834-2:2005 ISO 29001:2020 ISO 9001:2015 خواسته های استانداردهای خود را ملزم به بهبود مستمر اثر بخشی آن دانسته و در این راستا برای تأمین الزامات فوق راهبردهای زیر را سر لوحه فعالیتهای خود میدانیم", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p4", "about", "خط مشی کیفیت - بند ۱", "تعامل اثر بخش و بهبود روشهای شناسایی و درک صحیح نیازهای کارفرمایان و توسعه زمینه های کاری", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p5", "about", "خط مشی کیفیت - بند ۲", "تلاش در جهت بهبود مستمر فرآیندهای انجام کار با بهره گیری از دانش فن آوری و تجربیات مناسب", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p6", "about", "خط مشی کیفیت - بند ۳", "توسعه فرهنگ سازمانی و ارتقاء سطح شایستگی سرمایه های انسانی", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p7", "about", "خط مشی کیفیت - بند ۴", "مدیریت بهینه زنجیره تامین و ایجاد فضای همکاری بر مبنای احترام و منافع متقابل", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p8", "about", "خط مشی کیفیت - بند ۵", "قانون مداری و تعهد به مسئولیت اجتماعی در تمامی تصمیم گیریها فعالیتها و امور اجرایی", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p9", "about", "خط مشی کیفیت - انتظار", "انتظار می رود تمامی همکاران و افرادی که به محیطهای کاری سازمان دسترسی دارند ضمن درک صحیح و بکارگیری آن در فعالیتهای اجرایی خود در جهت برآورده ساختن الزامات و اثربخشی سیستم مدیریت کیفیت تلاش نمایند.", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p10", "about", "خط مشی کیفیت - اطمینان", "حصول اطمینان از انطباق اجرا نگهداری و به روز رسانی سیستم مدیریت کیفیت و فرآیندهای آن ترویج فرهنگ مشتری مداری و نیز گزارش دهی منظم از عملکرد موثر سیستم مدیریت کیفیت و فرصتهای بهبود بر عهده سیستم ها و روشها بوده و بازنگری منظم اثر بخشی و سازگاری آن با جهت گیریهای راهبردی سازمان بر عهده اینجانب میباشد.", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p11", "about", "خط مشی کیفیت - امضا", "ستار عزیزیان", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p12", "about", "خط مشی HSE - عنوان", "خط مشی ایمنی، بهداشت و محیط زیست", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p13", "about", "خط مشی HSE - استاندارد", "ISO 45001:2018, ISO 14001:2015, HSE-MS", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p14", "about", "خط مشی HSE - مقدمه", "شرکت انهار فعال در پروژه های حوزه صنایع نفت گاز پتروشیمی و ساختمانی خود را متعهد به حفاظت از سلامت و ایمنی کارکنان و محیط زیست میداند. در این راستا اهداف زیر را در چهارچوب استراتژی های خود تعریف کرده است.", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p15", "about", "خط مشی HSE - بند ۱", "ترویج و توسعه فرهنگ ایمنی بهداشت و محیط زیست و ایجاد فضای مناسب جهت مشارکت کارکنان در اجرای الزامات HSE", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p16", "about", "خط مشی HSE - بند ۲", "ارتقاء صلاحیت پرسنل در حوزه HSE از طریق انجام برنامه های ارزیابی صلاحیت و ارائه برنامه های انتقال دانش به کلیه پرسنل در سطوح ستادی و اجرای", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p17", "about", "خط مشی HSE - بند ۳", "ارزیابی و پایش مستمر خطرات ایمنی و بهداشت شغلی و جنبه های زیست محیطی در جهت کنترل کاهش و مدیریت ریسکهای HSE و مدیریت ریسکهای فرایندی مربوط به HSE", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p18", "about", "خط مشی HSE - بند ۴", "پایش مستمر شاخصهای ایمنی بهداشت و محیط زیست به منظور افزایش بهره وری در روند اجرایی آن و دستیابی به بهبود مستمر", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p19", "about", "خط مشی HSE - بند ۵", "بهبود مستمر از طریق تعیین اهداف و برنامه ها در جهت ارتقاء عملکرد HSE و حرکت در راستای توسعه پایدار", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p20", "about", "خط مشی HSE - بند ۶", "شناسایی الزامات قانونی و سایر الزامات مرتبط با HSE و نظارت و کنترل بر اجرای آن", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p21", "about", "خط مشی HSE - بند ۷", "حفظ و صیانت از محیط زیست ایمنی و سلامت کارکنان", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p22", "about", "خط مشی HSE - تعهد", "اینجانب ضمن تعهد به بهبود مستمر سیستم مدیریت یکپارچه و برآورده ساختن الزامات آن در دوره های بازنگری مدیریت تداوم کفایت و اثربخشی این خط مشی را مورد بررسی قرار خواهم داد.", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p23", "about", "خط مشی HSE - انتظار", "انتظار میرود همکاران و افرادی که به محیط های کاری سازمان دسترسی دارند ضمن درک صحیح آن در جهت برآورده ساختن الزامات و اثربخشی سیستم مدیریت یکپارچه تلاش نمایند.", "OrganizationPolicy.aspx", "")
        Txt("copy_OrganizationPolicy_p24", "about", "خط مشی HSE - امضا", "ستار عزیزیان", "OrganizationPolicy.aspx", "")
        Txt("copy_Privacy_h1", "contact", "حریم خصوصی - عنوان", "حریم خصوصی", "Privacy.aspx", "")
        Txt("copy_Privacy_p1", "contact", "حریم خصوصی - پاراگراف ۱", "شرکت انهار متعهد به حفظ حریم خصوصی تمامی بازدیدکنندگان است و ما این بیانیه حفظ حریم خصوصی را به عنوان بخشی از تعهد خود به حریم خصوصی شما تهیه کرده ایم. شما به عنوان مشتری ما می توانید بدون وارد کردن اطلاعات شخصی در اینترنت جهانی به سایت شرکت انهار مراجعه کنید. مقدار اطلاعاتی که جمع آوری می کنیم به اطلاعاتی که در اختیار ما قرار می دهید بستگی دارد", "Privacy.aspx", "")
        Txt("copy_Privacy_p2", "contact", "حریم خصوصی - پاراگراف ۲", "با ثبت نام یا درخواست اطلاعات در این سایت، با جمع آوری، استفاده و انتقال اطلاعات خود مطابق با این سیاست موافقت می کنید.", "Privacy.aspx", "")
        Txt("copy_Privacy_h2", "contact", "حریم خصوصی - عنوان جمع آوری", "اطلاعاتی که از شما جمع آوری می کنیم.", "Privacy.aspx", "")
        Txt("copy_Privacy_p3", "contact", "حریم خصوصی - پاراگراف ۳", "هنگام بازدید، از شما خواسته می شود اطلاعاتی مانند نام و اطلاعات تماس خود را وارد کنید. همچنین ممکن است اطلاعاتی در مورد استفاده شما از سایت به همراه اطلاعاتی که از طریق نامه یا ایمیل برای ما ارسال می کنید جمع آوری کنیم.", "Privacy.aspx", "")
        Txt("copy_Privacy_h3", "contact", "حریم خصوصی - افشا", "افشای", "Privacy.aspx", "")
        Txt("copy_Privacy_p4", "contact", "حریم خصوصی - پاراگراف ۴", "اطلاعاتی که شما در اختیار ما قرار می دهید در سرورهای امن ما ذخیره می شود. ما همچنین ممکن است اطلاعات جمع آوری شده در مورد استفاده شما از سایت خود را با اشخاص ثالث به اشتراک بگذاریم، اما این اطلاعات شامل اطلاعاتی نمی شود که بتوان از آنها برای شناسایی شما استفاده کرد.", "Privacy.aspx", "")
        Txt("copy_Privacy_p5", "contact", "حریم خصوصی - پاراگراف ۵", "هر جا که رمز عبوری برای شما ارائه شد (یا انتخاب کردید) که به شما امکان دسترسی به بخش های خاصی از سایت ما را می دهد، مسئولیت حفظ و نگهداری این رمز عبور بر عهده شماست. از شما می خواهیم که این رمز عبور را با کسی به اشتراک نگذارید.", "Privacy.aspx", "")
        Txt("copy_Privacy_p6", "contact", "حریم خصوصی - پاراگراف ۶", "متاسفانه انتقال اطلاعات از طریق اینترنت کاملا امن نیست. اگرچه ما تمام تلاش خود را برای محافظت از اطلاعات شخصی شما انجام می دهیم، نمی توانیم امنیت انتقال اطلاعات شما را تضمین کنیم. بنابراین مسئولیت هرگونه انتقال به عهده شما خواهد بود. پس از دریافت اطلاعات شما، ما از اقدامات امنیتی سختگیرانه برای جلوگیری از دسترسی غیرمجاز به آن استفاده خواهیم کرد.", "Privacy.aspx", "")
        Txt("copy_Privacy_p7", "contact", "حریم خصوصی - پاراگراف ۷", "کشورهای خارج از جامعه اقتصادی اروپا همیشه قوانین قوی حفاظت از داده ها ندارند. با این حال، ما همیشه تلاش خواهیم کرد تا اطمینان حاصل کنیم که از اطلاعات شما مطابق با این سیاست استفاده می شود. جز در مواردی که توسط قانون الزامی باشد، ما هیچ بخشی از اطلاعاتی که شما به ما ارائه می دهید را نمی فروشیم، نمی فروشیم یا توزیع نمی کنیم.", "Privacy.aspx", "")
        Txt("copy_Privacy_p8", "contact", "حریم خصوصی - پاراگراف ۸", "در نهایت، اگر کسب و کار ما وارد یک سرمایه گذاری مشترک با شرکت دیگری شود، یا با نهاد دیگری ادغام شود یا به آن فروخته شود، اطلاعات شما برای شرکا یا مالکان جدید فاش می شود.", "Privacy.aspx", "")
        Txt("copy_Privacy_h4", "contact", "حریم خصوصی - آی پی", "آی پی ها و کوکی ها", "Privacy.aspx", "")
        Txt("copy_Privacy_p9", "contact", "حریم خصوصی - پاراگراف ۹", "ممکن است اطلاعاتی درباره رایانه شما، از جمله آدرس IP، سیستم عامل و نوع مرورگر شما جمع آوری کنیم و از آن برای اهداف مدیریتی و بازاریابی استفاده کنیم. این شامل داده های آماری در مورد الگوهای جستجوی اینترنتی و عملکرد شما است و نمی تواند شما را شناسایی کند.", "Privacy.aspx", "")
        Txt("copy_Privacy_p10", "contact", "حریم خصوصی - پاراگراف ۱۰", "کوکی ها بسته های کوچکی از اطلاعات هستند که ما در رایانه شما ذخیره می کنیم. هنگامی که وارد سایت ما می شوید، سیستم ما کوکی ها را در رایانه شما ذخیره می کند. مگر اینکه هنگام ارائه اطلاعات خود به ما اعتراض خود را اعلام کرده باشید. دفعه بعد که از سایت بازدید می کنید سرعت کوکی ها افزایش می یابد. همچنین، کوکی ها به ما اجازه می دهند ترافیک سایت را کنترل و نظارت کنیم و محتوای سایت را برای شما شخصی سازی کنیم. شما می توانید با فعال کردن تنظیمات خاصی در مرورگر رایانه خود از ذخیره سازی کوکی ها جلوگیری کنید، در این صورت ممکن است نتوانید از برخی ویژگی های خاص سایت ما استفاده کنید.", "Privacy.aspx", "")
        Txt("copy_Privacy_h5", "contact", "حریم خصوصی - امنیت", "امنیت و حفاظت از داده ها", "Privacy.aspx", "")
        Txt("copy_Privacy_p11", "contact", "حریم خصوصی - پاراگراف ۱۱", "ما از تدابیر امنیتی برای محافظت از اطلاعات شما در برابر دسترسی های غیرمجاز و فعالیت های غیرقانونی، آسیب های تصادفی، تخریب و از دست دادن استفاده می کنیم. ما اطلاعات شما را تا زمانی که قانون ایجاب کند حفظ خواهیم کرد.", "Privacy.aspx", "")
        Txt("copy_Privacy_p12", "contact", "حریم خصوصی - پاراگراف ۱۲", "در موارد خاص، سایت ما ممکن است حاوی لینک های الکترونیکی به سایت های دیگر باشد. اگر انتخاب کنید که از این سایت ها بازدید کنید، سیاست حفظ حریم خصوصی و اولویت های حریم خصوصی آنها اعمال خواهد شد.", "Privacy.aspx", "")
        Txt("copy_Privacy_h6", "contact", "حریم خصوصی - دسترسی", "دسترسی و به روز رسانی", "Privacy.aspx", "")
        Txt("copy_Privacy_p13", "contact", "حریم خصوصی - پاراگراف ۱۳", "شما این حق را دارید که از اطلاعاتی که در مورد شما نگهداری می کنیم آگاه باشید و از ما بخواهید که تغییراتی در آن اعمال کنیم تا دقیق و به روز باشد. اگر به این موضوع علاقه دارید، به ما اطلاع دهید.", "Privacy.aspx", "")
        Txt("copy_Privacy_h7", "contact", "حریم خصوصی - تغییرات", "تغییرات در سیاست حفظ حریم خصوصی ما", "Privacy.aspx", "")
        Txt("copy_Privacy_p14", "contact", "حریم خصوصی - پاراگراف ۱۴", "هر گونه تغییر در سیاست حفظ حریم خصوصی ما در آینده در سایت پست خواهد شد و در صورت لزوم از طریق ایمیل اطلاع رسانی خواهد شد.", "Privacy.aspx", "")
        Txt("copy_Law_h1", "contact", "قوانین - عنوان", "قوانین و مقررات", "Law.aspx", "")
        Txt("copy_Law_p1", "contact", "قوانین - متن", "", "Law.aspx", "")
        Txt("copy_FQ_h1", "contact", "سوالات متداول - عنوان", "پرسش های متداول", "FQ.aspx", "")
        Txt("copy_FQ_p1", "contact", "سوالات متداول - متن", "", "FQ.aspx", "")
        Txt("copy_DesignServices_h1", "services", "خدمات طراحی - عنوان", "خدمات طراحی شرکت انهار", "DesignServices.aspx", "")
        Txt("copy_DesignServices_p1", "services", "خدمات طراحی - تیتر", "فاز مهندسی یا طراحی (Engineering):", "DesignServices.aspx", "")
        Txt("copy_DesignServices_p2", "services", "خدمات طراحی - بند ۱", "طراحی مدارک، اسناد و نقشه های مورد نیاز جهت طراحی های آتی", "DesignServices.aspx", "")
        Txt("copy_DesignServices_p3", "services", "خدمات طراحی - بند ۲", "تهیه درخواست ها و اسناد خرید تجهیزات، کالا و مواد", "DesignServices.aspx", "")
        Txt("copy_DesignServices_p4", "services", "خدمات طراحی - بند ۳", "طراحی مدارک و نقشه های فنی مربوط به نصب تجهیزات", "DesignServices.aspx", "")
        Txt("copy_DesignServices_p5", "services", "خدمات طراحی - بند ۴", "طراحی مدارک و نقشه های فنی مربوط به اجرای فعالیت ها", "DesignServices.aspx", "")
        Txt("copy_DesignServices_p6", "services", "خدمات طراحی - توضیح", "در فاز مهندسی یا طراحی (Engineering) معمولا پیشرفت پروژه بر اساس مراحل طراحی و میزان نفر ساعت لازم جهت تکمیل طراحی برنامه ریزی و کنترل می شود.از جمله فعالیت های فاز طراحی یا مهندسی (Engineering) می توان به طراحی مسیر و محاسبات سازه ای اشاره نمود.", "DesignServices.aspx", "")
        Txt("copy_BuyServices_h1", "services", "خدمات خرید - عنوان", "خدمات خرید شرکت انهار", "BuyServices.aspx", "")
        Txt("copy_BuyServices_p1", "services", "خدمات خرید - تیتر", "فاز خرید و ساخت یا تامین و تدارکات (Procurement):", "BuyServices.aspx", "")
        Txt("copy_BuyServices_p2", "services", "خدمات خرید - بند ۱", "خرید ، ساخت ، تامین و تدارکات تجهیزات، کالاها و مواد مورد نیاز جهت اجرای پروژه از خارج از سازمان اجرایی پروژه", "BuyServices.aspx", "")
        Txt("copy_BuyServices_p3", "services", "خدمات خرید - بند ۲", "نظارت بر فروشندگان ، سازندگان و تامین کنندگان (Vendor or Supplier)", "BuyServices.aspx", "")
        Txt("copy_BuyServices_p4", "services", "خدمات خرید - بند ۳", "تحویل گیری تجهیزات، کالاها و مواد از فروشندگان ، سازندگان و تامین کنندگان", "BuyServices.aspx", "")
        Txt("copy_BuyServices_p5", "services", "خدمات خرید - توضیح", "در فاز خرید و ساخت یا تامین و تدارکات (Procurement) معمولا پیشرفت پروژه بر اساس مراحل خرید و هزینه (در برخی موارد زمان یا ترکیبی از هزینه و زمان) لازم جهت تکمیل خرید برنامه ریزی و کنترل می شود.از جمله فعالیت های فاز خرید و ساخت یا تامین و تدارکات (Procurement) می توان به ساخت و خرید تجهیزات و اتصالات اشاره نمود.", "BuyServices.aspx", "")
        Txt("copy_OperationsServices_h1", "services", "خدمات اجرا - عنوان", "خدمات اجرا شرکت انهار", "OperationsServices.aspx", "")
        Txt("copy_OperationsServices_p1", "services", "خدمات اجرا - تیتر", "فاز نصب یا اجرا (Construction):", "OperationsServices.aspx", "")
        Txt("copy_OperationsServices_p2", "services", "خدمات اجرا - بند ۱", "نصب تجهیزات", "OperationsServices.aspx", "")
        Txt("copy_OperationsServices_p3", "services", "خدمات اجرا - بند ۲", "اجرای فعالیت ها", "OperationsServices.aspx", "")
        Txt("copy_OperationsServices_p4", "services", "خدمات اجرا - توضیح", "در فاز نصب یا اجرا (Construction) معمولا پیشرفت پروژه بر اساس احجام و مقادیر کاری اجرا شده و مقادیر نصب شده تجهیزات برنامه ریزی و کنترل می شود.از جمله فعالیت های فاز نصب یا اجرا (Construction) می توان به اجرای فونداسیون، اجرای اسکلت و نصب تجهیزات، حفاری، جوش و لوله گذاری اشاره نمود.", "OperationsServices.aspx", "")
        Txt("copy_GasBoosterStation_h1", "projects", "تقویت فشار گاز - عنوان", "تأسیسات تقویت فشار گاز", "GasBoosterStation.aspx", "")
        Txt("copy_GasBoosterStation_p1", "projects", "تقویت فشار گاز - متن", "تأسیسات تقویت فشار گاز در جهت تأمین فشار مورد نیاز برای انتقال گاز از نقطه ای به نقطه دیگر طراحی می شوند. با توجه به گستردگی خطوط لوله انتقال گاز در کشور ایران، نیاز به احداث ایستگاه های تقویت فشار گاز به طور ویژه ای در سطح کشور افزایش یافته است و در همین راستا شرکت انهار در سال های فعالیت خود تاکنون، چندین ایستگاه تقویت فشار گاز را با موفقیت اجرا نموده است.", "GasBoosterStation.aspx", "")
        Txt("copy_pipelines_h1", "projects", "خطوط لوله - عنوان", "خطوط لوله انتقال نفت و گاز", "pipelines.aspx", "")
        Txt("copy_pipelines_p1", "projects", "خطوط لوله - متن", "به طور کلی اجرای خطوط لوله، اقتصادی ترین راه برای انتقال مقادیر قابل توجهی از نفت، نفت تصفیه شده و گاز طبیعی از طریق زمین می باشد. خطوط لوله انتقال نفت از فولاد و یا پلی اتیلن با قطر داخلی 4 تا 50 اینچ و خطوط لوله انتقال گاز از فولاد با قطر داخلی 2 تا 56 اینچ ساخته می شوند. کشورمان ایران، با دارا بودن منابع وسیعی از نفت و گاز، نیازمند تأسیس خطوط لوله بسیاری جهت انتقال نفت، فرآورده های نفتی و گاز می باشد و شرکت انهار با بکارگیری از دانش فنی نیروی انسانی مجرب و کارآزموده و همچنین تجهیزات و ماشین آلات به روز و مناسب، پروژه های فراوانی را در این راستا اجرا نموده است", "pipelines.aspx", "")
        Txt("copy_pipelines_more", "projects", "خطوط لوله - لینک پروژه های بیشتر", "نمایش دیگر پروژه های خطوط لوله انتقال نفت و گاز ...", "pipelines.aspx", "")
        Txt("copy_building_h1", "projects", "ابنیه - عنوان", "پروژه های ساختمانی و ابنیه", "building.aspx", "")
        Txt("copy_building_p1", "projects", "ابنیه - متن", "شرکت انهار فعالیت خود را با ساخت پروژه های ساختمانی و مدرسه سازی آغاز و  تاکنون توانسته است با برخورداری از گواهینامه صلاحیت پیمانکاری در زمینه ساختمان و ابنیه، سابقه فعالیت در این حوزه و همچنین به کمک توانایی های خود و بکارگیری مهندسین متخصص، بیش از یکصد پروژه در زمینه ساختمان و ابنیه، شامل احداث یاردهای تعمیراتی، احداث مدارس در شهر های مختلف کشور، اجرای اسکلت بتنی، احداث ساختمان های اداری و مسکونی و ... را با موفقیت اجرا نماید.", "building.aspx", "")
        Txt("copy_FacilitiesEquipment_h1", "projects", "تاسیسات - عنوان", "تأسیسات و تجهیزات", "FacilitiesEquipment.aspx", "")
        Txt("copy_FacilitiesEquipment_p1", "projects", "تاسیسات - متن", "از دیگر فعالیت‌های شرکت انهار می‌توان به مشارکت در انجام عملیات احداث پالایشگاه، احداث خطوط تغذیه شبکه شهری و تعویض پوشش خطوط لوله در شهر‌های مختلف کشور اشاره نمود.", "FacilitiesEquipment.aspx", "")
        Txt("copy_WateTransmissionPipelines_h1", "projects", "خطوط آب - عنوان", "پروژه های خطوط لوله انتقال آب", "WateTransmissionPipelines.aspx", "")
        Txt("copy_WateTransmissionPipelines_p1", "projects", "خطوط آب - متن", "با توجه به نقش حیاتی آب در زندگی بشر و کمبود این مایع حیات در قرن جدید، فرآیند انتقال و تصفیه آن تا مرحله رساندن به دست مصرف‌کننده، جزو پروژه های مهم و استراتژیک هر کشوری می باشد. خطوط انتقال و شبکه های توزیع آب به مجموعه ای از تأسیسات، شامل لوله، اتصالات و شیرآلات اطلاق می‌شود که به منظور انتقال سیالات از نقطه‌ای به نقطه دیگر احداث می‌شوند. مهمترین بخش‌های یک شبکه توزیع یا خطوط انتقال آب شامل لوله با جنس‌های مختلف، ایستگاه پمپاژ به منظور تأمین فشار خط و شیرآلات به منظور کنترل و بهره برداری از خط انتقال می‌باشد.", "WateTransmissionPipelines.aspx", "")
        Txt("copy_Employers_h1", "about", "کارفرمایان - عنوان", "معرفی کارفرمایان", "Employers.aspx", "")
        Txt("copy_Employers_1_name", "about", "کارفرما ۱ - نام", "شرکت ملی نفت ایران", "Employers.aspx", "")
        Txt("copy_Employers_1_ceo", "about", "کارفرما ۱ - مدیرعامل", "مدیر عامل : حمید بورد", "Employers.aspx", "")
        Txt("copy_Employers_1_addr", "about", "کارفرما ۱ - آدرس", "خیابان حافظ ، نبش خیابان رودسرتماس با شرکت ملی نفت ایران: ۶۱۶۵۱-۰۲۱", "Employers.aspx", "")
        Txt("copy_Employers_1_web", "about", "کارفرما ۱ - وب سایت", "وب سایت", "Employers.aspx", "")
        Txt("copy_Employers_2_name", "about", "کارفرما ۲ - نام", "شرکت ملی گاز ایران", "Employers.aspx", "")
        Txt("copy_Employers_2_ceo", "about", "کارفرما ۲ - مدیرعامل", "مدیر عامل : دکتر سعید توکلی", "Employers.aspx", "")
        Txt("copy_Employers_2_addr", "about", "کارفرما ۲ - آدرس", "تهران ، خیابان عضدی (آبان)، پلاک ۲۹", "Employers.aspx", "")
        Txt("copy_Employers_2_web", "about", "کارفرما ۲ - وب سایت", "وب سایت", "Employers.aspx", "")
        Txt("copy_ContactManagement_h1", "contact", "مدیریت تماس - عنوان", "مدیریت تماس", "ContactManagement.aspx", "")
        Txt("copy_ContactUs_h1", "contact", "تماس با ما - عنوان", "تماس با ما", "ContactUs.aspx", "")
        Txt("copy_ContactUs_h2", "contact", "تماس با ما - اطلاعات شرکت", "اطلاعات شرکت", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p1", "contact", "تماس با ما - نام شرکت", "نام شرکت: ساختمانی انهار", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p2", "contact", "تماس با ما - نوع شرکت", "نوع شرکت: سهامی خاص", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p3", "contact", "تماس با ما - تاریخ تاسیس", "تاریخ تاسیس شرکت: 1353/08/06", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p4", "contact", "تماس با ما - شماره ثبت", "شماره ثبت: 149903", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p5", "contact", "تماس با ما - شناسه ملی", "شناسه ملی: 10260014510", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p6", "contact", "تماس با ما - کد اقتصادی", "کد اقتصادی: 411175119134", "ContactUs.aspx", "")
        Txt("copy_ContactUs_h3", "contact", "تماس با ما - اطلاعات تماس", "اطلاعات تماس", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p7", "contact", "تماس با ما - آدرس", "آدرس: تهران، خیابان شیخ بهایی، میدان پرسپولیس، خیابان پرسپولیس، کوچه زاهدی، کوچه بیست و یکم، پلاک 4", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p8", "contact", "تماس با ما - کد پستی", "کد پستی: 1995775314", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p9", "contact", "تماس با ما - تلفن", "تلفن: 41372-021", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p10", "contact", "تماس با ما - فکس", "فکس: 88600730-021", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p11", "contact", "تماس با ما - ایمیل", "پست الکترونیک: Info@anharco.ir", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p12", "contact", "تماس با ما - وبسایت", "وبسایت: www.anharco.ir", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p13", "contact", "تماس با ما - اینستاگرام", "اینستاگرام: AnharCompany", "ContactUs.aspx", "")
        Txt("copy_ContactUs_p14", "contact", "تماس با ما - لینکدین", "لینکدین: AnharCompany", "ContactUs.aspx", "")
        Txt("copy_Certificates_h1", "about", "گواهینامه ها - عنوان صفحه", "گواهینامه ها و استانداردها", "Certificates.aspx", "")
        Txt("copy_Certificates_p1", "about", "گواهینامه ها - متن صفحه", "شرکت انهار در طی سالیان فعالیت خود موفق به کسب گواهینامه صلاحیت پیمانکاری در رشته های نفت و گاز، ساختمان و ابنیه، تأسیسات و تجهیزات، آب ، راه و ترابری و صنعت از سازمان برنامه و بودجه کشور و گواهینامه صلاحیت ایمنی پیمانکاران از وزارت تعاون، کار و رفاه اجتماعی گردیده است. همچنین این شرکت در حال اخذ رتبه طرح و ساخت جهت پیشبرد اهداف خود می باشد. این شرکت دارای گواهینامه های سیستم مدیریت یکپارچه (IMS) از شرکت بین المللی SGS می باشد.همچنین به منظور بهبود کیفیت عملیات اجرایی در پروژه های خطوط لوله اقدام به اخذ گواهینامه مدیریت جوش ISO3834-2:2021 نموده است.", "Certificates.aspx", "")
        Txt("copy_Acknowledgments_h1", "about", "تقدیرنامه ها - عنوان", "تقدیرنامه ها", "Acknowledgments.aspx", "")
        Txt("copy_Acknowledgments_p1", "about", "تقدیرنامه ها - متن", "شرکت انهار به پاس نیم قرن فعالیت خود در حوزه اجرای پروژه های عمرانی و به واسطه حسن سابقه خوب در این زمینه به ویژه در حوزه نفت و گاز، تعداد بسیاری تقدیرنامه از سازمان ها و ارگان های ذیربط دریافت نموده است.", "Acknowledgments.aspx", "")
        Txt("copy_News_h1", "news", "اخبار - عنوان صفحه", "اخبار شرکت انهار", "News.aspx", "")
        Txt("copy_News_sidebar", "news", "اخبار - عنوان ستون", "آخرین اخبار", "News.aspx", "")
        Txt("copy_Gallery_h1", "gallery", "گالری - عنوان", "گالری تصاویر و فیلم", "Gallery.aspx", "")
        Txt("copy_Links_h1", "contact", "لینک ها - عنوان", "لینک ها", "Links.aspx", "")
        Txt("copy_FielsDownload_h1", "contact", "دانلود - عنوان", "دانلود مدارک", "FielsDownload.aspx", "")
        Txt("copy_Index_exhibit_kicker", "home", "خانه - تیتر حضور بین الملل", "حضور در عرصه های بین المللی", "Index.aspx", "")
        Txt("copy_Index_exhibit_title", "home", "خانه - عنوان نمایشگاه", "شرکت در نمایشگاه های بین المللی", "Index.aspx", "")
        Txt("copy_Index_exhibit_text", "home", "خانه - متن نمایشگاه", "یکی از وجوه تعالی شرکتهای فعال در حوزه نفت، گاز و پتروشیمی، توسعه روابط علمی و اقتصادی در عرصه بین الملل میباشد. در این راستا، شرکت انهار حضور در نمایشگاههای بین المللی و ایجاد دفاتر نمایندگی در کشورهای منطقه را مدنظر قرار داده است. حضور در نمایشگاه های نفت و گاز و پتروشیمی تهران، شرکت در نمایشگاه توانمندی های تولیدی و صنعتی ایران در ترکمنستان، شرکت در نمایشگاه بین المللی حوزه صنایع نفت، گاز و پتروشیمی، پاالیشگاهی کشور پاکستان که یکی از کشورهای تولید کننده نفت خام در منطقه غرب آسیا میباشد بنا به دعوت از شرکت مهندسی و توسعه گاز ایران در سال 1401تعدادی از حضورهای شرکت انهار در عرصه بین المللی میباشد. شرکت .CO TRADING NOVOIL ثبت شده در کشور امارات، از شرکتهای زیرمجموعه شرکت انهار جهت انجام فعالیت های بازرگانی برون مرزی بوده که تاکنون چندین قرارداد با سازندگان خارجی منعقد نموده است.", "Index.aspx", "")
        Txt("copy_Index_exhibit_btn", "home", "خانه - دکمه اطلاعات بیشتر", "اطلاعات بیشتر", "Index.aspx", "")
        Txt("copy_Index_news_small", "home", "خانه - تیتر کوچک اخبار", "اطلاع رسانی", "Index.aspx", "")
        Txt("copy_Index_news_big", "home", "خانه - تیتر بزرگ اخبار", "آخرین اخبار", "Index.aspx", "")
        Img("footer_logo", "footer", "لوگوی فوتر", "images/anharCoFooter.png", "Index.aspx", "footer_logo")
        Txt("footer_title", "footer", "عنوان فوتر", "", "Index.aspx", "footer_title")
        Txt("footer_about", "footer", "متن معرفی فوتر", "", "Index.aspx", "footer_about")
        Txt("footer_copy", "footer", "کپی رایت", "", "Index.aspx", "footer_copy")
        Lnk("social_facebook", "footer", "لینک فیسبوک", "http://www.facebook.com/anharcompany", "Index.aspx", "social_facebook")
        Img("social_facebook_icon", "footer", "لوگوی فیسبوک", "", "Index.aspx", "social_facebook_icon")
        Lnk("social_instagram", "footer", "لینک اینستاگرام", "http://www.instagram.com/anharcompany", "Index.aspx", "social_instagram")
        Img("social_instagram_icon", "footer", "لوگوی اینستاگرام", "", "Index.aspx", "social_instagram_icon")
        Lnk("social_linkedin", "footer", "لینک لینکدین", "https://www.linkedin.com/company/anhar-company", "Index.aspx", "social_linkedin")
        Img("social_linkedin_icon", "footer", "لوگوی لینکدین", "", "Index.aspx", "social_linkedin_icon")
        Lnk("social_twitter", "footer", "لینک توییتر", "https://twitter.com/AnharCompany", "Index.aspx", "social_twitter")
        Img("social_twitter_icon", "footer", "لوگوی توییتر", "", "Index.aspx", "social_twitter_icon")
        Lnk("social_telegram", "footer", "لینک تلگرام", "http://telegram.me/joinchat/B3sSEz1VxMcIUL7uml7OdQ", "Index.aspx", "social_telegram")
        Img("social_telegram_icon", "footer", "لوگوی تلگرام", "", "Index.aspx", "social_telegram_icon")

        Img("logo", "chrome", "لوگوی هدر", "images/Anhar-Logo.png", "", "site_logo")
        Img("favicon", "chrome", "فاوایکون تب مرورگر", "images/Anhar-Logo.png", "", "site_favicon")
        Img("logotype", "chrome", "لوگوتایپ کنار متن صفحات", "images/LogoType-AnharCo.jpg", "", "site_logotype")
        Txt("title", "chrome", "عنوان تب مرورگر", "", "Index.aspx", "site_title")

            ready = True
        End SyncLock
    End Sub

    Public Function All() As List(Of StudioField)
        Ensure()
        Return itemList
    End Function

    Public Function AllGroups() As List(Of String())
        Ensure()
        Return groupList
    End Function

    Public Function Find(ByVal key As String) As StudioField
        Ensure()
        If itemList Is Nothing Then
            Return Nothing
        End If
        Dim f As StudioField
        For Each f In itemList
            If f Is Nothing Then
                Continue For
            End If
            If f.Key = key Then
                Return f
            End If
        Next
        Return Nothing
    End Function

    Public Function InGroup(ByVal groupId As String) As List(Of StudioField)
        Ensure()
        Dim list As New List(Of StudioField)()
        If itemList Is Nothing Then
            Return list
        End If
        Dim f As StudioField
        For Each f In itemList
            If f Is Nothing Then
                Continue For
            End If
            If groupId = "" OrElse f.GroupId = groupId Then
                list.Add(f)
            End If
        Next
        Return list
    End Function

    Public Function GroupTitle(ByVal groupId As String) As String
        If groupList Is Nothing Then
            Ensure()
        End If
        Dim g As String()
        For Each g In groupList
            If g(0) = groupId Then
                Return g(1)
            End If
        Next
        Return "همه بخش ها"
    End Function

    Public Function FallbackOf(ByVal key As String) As String
        If key = "flag_fa" Then
            Return "images/IranFlag.jpg"
        End If
        If key = "flag_ar" Then
            Return "images/IraqFlag.jpg"
        End If
        Dim f As StudioField = Find(key)
        If f Is Nothing Then
            Return ""
        End If
        Return f.Fallback
    End Function

    Private Function CropBox(ByVal fit As String, ByVal w As Integer, ByVal h As Integer, ByVal shape As String, ByVal kind As String, ByVal label As String) As StudioCropFrame
        Dim box As New StudioCropFrame()
        box.Fit = fit
        box.W = w
        box.H = h
        box.Shape = shape
        box.Kind = kind
        box.Label = label
        Return box
    End Function

    Public Function CropFrameOf(ByVal key As String) As StudioCropFrame
        If key Is Nothing Then
            key = ""
        End If
        If key = "logo" Then
            Return CropBox("cover", 1, 1, "circle", "img", "لوگوی هدر روی سایت — دایره ۱:۱")
        End If
        If key = "footer_logo" Then
            Return CropBox("contain", 1, 1, "circle", "img", "لوگوی فوتر روی سایت — دایره ۱:۱")
        End If
        If key.EndsWith("_icon") Then
            Return CropBox("contain", 1, 1, "round", "img", "آیکون شبکه اجتماعی — مربع ۱:۱")
        End If
        If key.StartsWith("slider") AndAlso key.IndexOf("image") >= 0 Then
            Return CropBox("cover", 12, 5, "rect", "bg", "اسلایدر خانه — عریض ۱۲:۵ مثل بنر سایت")
        End If
        If key.StartsWith("hero_") Then
            Return CropBox("cover", 12, 5, "rect", "bg", "هدر صفحه — عریض ۱۲:۵ مثل بنر سایت")
        End If
        If (key.StartsWith("cert") OrElse key.StartsWith("ack")) AndAlso key.IndexOf("image") >= 0 Then
            Return CropBox("contain", 163, 190, "rect", "img", "کادر سند روی سایت — عمودی؛ نسبت خود عکس (مثل ۹:۱۶) حفظ می‌شود")
        End If
        If key.StartsWith("pic_leadership") Then
            Return CropBox("cover", 1, 1, "rect", "img", "عکس هیئت مدیره — مربع ۱:۱")
        End If
        If key.StartsWith("news") AndAlso key.IndexOf("image") >= 0 Then
            Return CropBox("cover", 19, 11, "rect", "img", "کارت خبر روی سایت — افقی ۳۸۰×۲۲۰")
        End If
        If key.StartsWith("gallery") AndAlso key.IndexOf("image") >= 0 Then
            Dim n As String = key.Replace("gallery", "").Replace("_image", "")
            If n = "1" Then Return CropBox("cover", 295, 484, "rect", "img", "کلاژ خانه ۱ — عمودی")
            If n = "2" Then Return CropBox("cover", 505, 260, "rect", "img", "کلاژ خانه ۲ — افقی")
            If n = "3" Then Return CropBox("cover", 400, 428, "rect", "img", "کلاژ خانه ۳ — نزدیک به مربع")
            If n = "4" Then Return CropBox("cover", 505, 204, "rect", "img", "کلاژ خانه ۴ — افقی عریض")
            If n = "5" Then Return CropBox("cover", 610, 316, "rect", "img", "کلاژ خانه ۵ — افقی")
            If n = "6" Then Return CropBox("cover", 2, 1, "rect", "img", "کلاژ خانه ۶ — افقی ۲:۱")
            If n = "7" Then Return CropBox("cover", 295, 260, "rect", "img", "کلاژ خانه ۷")
            If n = "8" Then Return CropBox("cover", 2, 1, "rect", "img", "کلاژ خانه ۸ — افقی ۲:۱")
            Return CropBox("cover", 4, 3, "rect", "img", "کلاژ خانه")
        End If
        If key = "home_pic9" Then
            Return CropBox("cover", 4, 3, "rect", "img", "عکس کناری پروژه‌ها — افقی ۴:۳")
        End If
        If key = "pic_ApexLogo" OrElse key = "pic_nioc" OrElse key = "pic_logogz" Then
            Return CropBox("contain", 1, 1, "rect", "img", "لوگو — نمایش کامل داخل مربع")
        End If
        If key.StartsWith("pic_") Then
            Return CropBox("cover", 16, 9, "rect", "img", "عکس داخلی صفحه — افقی ۱۶:۹")
        End If
        Return CropBox("cover", 16, 9, "rect", "img", "قاب سایت — افقی ۱۶:۹")
    End Function

    Private Sub AddField(ByVal key As String, ByVal groupId As String, ByVal title As String, ByVal kind As String, ByVal fallback As String, ByVal pageFile As String, ByVal sessionKey As String, ByVal isShared As Boolean)
        Dim f As New StudioField()
        f.Key = key
        f.GroupId = groupId
        f.GroupTitle = ""
        f.Title = title
        f.Kind = kind
        f.Fallback = fallback
        f.PageFile = pageFile
        f.SessionKey = sessionKey
        f.SharedAcrossLang = isShared
        f.SectionTitle = ResolveSection(key, pageFile)
        If kind = "image" Then
            f.Hint = "عکس فعلی همین جا دیده می شود. فایل جدید جایگزین می شود و با تیک همگام سازی روی هر سه زبان می نشیند."
        ElseIf kind = "link" Then
            f.Hint = "این لینک با یک ذخیره روی فارسی، عربی و انگلیسی با هم عوض می شود."
        Else
            f.Hint = "متن این بخش فقط برای زبانی که انتخاب کرده اید ذخیره می شود."
        End If
        itemList.Add(f)
    End Sub

    Private Function ResolveSection(ByVal key As String, ByVal pageFile As String) As String
        If key.StartsWith("slider") Then
            Return "اسلایدر"
        End If
        If key.StartsWith("gallery") Then
            Return "کلاژ عکس"
        End If
        If key = "home_pic9" OrElse key = "projects_more_link" Then
            Return "بخش پروژه های صفحه اصلی"
        End If
        If key.StartsWith("cert") Then
            Return "گواهینامه ها"
        End If
        If key.StartsWith("news") Then
            Return "لیست اخبار"
        End If
        If key.StartsWith("social_") Then
            Return "شبکه های اجتماعی"
        End If
        If key.StartsWith("footer_") Then
            Return "متن و لوگوی فوتر"
        End If
        If key = "logo" OrElse key = "favicon" OrElse key = "title" OrElse key = "logotype" Then
            Return "لوگو و عنوان"
        End If
        If pageFile = "MessageCEO.aspx" Then
            Return "پیام رئیس هیات مدیره"
        End If
        If pageFile = "History.aspx" Then
            Return "تاریخچه"
        End If
        If pageFile = "Pillars.aspx" Then
            Return "ارکان جهت ساز"
        End If
        If pageFile = "OrganizationPolicy.aspx" Then
            Return "خط مشی سازمان"
        End If
        If pageFile = "Certificates.aspx" Then
            Return "گواهینامه ها"
        End If
        If pageFile = "leadership.aspx" Then
            Return "هیات مدیره"
        End If
        If pageFile = "Acknowledgments.aspx" Then
            Return "تقدیرنامه ها"
        End If
        If pageFile = "InternationalArena.aspx" Then
            Return "عرصه بین الملل"
        End If
        If pageFile = "Employers.aspx" Then
            Return "کارفرمایان"
        End If
        If pageFile = "GasBoosterStation.aspx" Then
            Return "تاسیسات تقویت فشار گاز"
        End If
        If pageFile = "pipelines.aspx" Then
            Return "خطوط لوله نفت و گاز"
        End If
        If pageFile = "building.aspx" Then
            Return "ابنیه و ساختمان"
        End If
        If pageFile = "FacilitiesEquipment.aspx" Then
            Return "تاسیسات و تجهیزات"
        End If
        If pageFile = "WateTransmissionPipelines.aspx" Then
            Return "خطوط انتقال آب"
        End If
        If pageFile = "DesignServices.aspx" Then
            Return "خدمات مهندسی"
        End If
        If pageFile = "BuyServices.aspx" Then
            Return "خدمات خرید"
        End If
        If pageFile = "OperationsServices.aspx" Then
            Return "خدمات اجرا"
        End If
        If pageFile = "ContactUs.aspx" Then
            Return "تماس با ما"
        End If
        If pageFile = "News.aspx" Then
            Return "اخبار"
        End If
        If pageFile = "Gallery.aspx" Then
            Return "گالری"
        End If
        If pageFile = "Links.aspx" Then
            Return "لینک ها"
        End If
        If pageFile = "FielsDownload.aspx" Then
            Return "دانلود فایل"
        End If
        If pageFile = "Privacy.aspx" Then
            Return "حریم خصوصی"
        End If
        If pageFile = "Law.aspx" Then
            Return "قوانین"
        End If
        If pageFile = "FQ.aspx" Then
            Return "سوالات متداول"
        End If
        If pageFile = "Indexer_Search.aspx" Then
            Return "جستجو"
        End If
        Return "سایر"
    End Function

    Private Sub Img(ByVal key As String, ByVal groupId As String, ByVal title As String, ByVal fallback As String, ByVal pageFile As String, ByVal sessionKey As String)
        AddField(key, groupId, title, "image", fallback, pageFile, sessionKey, True)
    End Sub

    Private Sub Hero(ByVal key As String, ByVal groupId As String, ByVal title As String, ByVal fallback As String, ByVal pageFile As String)
        AddField(key, groupId, title, "image", fallback, pageFile, "", True)
    End Sub

    Private Sub Txt(ByVal key As String, ByVal groupId As String, ByVal title As String, ByVal fallback As String, ByVal pageFile As String, ByVal sessionKey As String)
        AddField(key, groupId, title, "text", fallback, pageFile, sessionKey, False)
    End Sub

    Private Sub Lnk(ByVal key As String, ByVal groupId As String, ByVal title As String, ByVal fallback As String, ByVal pageFile As String, ByVal sessionKey As String)
        AddField(key, groupId, title, "link", fallback, pageFile, sessionKey, True)
    End Sub
End Module
