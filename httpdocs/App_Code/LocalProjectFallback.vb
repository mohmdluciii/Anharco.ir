Option Explicit On
Option Strict Off

Imports System.Globalization
Imports System.Text

Public Module LocalProjectFallback
    Private Function ProjVal(ByVal lang As String, ByVal prefix As String, ByVal idx As Integer, ByVal field As String, ByVal fallback As String) As String
        Dim key As String = prefix & idx.ToString() & "_" & field
        Dim v As String = SiteStudioStore.GetValue(lang, key)
        If Not String.IsNullOrEmpty(v) Then
            Return v
        End If
        Return fallback
    End Function

    Public Function GasBoosterHtml() As String
        Dim lang As String = CultureInfo.CurrentUICulture.TwoLetterISOLanguageName.ToLowerInvariant()
        Dim dateLabel As String = "Project start date : "
        Dim bossLabel As String = "Employer : "
        If lang = "fa" Then
            dateLabel = "تاریخ شروع پروژه : "
            bossLabel = "کارفرما : "
        ElseIf lang = "ar" Then
            dateLabel = "تاريخ بدء المشروع : "
            bossLabel = "صاحب العمل : "
        End If

        Dim html As New StringBuilder()
        Dim colors() As String = {"#003653", "#00708C", "#0B2D71", "#003653", "#093A7F", "#0B2D71", "#093A7F"}
        Dim fallbacks_fa() As String = {"Pic_Project/Project_Tghviat_feshar_gaz_homa.jpg", "Pic_Project/Project_Istgah_Tghviat_feshar_arsanjan.jpg", "Pic_Project/Project_Istgah_feshar_gaz_naein.jpg", "Pic_Project/Project_Istgah_feshar_gaz_naein_phaz1.jpg", "Pic_Project/Project_Istgah_Taghviat_Feshar_Dehshir.jpg", "Pic_Project/Tghviat_feshar_gaz_ghazvin.jpg", "Pic_Project/Project_Taghviat_feshar_gaz_polKaleh.jpg"}
        Dim titles_fa() As String = {"ایستگاه تقویت و اندازه‌گیری فشار گاز هما (EPCC)", "ایستگاه تقویت و اندازه‌گیری فشار گاز ارسنجان (EPC)", "ایستگاه مکانیکی تقویت فشار گاز نائین (EPC)", "فاز ۱ ایستگاه تقویت فشار گاز نائین", "ایستگاه‌های تقویت فشار گاز دهشیر و ندوشن (EPC)", "ایستگاه تقویت فشار گاز قزوین (PC)", "ایستگاه تقویت فشار گاز پل‌کله"}
        Dim years_fa() As String = {"۱۴۰۰", "۱۳۹۶", "۱۳۹۳", "۱۳۹۳", "۱۳۸۹", "۱۳۸۴", "۱۳۸۰"}
        Dim titles_ar() As String = {"محطة تعزيز وقياس ضغط الغاز في حقل هما (EPCC)", "محطة تعزيز وقياس ضغط الغاز في ارسنجان (EPC)", "المحطة الميكانيكية لتعزيز ضغط الغاز في نائين (EPC)", "المرحلة الأولى لمحطة نائين", "محطتا دهشير وندوشن (EPC)", "محطة تعزيز ضغط الغاز في قزوين (PC)", "محطة تعزيز ضغط الغاز في بلّ كله"}
        Dim years_ar() As String = {"2021", "2017", "2014", "2014", "2010", "2005", "2001"}
        Dim titles_en() As String = {"Homa gas pressure boosting and metering station (EPCC)", "Arsanjan gas pressure boosting and metering station (EPC)", "Naein mechanical gas pressure boosting station (EPC)", "Naein gas pressure boosting station - phase 1", "Dehshir and Nadoshan boosting stations (EPC)", "Qazvin gas pressure boosting station (PC)", "Pol-e Kaleh gas pressure boosting station"}
        Dim years_en() As String = {"2021", "2017", "2014", "2014", "2010", "2005", "2001"}
        Dim i As Integer
        For i = 0 To 6
            Dim pic As String = ProjVal(lang, "proj_gas", i + 1, "image", fallbacks_fa(i))
            Dim title As String
            Dim yr As String
            If lang = "fa" Then
                title = ProjVal(lang, "proj_gas", i + 1, "title", titles_fa(i))
                yr = years_fa(i)
            ElseIf lang = "ar" Then
                title = ProjVal(lang, "proj_gas", i + 1, "title", titles_ar(i))
                yr = years_ar(i)
            Else
                title = ProjVal(lang, "proj_gas", i + 1, "title", titles_en(i))
                yr = years_en(i)
            End If
            Dim employer As String = ProjVal(lang, "proj_gas", i + 1, "employer", "شرکت ملی گاز ایران")
            If lang = "ar" Then employer = ProjVal(lang, "proj_gas", i + 1, "employer", "شركة الغاز الوطنية")
            If lang = "en" Then employer = ProjVal(lang, "proj_gas", i + 1, "employer", "National Iranian Gas Company")
            AppendSlide(html, dateLabel, bossLabel, title, yr, employer, "", pic, colors(i), i + 1)
        Next
        Return html.ToString()
    End Function

    Public Function PipelinesHtml() As String
        Dim lang As String = CultureInfo.CurrentUICulture.TwoLetterISOLanguageName.ToLowerInvariant()
        Dim dateLabel As String = ""
        Dim bossLabel As String = ""
        BindLabels(lang, dateLabel, bossLabel)
        Dim html As New StringBuilder()
        Dim colors() As String = {"#003653", "#00708C", "#0B2D71", "#093A7F", "#003653", "#00708C", "#0B2D71", "#093A7F"}
        Dim fallbacks_fa() As String = {"images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg"}
        Dim titles_fa() As String = {"خط لوله ۲۴ اینچ پروپان و بوتان عسلویه (EPC)", "خط لوله ایستگاه کنترل فشار گاز تلخاب (PC)", "خط لوله ۱۶ اینچ انتقال گاز کل‌کهر (PC)", "خط لوله ۵۶ اینچ قم به پارچین، فاز ۲ (EPC)", "خط لوله ۲۰ و ۱۶ اینچ ایرانشهر به خاش (EPC)", "خط لوله ۱۲ اینچ سربیشه به نهبندان (EPC)", "تعویض خط لوله ۱۸ و ۲۴ اینچ اصفهان به ری (PC)", "خط لوله ۱۰ اینچ ری به کرج (EPC)"}
        Dim years_fa() As String = {"۱۴۰۲", "۱۴۰۲", "۱۴۰۱", "۱۳۹۹", "۱۳۹۸", "۱۳۹۶", "۱۳۹۱", "۱۳۸۷"}
        Dim texts_fa() As String = {"احداث خط لوله انتقال گاز پروپان و بوتان از پالایشگاه‌های پارس جنوبی تا اسکله‌های صادرات.", "اجرای شبکه خط لوله ایستگاه کنترل فشار گاز تلخاب.", "احداث خط لوله ۱۶ اینچ انتقال گاز در محدوده کل‌کهر.", "اجرای فاز دوم خط لوله ۵۶ اینچ انتقال گاز از قم به پارچین.", "احداث خط لوله انتقال گاز از ایرانشهر به پالیزان و خاش.", "احداث خط لوله ۱۲ اینچ انتقال گاز از سربیشه به نهبندان.", "تعویض پوشش و بازسازی خط لوله انتقال گاز اصفهان به ری.", "احداث خط لوله ۱۰ اینچ انتقال گاز از ری به کرج."}
        Dim titles_ar() As String = {"خط أنابيب 24 إنش للبروبان والبوتان عسلويه (EPC)", "خط أنابيب محطة التحكم بضغط الغاز في تلخاب (PC)", "خط أنابيب 16 إنش نقل الغاز في كل كهر (PC)", "خط أنابيب 56 إنش من قم إلى بارجين، المرحلة الثانية (EPC)", "خط أنابيب 20 و16 إنش من إيرانشهر إلى خاش (EPC)", "خط أنابيب 12 إنش من سربشه إلى نهبندان (EPC)", "استبدال خط أنابيب 18 و24 إنش من أصفهان إلى الري (PC)", "خط أنابيب 10 إنش من الري إلى كرج (EPC)"}
        Dim years_ar() As String = {"2023", "2023", "2022", "2020", "2019", "2017", "2012", "2008"}
        Dim texts_ar() As String = {"مد خط أنابيب نقل غاز البروبان والبوتان من مصافي بارس الجنوبي إلى أرصفة التصدير.", "تنفيذ شبكة خط أنابيب محطة التحكم بضغط الغاز في تلخاب.", "مد خط أنابيب 16 إنش لنقل الغاز في منطقة كل كهر.", "تنفيذ المرحلة الثانية لخط أنابيب 56 إنش من قم إلى بارجين.", "مد خط أنابيب نقل الغاز من إيرانشهر إلى باليزان وخاش.", "مد خط أنابيب 12 إنش لنقل الغاز من سربشه إلى نهبندان.", "استبدال وإعادة تأهيل خط أنابيب نقل الغاز من أصفهان إلى الري.", "مد خط أنابيب 10 إنش لنقل الغاز من الري إلى كرج."}
        Dim titles_en() As String = {"24-inch propane and butane pipeline, Assaluyeh (EPC)", "Talkhab gas pressure control station pipeline (PC)", "16-inch Kal Kahr gas transmission pipeline (PC)", "56-inch Qom to Parchin pipeline, phase 2 (EPC)", "20 and 16-inch Iranshahr to Khash pipeline (EPC)", "12-inch Sarbisheh to Nehbandan pipeline (EPC)", "18 and 24-inch Isfahan to Rey pipeline replacement (PC)", "10-inch Rey to Karaj pipeline (EPC)"}
        Dim years_en() As String = {"2023", "2023", "2022", "2020", "2019", "2017", "2012", "2008"}
        Dim texts_en() As String = {"Construction of the propane and butane transmission pipeline from South Pars refineries to export jetties.", "Pipeline network for the Talkhab gas pressure control station.", "Construction of the 16-inch gas transmission pipeline in Kal Kahr.", "Phase-two construction of the 56-inch gas transmission pipeline from Qom to Parchin.", "Gas transmission pipeline from Iranshahr to Palizan and Khash.", "Construction of the 12-inch gas transmission pipeline from Sarbisheh to Nehbandan.", "Replacement and rehabilitation of the Isfahan to Rey gas transmission pipeline.", "Construction of the 10-inch gas transmission pipeline from Rey to Karaj."}
        Dim i As Integer
        For i = 0 To 7
            Dim pic As String = ProjVal(lang, "proj_pipe", i + 1, "image", fallbacks_fa(i))
            Dim title As String
            Dim yr As String
            Dim txt As String
            If lang = "fa" Then
                title = ProjVal(lang, "proj_pipe", i + 1, "title", titles_fa(i))
                yr = years_fa(i)
                txt = texts_fa(i)
            ElseIf lang = "ar" Then
                title = ProjVal(lang, "proj_pipe", i + 1, "title", titles_ar(i))
                yr = years_ar(i)
                txt = texts_ar(i)
            Else
                title = ProjVal(lang, "proj_pipe", i + 1, "title", titles_en(i))
                yr = years_en(i)
                txt = texts_en(i)
            End If
            Dim employer As String = ProjVal(lang, "proj_pipe", i + 1, "employer", "شرکت ملی گاز ایران")
            If lang = "ar" Then employer = ProjVal(lang, "proj_pipe", i + 1, "employer", "شركة الغاز الوطنية")
            If lang = "en" Then employer = ProjVal(lang, "proj_pipe", i + 1, "employer", "National Iranian Gas Company")
            AppendSlide(html, dateLabel, bossLabel, title, yr, employer, txt, pic, colors(i), i + 1)
        Next
        Return html.ToString()
    End Function

    Public Function BuildingHtml() As String
        Dim lang As String = CultureInfo.CurrentUICulture.TwoLetterISOLanguageName.ToLowerInvariant()
        Dim dateLabel As String = ""
        Dim bossLabel As String = ""
        BindLabels(lang, dateLabel, bossLabel)
        Dim html As New StringBuilder()
        Dim colors() As String = {"#003653", "#00708C", "#0B2D71", "#093A7F", "#003653", "#00708C", "#0B2D71"}
        Dim fallbacks_fa() As String = {"images/buildingAnhar.jpg", "images/buildingAnhar.jpg", "images/buildingAnhar.jpg", "images/buildingAnhar.jpg", "images/buildingAnhar.jpg", "images/buildingAnhar.jpg", "images/buildingAnhar.jpg"}
        Dim titles_fa() As String = {"تأمین مصالح مجتمع پتروشیمی پتروناد آسیا", "کارگاه تعمیرات خور موج و سردشت (EPC)", "اسکلت بتنی پروژه پارس مشهد", "مجتمع اداری شهرداری کوکد", "مجتمع مسکونی ۴۰ واحدی تهران", "بیمارستان گلپایگان", "مدرسه پسرانه اصفهان"}
        Dim years_fa() As String = {"۱۴۰۰", "۱۳۸۸", "۱۳۸۴", "۱۳۷۹", "۱۳۷۸", "۱۳۶۰", "۱۳۵۴"}
        Dim employers_fa() As String = {"پتروشیمی پتروناد آسیا", "شرکت ملی گاز ایران", "پروژه پارس مشهد", "شهرداری کوکد", "کارفرمای خصوصی", "وزارت بهداشت", "آموزش و پرورش"}
        Dim texts_fa() As String = {"تأمین مصالح ساختمانی و سیمان برای احداث مجتمع پتروشیمی پتروناد آسیا.", "احداث کارگاه تعمیرات و نگهداری در خور موج و سردشت.", "اجرای سازه‌های بتنی پروژه پارس مشهد.", "احداث مجتمع اداری شهرداری کوکد.", "احداث مجتمع مسکونی ۴۰ واحدی در تهران.", "احداث بیمارستان در گلپایگان.", "احداث مدرسه پسرانه در اصفهان."}
        Dim titles_ar() As String = {"تزويد مجمع بتروناد آسيا للبتروكيماويات بالمواد الإنشائية", "ورشة التصليح والصيانة في خور موج وسردشت (EPC)", "الهياكل الخرسانية لمشروع بارس مشهد", "مجمع إداري لبلدية كوكد", "مجمع سكني يضم 40 شقة في طهران", "مستشفى في كلبايكان", "مدرسة للبنين في أصفهان"}
        Dim years_ar() As String = {"2021", "2009", "2005", "2000", "1999", "1981", "1975"}
        Dim employers_ar() As String = {"بتروكيمياويات بتروناد آسيا", "شركة الغاز الوطنية", "مشروع بارس مشهد", "بلدية كوكد", "قطاع خاص", "وزارة الصحة", "وزارة التربية"}
        Dim texts_ar() As String = {"توريد المواد الإنشائية والإسمنت لمشروع مجمع بتروناد آسيا.", "بناء ورشة التصليح والصيانة في خور موج وسردشت.", "تنفيذ الهياكل الخرسانية لمشروع بارس مشهد.", "بناء المجمع الإداري لبلدية كوكد.", "بناء مجمع سكني من 40 شقة في طهران.", "بناء مستشفى في كلبايكان.", "بناء مدرسة للبنين في أصفهان."}
        Dim titles_en() As String = {"Construction materials supply for Petronad Asia petrochemical complex", "Khormoj and Sardasht maintenance workshop (EPC)", "Concrete structures, Pars Mashhad project", "Kukad municipality administration complex", "40-unit residential complex in Tehran", "Golpayegan hospital", "Boys school in Isfahan"}
        Dim years_en() As String = {"2021", "2009", "2005", "2000", "1999", "1981", "1975"}
        Dim employers_en() As String = {"Petronad Asia Petrochemical", "National Iranian Gas Company", "Pars Mashhad Project", "Kukad Municipality", "Private client", "Ministry of Health", "Ministry of Education"}
        Dim texts_en() As String = {"Supply of construction materials and cement for the Petronad Asia petrochemical complex.", "Construction of the maintenance workshop in Khormoj and Sardasht.", "Concrete skeleton works for the Pars Mashhad project.", "Construction of the Kukad municipality administration complex.", "Construction of a 40-apartment residential complex in Tehran.", "Construction of a hospital in Golpayegan.", "Construction of a boys school in Isfahan."}
        Dim i As Integer
        For i = 0 To 6
            Dim pic As String = ProjVal(lang, "proj_build", i + 1, "image", fallbacks_fa(i))
            Dim title As String
            Dim yr As String
            Dim emp As String
            Dim txt As String
            If lang = "fa" Then
                title = ProjVal(lang, "proj_build", i + 1, "title", titles_fa(i))
                yr = years_fa(i)
                emp = ProjVal(lang, "proj_build", i + 1, "employer", employers_fa(i))
                txt = texts_fa(i)
            ElseIf lang = "ar" Then
                title = ProjVal(lang, "proj_build", i + 1, "title", titles_ar(i))
                yr = years_ar(i)
                emp = ProjVal(lang, "proj_build", i + 1, "employer", employers_ar(i))
                txt = texts_ar(i)
            Else
                title = ProjVal(lang, "proj_build", i + 1, "title", titles_en(i))
                yr = years_en(i)
                emp = ProjVal(lang, "proj_build", i + 1, "employer", employers_en(i))
                txt = texts_en(i)
            End If
            AppendSlide(html, dateLabel, bossLabel, title, yr, emp, txt, pic, colors(i), i + 1)
        Next
        Return html.ToString()
    End Function

    Public Function FacilitiesHtml() As String
        Dim lang As String = CultureInfo.CurrentUICulture.TwoLetterISOLanguageName.ToLowerInvariant()
        Dim dateLabel As String = ""
        Dim bossLabel As String = ""
        BindLabels(lang, dateLabel, bossLabel)
        Dim html As New StringBuilder()
        Dim colors() As String = {"#003653", "#00708C", "#0B2D71", "#093A7F"}
        Dim fallbacks_fa() As String = {"images/FacilitiesEquipmentAnhar.jpg", "images/FacilitiesEquipmentAnhar.jpg", "images/FacilitiesEquipmentAnhar.jpg", "images/FacilitiesEquipmentAnhar.jpg"}
        Dim titles_fa() As String = {"نگهداری تأسیسات پالایشگاه گاز پارس جنوبی", "تعویض پوشش خط لوله ۲۰ اینچ شاهرود", "ایستگاه تقلیل فشار گاز ماهدشت کرج", "ایستگاه‌های CGS گلپایگان و خمین"}
        Dim years_fa() As String = {"۱۳۹۵", "۱۳۸۵", "۱۳۸۲", "۱۳۶۹"}
        Dim texts_fa() As String = {"اجرای خدمات تعمیر و نگهداری تأسیسات و تجهیزات پالایشگاه گاز پارس جنوبی.", "تعویض پوشش خط لوله گاز ۲۰ اینچ در شاهرود.", "احداث ایستگاه تقلیل فشار گاز در ماهدشت کرج.", "احداث ایستگاه‌های تقلیل فشار گاز CGS در گلپایگان و خمین."}
        Dim titles_ar() As String = {"صيانة أجهزة ومنشآت مصفى بارس الجنوبي", "استبدال خط أنابيب الغاز 20 إنش في شاهرود", "محطة تخفيض ضغط الغاز في ماهدشت كرج", "محطتا CGS في كلبايكان وخمين"}
        Dim years_ar() As String = {"2016", "2006", "2003", "1990"}
        Dim texts_ar() As String = {"تنفيذ أعمال صيانة أجهزة ومنشآت مصفى تكرير الغاز في بارس الجنوبي.", "استبدال تغطية خط أنابيب الغاز 20 إنش في شاهرود.", "تنفيذ مشروع تخفيض ضغط الغاز في منطقة ماهدشت بضواحي كرج.", "تنفيذ مشروع تخفيض ضغط الغاز CGS في مدينتي كلبايكان وخمين."}
        Dim titles_en() As String = {"South Pars gas refinery facilities maintenance", "20-inch pipeline lining replacement, Shahroud", "Mahdasht Karaj gas pressure reduction station", "CGS stations in Golpayegan and Khomein"}
        Dim years_en() As String = {"2016", "2006", "2003", "1990"}
        Dim texts_en() As String = {"Maintenance of facilities and equipment at the South Pars gas refinery.", "Replacement of the 20-inch gas pipeline lining in Shahroud.", "Construction of the gas pressure reduction station in Mahdasht, Karaj.", "Construction of CGS gas pressure reduction stations in Golpayegan and Khomein."}
        Dim i As Integer
        For i = 0 To 3
            Dim pic As String = ProjVal(lang, "proj_fac", i + 1, "image", fallbacks_fa(i))
            Dim title As String
            Dim yr As String
            Dim txt As String
            If lang = "fa" Then
                title = ProjVal(lang, "proj_fac", i + 1, "title", titles_fa(i))
                yr = years_fa(i)
                txt = texts_fa(i)
            ElseIf lang = "ar" Then
                title = ProjVal(lang, "proj_fac", i + 1, "title", titles_ar(i))
                yr = years_ar(i)
                txt = texts_ar(i)
            Else
                title = ProjVal(lang, "proj_fac", i + 1, "title", titles_en(i))
                yr = years_en(i)
                txt = texts_en(i)
            End If
            Dim employer As String = ProjVal(lang, "proj_fac", i + 1, "employer", "شرکت ملی گاز ایران")
            If lang = "ar" Then employer = ProjVal(lang, "proj_fac", i + 1, "employer", "شركة الغاز الوطنية")
            If lang = "en" Then employer = ProjVal(lang, "proj_fac", i + 1, "employer", "National Iranian Gas Company")
            AppendSlide(html, dateLabel, bossLabel, title, yr, employer, txt, pic, colors(i), i + 1)
        Next
        Return html.ToString()
    End Function

    Public Function WaterHtml() As String
        Dim lang As String = CultureInfo.CurrentUICulture.TwoLetterISOLanguageName.ToLowerInvariant()
        Dim dateLabel As String = ""
        Dim bossLabel As String = ""
        BindLabels(lang, dateLabel, bossLabel)
        Dim html As New StringBuilder()
        Dim colors() As String = {"#003653", "#00708C", "#0B2D71"}
        Dim fallbacks_fa() As String = {"images/WaterTransmissionPipelines.jpg", "images/WaterTransmissionPipelines.jpg", "images/WaterTransmissionPipelines.jpg"}
        Dim titles_fa() As String = {"خط لوله انتقال آب دریا (EPC)", "مخزن ۵۰۰۰ مترمکعبی آب دماوند", "پنج مخزن ۲۰۰۰ مترمکعبی سد کرخه"}
        Dim years_fa() As String = {"۱۳۹۸", "۱۳۷۷", "۱۳۷۵"}
        Dim employers_fa() As String = {"کارفرمای طرح انتقال آب", "آبفای استان تهران", "سازمان آب و برق"}
        Dim texts_fa() As String = {"اجرای پروژه احداث و بهره‌برداری خط لوله انتقال آب دریا به روش EPC.", "احداث مخزن ذخیره آب به ظرفیت ۵۰۰۰ مترمکعب در دماوند.", "احداث پنج مخزن ذخیره آب هر یک به ظرفیت ۲۰۰۰ مترمکعب در سد کرخه."}
        Dim titles_ar() As String = {"خط أنابيب مياه البحر (EPC)", "خزان مياه 5000 م3 في دماوند", "خمسة خزانات 2000 م3 في سد كرخه"}
        Dim years_ar() As String = {"2019", "1998", "1996"}
        Dim employers_ar() As String = {"صاحب عمل مشروع نقل المياه", "مياه محافظة طهران", "منظمة المياه والكهرباء"}
        Dim texts_ar() As String = {"تنفيذ واستقدام ومد خط أنابيب مياه البحر بطريقة EPC.", "بناء خزان المياه بسعة 5000 م3 في دماوند.", "بناء 5 خزانات مياه بسعة 2000 م3 في سد كرخه."}
        Dim titles_en() As String = {"Seawater transmission pipeline (EPC)", "5,000 m3 water reservoir in Damavand", "Five 2,000 m3 reservoirs at Karkheh Dam"}
        Dim years_en() As String = {"2019", "1998", "1996"}
        Dim employers_en() As String = {"Water transmission client", "Tehran Water Authority", "Water and Power Organization"}
        Dim texts_en() As String = {"EPC construction and commissioning of the seawater transmission pipeline.", "Construction of a 5,000 cubic-meter water reservoir in Damavand.", "Construction of five 2,000 cubic-meter water reservoirs at Karkheh Dam."}
        Dim i As Integer
        For i = 0 To 2
            Dim pic As String = ProjVal(lang, "proj_water", i + 1, "image", fallbacks_fa(i))
            Dim title As String
            Dim yr As String
            Dim emp As String
            Dim txt As String
            If lang = "fa" Then
                title = ProjVal(lang, "proj_water", i + 1, "title", titles_fa(i))
                yr = years_fa(i)
                emp = ProjVal(lang, "proj_water", i + 1, "employer", employers_fa(i))
                txt = texts_fa(i)
            ElseIf lang = "ar" Then
                title = ProjVal(lang, "proj_water", i + 1, "title", titles_ar(i))
                yr = years_ar(i)
                emp = ProjVal(lang, "proj_water", i + 1, "employer", employers_ar(i))
                txt = texts_ar(i)
            Else
                title = ProjVal(lang, "proj_water", i + 1, "title", titles_en(i))
                yr = years_en(i)
                emp = ProjVal(lang, "proj_water", i + 1, "employer", employers_en(i))
                txt = texts_en(i)
            End If
            AppendSlide(html, dateLabel, bossLabel, title, yr, emp, txt, pic, colors(i), i + 1)
        Next
        Return html.ToString()
    End Function

    Private Sub BindLabels(ByVal lang As String, ByRef dateLabel As String, ByRef bossLabel As String)
        dateLabel = "Project start date : "
        bossLabel = "Employer : "
        If lang = "fa" Then
            dateLabel = "تاریخ شروع پروژه : "
            bossLabel = "کارفرما : "
        ElseIf lang = "ar" Then
            dateLabel = "تاريخ بدء المشروع : "
            bossLabel = "صاحب العمل : "
        End If
    End Sub

    Private Sub AppendSlide(ByVal html As StringBuilder, ByVal dateLabel As String, ByVal bossLabel As String, ByVal title As String, ByVal startDate As String, ByVal boss As String, ByVal text As String, ByVal pic As String, ByVal color As String, ByVal idx As Integer)
        html.Append("<div class='MessageCEO_Box5Container_Project' style='background:")
        html.Append(color)
        html.Append(";'>")
        html.Append("<div class='MessageCEO_inner'><div class='box'>")
        html.Append("<p style='font-size :34pt;font-weight:700;color:#fff;text-align :center ;line-height:65px;'>")
        html.Append(title)
        html.Append("</p><p><i class='fa fa-chevron-right' style='font-size:14pt;color:#fff;margin-right :10px;'></i>")
        html.Append(dateLabel)
        html.Append(startDate)
        html.Append("</p><p><i class='fa fa-chevron-right' style='font-size:14pt;color:#fff;margin-right :10px;'></i>")
        html.Append(bossLabel)
        html.Append(boss)
        html.Append("</p></div><div class='box'><a class='lightbox' data-littlelightbox-group='gallery")
        html.Append(idx.ToString())
        html.Append("' target='_blank' title='")
        html.Append(title.Replace("'", ""))
        html.Append("' href='")
        html.Append(pic)
        html.Append("'><img src='")
        html.Append(pic)
        html.Append("' /></a></div><div class='box'><p style='line-height:45px;'>")
        html.Append(text)
        html.Append("</p></div></div></div>")
    End Sub
End Module
