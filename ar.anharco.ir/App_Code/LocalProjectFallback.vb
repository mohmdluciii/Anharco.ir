Option Explicit On
Option Strict Off

Imports System.Globalization
Imports System.Text

Public Module LocalProjectFallback
    ' How many extra blank slots each category gets beyond its original,
    ' already-published projects. Filling one of these in from the panel
    ' (giving it a title) is how a brand-new project gets added; leaving
    ' it empty keeps it invisible on the public site.
    Private Const ExtraSlots As Integer = 5

    Private Function ProjVal(ByVal lang As String, ByVal prefix As String, ByVal idx As Integer, ByVal field As String, ByVal fallback As String) As String
        Dim key As String = prefix & idx.ToString() & "_" & field
        Dim v As String = SiteStudioStore.GetValue(lang, key)
        If Not String.IsNullOrEmpty(v) Then
            Return v
        End If
        Return fallback
    End Function

    ' Safe indexed read into one of the fallback arrays below. Slots beyond
    ' the original published count simply have no hardcoded fallback - they
    ' only show whatever the panel sets.
    Private Function SafeArr(ByVal arr() As String, ByVal i As Integer) As String
        If arr Is Nothing OrElse i < 0 OrElse i >= arr.Length Then
            Return ""
        End If
        Return arr(i)
    End Function

    Private Function SafeColor(ByVal arr() As String, ByVal i As Integer) As String
        If arr Is Nothing OrElse arr.Length = 0 Then
            Return "#003653"
        End If
        Return arr(i Mod arr.Length)
    End Function

    ' ===================== gas (تقویت فشار گاز) =====================

    Private Function GasTitles(ByVal lang As String) As String()
        If lang = "fa" Then
            Return New String() {"ایستگاه تقویت و اندازه‌گیری فشار گاز هما (EPCC)", "ایستگاه تقویت و اندازه‌گیری فشار گاز ارسنجان (EPC)", "ایستگاه مکانیکی تقویت فشار گاز نائین (EPC)", "فاز ۱ ایستگاه تقویت فشار گاز نائین", "ایستگاه‌های تقویت فشار گاز دهشیر و ندوشن (EPC)", "ایستگاه تقویت فشار گاز قزوین (PC)", "ایستگاه تقویت فشار گاز پل‌کله"}
        ElseIf lang = "ar" Then
            Return New String() {"محطة تعزيز وقياس ضغط الغاز في حقل هما (EPCC)", "محطة تعزيز وقياس ضغط الغاز في ارسنجان (EPC)", "المحطة الميكانيكية لتعزيز ضغط الغاز في نائين (EPC)", "المرحلة الأولى لمحطة نائين", "محطتا دهشير وندوشن (EPC)", "محطة تعزيز ضغط الغاز في قزوين (PC)", "محطة تعزيز ضغط الغاز في بلّ كله"}
        End If
        Return New String() {"Homa gas pressure boosting and metering station (EPCC)", "Arsanjan gas pressure boosting and metering station (EPC)", "Naein mechanical gas pressure boosting station (EPC)", "Naein gas pressure boosting station - phase 1", "Dehshir and Nadoshan boosting stations (EPC)", "Qazvin gas pressure boosting station (PC)", "Pol-e Kaleh gas pressure boosting station"}
    End Function

    Private Function GasYears(ByVal lang As String) As String()
        If lang = "fa" Then Return New String() {"۱۴۰۰", "۱۳۹۶", "۱۳۹۳", "۱۳۹۳", "۱۳۸۹", "۱۳۸۴", "۱۳۸۰"}
        Return New String() {"2021", "2017", "2014", "2014", "2010", "2005", "2001"}
    End Function

    Private Function GasFallbackImages() As String()
        Return New String() {"Pic_Project/Project_Tghviat_feshar_gaz_homa.jpg", "Pic_Project/Project_Istgah_Tghviat_feshar_arsanjan.jpg", "Pic_Project/Project_Istgah_feshar_gaz_naein.jpg", "Pic_Project/Project_Istgah_feshar_gaz_naein_phaz1.jpg", "Pic_Project/Project_Istgah_Taghviat_Feshar_Dehshir.jpg", "Pic_Project/Tghviat_feshar_gaz_ghazvin.jpg", "Pic_Project/Project_Taghviat_feshar_gaz_polKaleh.jpg"}
    End Function

    Private Function GasConstantEmployer(ByVal lang As String) As String
        If lang = "ar" Then Return "شركة الغاز الوطنية"
        If lang = "en" Then Return "National Iranian Gas Company"
        Return "شرکت ملی گاز ایران"
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
        Dim fallbackImgs() As String = GasFallbackImages()
        Dim titles() As String = GasTitles(lang)
        Dim years() As String = GasYears(lang)
        Dim originalCount As Integer = titles.Length
        Dim i As Integer
        For i = 0 To originalCount - 1 + ExtraSlots
            Dim pic As String = ProjVal(lang, "proj_gas", i + 1, "image", SafeArr(fallbackImgs, i))
            If pic = "" Then pic = fallbackImgs(0)
            Dim title As String = ProjVal(lang, "proj_gas", i + 1, "title", SafeArr(titles, i))
            Dim yr As String = SafeArr(years, i)
            Dim employer As String = ProjVal(lang, "proj_gas", i + 1, "employer", GasConstantEmployer(lang))
            Dim txt As String = ProjVal(lang, "proj_gas", i + 1, "text", "")
            If i >= originalCount AndAlso title = "" Then
                Continue For ' blank extra slot - not filled in from the panel yet
            End If
            AppendSlide(html, dateLabel, bossLabel, title, yr, employer, txt, pic, SafeColor(colors, i), i + 1)
        Next
        Return html.ToString()
    End Function

    ' ===================== pipelines (خطوط لوله) =====================

    Private Function PipeTitles(ByVal lang As String) As String()
        If lang = "fa" Then
            Return New String() {"خط لوله ۲۴ اینچ پروپان و بوتان عسلویه (EPC)", "خط لوله ایستگاه کنترل فشار گاز تلخاب (PC)", "خط لوله ۱۶ اینچ انتقال گاز کل‌کهر (PC)", "خط لوله ۵۶ اینچ قم به پارچین، فاز ۲ (EPC)", "خط لوله ۲۰ و ۱۶ اینچ ایرانشهر به خاش (EPC)", "خط لوله ۱۲ اینچ سربیشه به نهبندان (EPC)", "تعویض خط لوله ۱۸ و ۲۴ اینچ اصفهان به ری (PC)", "خط لوله ۱۰ اینچ ری به کرج (EPC)"}
        ElseIf lang = "ar" Then
            Return New String() {"خط أنابيب 24 إنش للبروبان والبوتان عسلويه (EPC)", "خط أنابيب محطة التحكم بضغط الغاز في تلخاب (PC)", "خط أنابيب 16 إنش نقل الغاز في كل كهر (PC)", "خط أنابيب 56 إنش من قم إلى بارجين، المرحلة الثانية (EPC)", "خط أنابيب 20 و16 إنش من إيرانشهر إلى خاش (EPC)", "خط أنابيب 12 إنش من سربشه إلى نهبندان (EPC)", "استبدال خط أنابيب 18 و24 إنش من أصفهان إلى الري (PC)", "خط أنابيب 10 إنش من الري إلى كرج (EPC)"}
        End If
        Return New String() {"24-inch propane and butane pipeline, Assaluyeh (EPC)", "Talkhab gas pressure control station pipeline (PC)", "16-inch Kal Kahr gas transmission pipeline (PC)", "56-inch Qom to Parchin pipeline, phase 2 (EPC)", "20 and 16-inch Iranshahr to Khash pipeline (EPC)", "12-inch Sarbisheh to Nehbandan pipeline (EPC)", "18 and 24-inch Isfahan to Rey pipeline replacement (PC)", "10-inch Rey to Karaj pipeline (EPC)"}
    End Function

    Private Function PipeYears(ByVal lang As String) As String()
        If lang = "fa" Then Return New String() {"۱۴۰۲", "۱۴۰۲", "۱۴۰۱", "۱۳۹۹", "۱۳۹۸", "۱۳۹۶", "۱۳۹۱", "۱۳۸۷"}
        Return New String() {"2023", "2023", "2022", "2020", "2019", "2017", "2012", "2008"}
    End Function

    Private Function PipeTexts(ByVal lang As String) As String()
        If lang = "fa" Then
            Return New String() {"احداث خط لوله انتقال گاز پروپان و بوتان از پالایشگاه‌های پارس جنوبی تا اسکله‌های صادرات.", "اجرای شبکه خط لوله ایستگاه کنترل فشار گاز تلخاب.", "احداث خط لوله ۱۶ اینچ انتقال گاز در محدوده کل‌کهر.", "اجرای فاز دوم خط لوله ۵۶ اینچ انتقال گاز از قم به پارچین.", "احداث خط لوله انتقال گاز از ایرانشهر به پالیزان و خاش.", "احداث خط لوله ۱۲ اینچ انتقال گاز از سربیشه به نهبندان.", "تعویض پوشش و بازسازی خط لوله انتقال گاز اصفهان به ری.", "احداث خط لوله ۱۰ اینچ انتقال گاز از ری به کرج."}
        ElseIf lang = "ar" Then
            Return New String() {"مد خط أنابيب نقل غاز البروبان والبوتان من مصافي بارس الجنوبي إلى أرصفة التصدير.", "تنفيذ شبكة خط أنابيب محطة التحكم بضغط الغاز في تلخاب.", "مد خط أنابيب 16 إنش لنقل الغاز في منطقة كل كهر.", "تنفيذ المرحلة الثانية لخط أنابيب 56 إنش من قم إلى بارجين.", "مد خط أنابيب نقل الغاز من إيرانشهر إلى باليزان وخاش.", "مد خط أنابيب 12 إنش لنقل الغاز من سربشه إلى نهبندان.", "استبدال وإعادة تأهيل خط أنابيب نقل الغاز من أصفهان إلى الري.", "مد خط أنابيب 10 إنش لنقل الغاز من الري إلى كرج."}
        End If
        Return New String() {"Construction of the propane and butane transmission pipeline from South Pars refineries to export jetties.", "Pipeline network for the Talkhab gas pressure control station.", "Construction of the 16-inch gas transmission pipeline in Kal Kahr.", "Phase-two construction of the 56-inch gas transmission pipeline from Qom to Parchin.", "Gas transmission pipeline from Iranshahr to Palizan and Khash.", "Construction of the 12-inch gas transmission pipeline from Sarbisheh to Nehbandan.", "Replacement and rehabilitation of the Isfahan to Rey gas transmission pipeline.", "Construction of the 10-inch gas transmission pipeline from Rey to Karaj."}
    End Function

    Private Function PipeFallbackImages() As String()
        Return New String() {"images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg", "images/pipelinesAnhar.jpg"}
    End Function

    Public Function PipelinesHtml() As String
        Dim lang As String = CultureInfo.CurrentUICulture.TwoLetterISOLanguageName.ToLowerInvariant()
        Dim dateLabel As String = ""
        Dim bossLabel As String = ""
        BindLabels(lang, dateLabel, bossLabel)
        Dim html As New StringBuilder()
        Dim colors() As String = {"#003653", "#00708C", "#0B2D71", "#093A7F", "#003653", "#00708C", "#0B2D71", "#093A7F"}
        Dim fallbackImgs() As String = PipeFallbackImages()
        Dim titles() As String = PipeTitles(lang)
        Dim years() As String = PipeYears(lang)
        Dim texts() As String = PipeTexts(lang)
        Dim originalCount As Integer = titles.Length
        Dim i As Integer
        For i = 0 To originalCount - 1 + ExtraSlots
            Dim pic As String = ProjVal(lang, "proj_pipe", i + 1, "image", SafeArr(fallbackImgs, i))
            If pic = "" Then pic = fallbackImgs(0)
            Dim title As String = ProjVal(lang, "proj_pipe", i + 1, "title", SafeArr(titles, i))
            Dim yr As String = SafeArr(years, i)
            Dim txt As String = ProjVal(lang, "proj_pipe", i + 1, "text", SafeArr(texts, i))
            Dim employer As String = ProjVal(lang, "proj_pipe", i + 1, "employer", GasConstantEmployer(lang))
            If i >= originalCount AndAlso title = "" Then
                Continue For
            End If
            AppendSlide(html, dateLabel, bossLabel, title, yr, employer, txt, pic, SafeColor(colors, i), i + 1)
        Next
        Return html.ToString()
    End Function

    ' ===================== building (ابنیه و ساختمان) =====================

    Private Function BuildTitles(ByVal lang As String) As String()
        If lang = "fa" Then
            Return New String() {"تأمین مصالح مجتمع پتروشیمی پتروناد آسیا", "کارگاه تعمیرات خور موج و سردشت (EPC)", "اسکلت بتنی پروژه پارس مشهد", "مجتمع اداری شهرداری کوکد", "مجتمع مسکونی ۴۰ واحدی تهران", "بیمارستان گلپایگان", "مدرسه پسرانه اصفهان"}
        ElseIf lang = "ar" Then
            Return New String() {"تزويد مجمع بتروناد آسيا للبتروكيماويات بالمواد الإنشائية", "ورشة التصليح والصيانة في خور موج وسردشت (EPC)", "الهياكل الخرسانية لمشروع بارس مشهد", "مجمع إداري لبلدية كوكد", "مجمع سكني يضم 40 شقة في طهران", "مستشفى في كلبايكان", "مدرسة للبنين في أصفهان"}
        End If
        Return New String() {"Construction materials supply for Petronad Asia petrochemical complex", "Khormoj and Sardasht maintenance workshop (EPC)", "Concrete structures, Pars Mashhad project", "Kukad municipality administration complex", "40-unit residential complex in Tehran", "Golpayegan hospital", "Boys school in Isfahan"}
    End Function

    Private Function BuildYears(ByVal lang As String) As String()
        If lang = "fa" Then Return New String() {"۱۴۰۰", "۱۳۸۸", "۱۳۸۴", "۱۳۷۹", "۱۳۷۸", "۱۳۶۰", "۱۳۵۴"}
        Return New String() {"2021", "2009", "2005", "2000", "1999", "1981", "1975"}
    End Function

    Private Function BuildEmployers(ByVal lang As String) As String()
        If lang = "fa" Then
            Return New String() {"پتروشیمی پتروناد آسیا", "شرکت ملی گاز ایران", "پروژه پارس مشهد", "شهرداری کوکد", "کارفرمای خصوصی", "وزارت بهداشت", "آموزش و پرورش"}
        ElseIf lang = "ar" Then
            Return New String() {"بتروكيمياويات بتروناد آسيا", "شركة الغاز الوطنية", "مشروع بارس مشهد", "بلدية كوكد", "قطاع خاص", "وزارة الصحة", "وزارة التربية"}
        End If
        Return New String() {"Petronad Asia Petrochemical", "National Iranian Gas Company", "Pars Mashhad Project", "Kukad Municipality", "Private client", "Ministry of Health", "Ministry of Education"}
    End Function

    Private Function BuildTexts(ByVal lang As String) As String()
        If lang = "fa" Then
            Return New String() {"تأمین مصالح ساختمانی و سیمان برای احداث مجتمع پتروشیمی پتروناد آسیا.", "احداث کارگاه تعمیرات و نگهداری در خور موج و سردشت.", "اجرای سازه‌های بتنی پروژه پارس مشهد.", "احداث مجتمع اداری شهرداری کوکد.", "احداث مجتمع مسکونی ۴۰ واحدی در تهران.", "احداث بیمارستان در گلپایگان.", "احداث مدرسه پسرانه در اصفهان."}
        ElseIf lang = "ar" Then
            Return New String() {"توريد المواد الإنشائية والإسمنت لمشروع مجمع بتروناد آسيا.", "بناء ورشة التصليح والصيانة في خور موج وسردشت.", "تنفيذ الهياكل الخرسانية لمشروع بارس مشهد.", "بناء المجمع الإداري لبلدية كوكد.", "بناء مجمع سكني من 40 شقة في طهران.", "بناء مستشفى في كلبايكان.", "بناء مدرسة للبنين في أصفهان."}
        End If
        Return New String() {"Supply of construction materials and cement for the Petronad Asia petrochemical complex.", "Construction of the maintenance workshop in Khormoj and Sardasht.", "Concrete skeleton works for the Pars Mashhad project.", "Construction of the Kukad municipality administration complex.", "Construction of a 40-apartment residential complex in Tehran.", "Construction of a hospital in Golpayegan.", "Construction of a boys school in Isfahan."}
    End Function

    Private Function BuildFallbackImages() As String()
        Return New String() {"images/buildingAnhar.jpg", "images/buildingAnhar.jpg", "images/buildingAnhar.jpg", "images/buildingAnhar.jpg", "images/buildingAnhar.jpg", "images/buildingAnhar.jpg", "images/buildingAnhar.jpg"}
    End Function

    Public Function BuildingHtml() As String
        Dim lang As String = CultureInfo.CurrentUICulture.TwoLetterISOLanguageName.ToLowerInvariant()
        Dim dateLabel As String = ""
        Dim bossLabel As String = ""
        BindLabels(lang, dateLabel, bossLabel)
        Dim html As New StringBuilder()
        Dim colors() As String = {"#003653", "#00708C", "#0B2D71", "#093A7F", "#003653", "#00708C", "#0B2D71"}
        Dim fallbackImgs() As String = BuildFallbackImages()
        Dim titles() As String = BuildTitles(lang)
        Dim years() As String = BuildYears(lang)
        Dim employers() As String = BuildEmployers(lang)
        Dim texts() As String = BuildTexts(lang)
        Dim originalCount As Integer = titles.Length
        Dim i As Integer
        For i = 0 To originalCount - 1 + ExtraSlots
            Dim pic As String = ProjVal(lang, "proj_build", i + 1, "image", SafeArr(fallbackImgs, i))
            If pic = "" Then pic = fallbackImgs(0)
            Dim title As String = ProjVal(lang, "proj_build", i + 1, "title", SafeArr(titles, i))
            Dim yr As String = SafeArr(years, i)
            Dim emp As String = ProjVal(lang, "proj_build", i + 1, "employer", SafeArr(employers, i))
            Dim txt As String = ProjVal(lang, "proj_build", i + 1, "text", SafeArr(texts, i))
            If i >= originalCount AndAlso title = "" Then
                Continue For
            End If
            AppendSlide(html, dateLabel, bossLabel, title, yr, emp, txt, pic, SafeColor(colors, i), i + 1)
        Next
        Return html.ToString()
    End Function

    ' ===================== facilities (تاسیسات و تجهیزات) =====================

    Private Function FacTitles(ByVal lang As String) As String()
        If lang = "fa" Then
            Return New String() {"نگهداری تأسیسات پالایشگاه گاز پارس جنوبی", "تعویض پوشش خط لوله ۲۰ اینچ شاهرود", "ایستگاه تقلیل فشار گاز ماهدشت کرج", "ایستگاه‌های CGS گلپایگان و خمین"}
        ElseIf lang = "ar" Then
            Return New String() {"صيانة أجهزة ومنشآت مصفى بارس الجنوبي", "استبدال خط أنابيب الغاز 20 إنش في شاهرود", "محطة تخفيض ضغط الغاز في ماهدشت كرج", "محطتا CGS في كلبايكان وخمين"}
        End If
        Return New String() {"South Pars gas refinery facilities maintenance", "20-inch pipeline lining replacement, Shahroud", "Mahdasht Karaj gas pressure reduction station", "CGS stations in Golpayegan and Khomein"}
    End Function

    Private Function FacYears(ByVal lang As String) As String()
        If lang = "fa" Then Return New String() {"۱۳۹۵", "۱۳۸۵", "۱۳۸۲", "۱۳۶۹"}
        Return New String() {"2016", "2006", "2003", "1990"}
    End Function

    Private Function FacTexts(ByVal lang As String) As String()
        If lang = "fa" Then
            Return New String() {"اجرای خدمات تعمیر و نگهداری تأسیسات و تجهیزات پالایشگاه گاز پارس جنوبی.", "تعویض پوشش خط لوله گاز ۲۰ اینچ در شاهرود.", "احداث ایستگاه تقلیل فشار گاز در ماهدشت کرج.", "احداث ایستگاه‌های تقلیل فشار گاز CGS در گلپایگان و خمین."}
        ElseIf lang = "ar" Then
            Return New String() {"تنفيذ أعمال صيانة أجهزة ومنشآت مصفى تكرير الغاز في بارس الجنوبي.", "استبدال تغطية خط أنابيب الغاز 20 إنش في شاهرود.", "تنفيذ مشروع تخفيض ضغط الغاز في منطقة ماهدشت بضواحي كرج.", "تنفيذ مشروع تخفيض ضغط الغاز CGS في مدينتي كلبايكان وخمين."}
        End If
        Return New String() {"Maintenance of facilities and equipment at the South Pars gas refinery.", "Replacement of the 20-inch gas pipeline lining in Shahroud.", "Construction of the gas pressure reduction station in Mahdasht, Karaj.", "Construction of CGS gas pressure reduction stations in Golpayegan and Khomein."}
    End Function

    Private Function FacFallbackImages() As String()
        Return New String() {"images/FacilitiesEquipmentAnhar.jpg", "images/FacilitiesEquipmentAnhar.jpg", "images/FacilitiesEquipmentAnhar.jpg", "images/FacilitiesEquipmentAnhar.jpg"}
    End Function

    Public Function FacilitiesHtml() As String
        Dim lang As String = CultureInfo.CurrentUICulture.TwoLetterISOLanguageName.ToLowerInvariant()
        Dim dateLabel As String = ""
        Dim bossLabel As String = ""
        BindLabels(lang, dateLabel, bossLabel)
        Dim html As New StringBuilder()
        Dim colors() As String = {"#003653", "#00708C", "#0B2D71", "#093A7F"}
        Dim fallbackImgs() As String = FacFallbackImages()
        Dim titles() As String = FacTitles(lang)
        Dim years() As String = FacYears(lang)
        Dim texts() As String = FacTexts(lang)
        Dim originalCount As Integer = titles.Length
        Dim i As Integer
        For i = 0 To originalCount - 1 + ExtraSlots
            Dim pic As String = ProjVal(lang, "proj_fac", i + 1, "image", SafeArr(fallbackImgs, i))
            If pic = "" Then pic = fallbackImgs(0)
            Dim title As String = ProjVal(lang, "proj_fac", i + 1, "title", SafeArr(titles, i))
            Dim yr As String = SafeArr(years, i)
            Dim txt As String = ProjVal(lang, "proj_fac", i + 1, "text", SafeArr(texts, i))
            Dim employer As String = ProjVal(lang, "proj_fac", i + 1, "employer", GasConstantEmployer(lang))
            If i >= originalCount AndAlso title = "" Then
                Continue For
            End If
            AppendSlide(html, dateLabel, bossLabel, title, yr, employer, txt, pic, SafeColor(colors, i), i + 1)
        Next
        Return html.ToString()
    End Function

    ' ===================== water (خطوط انتقال آب) =====================

    Private Function WaterTitles(ByVal lang As String) As String()
        If lang = "fa" Then
            Return New String() {"خط لوله انتقال آب دریا (EPC)", "مخزن ۵۰۰۰ مترمکعبی آب دماوند", "پنج مخزن ۲۰۰۰ مترمکعبی سد کرخه"}
        ElseIf lang = "ar" Then
            Return New String() {"خط أنابيب مياه البحر (EPC)", "خزان مياه 5000 م3 في دماوند", "خمسة خزانات 2000 م3 في سد كرخه"}
        End If
        Return New String() {"Seawater transmission pipeline (EPC)", "5,000 m3 water reservoir in Damavand", "Five 2,000 m3 reservoirs at Karkheh Dam"}
    End Function

    Private Function WaterYears(ByVal lang As String) As String()
        If lang = "fa" Then Return New String() {"۱۳۹۸", "۱۳۷۷", "۱۳۷۵"}
        Return New String() {"2019", "1998", "1996"}
    End Function

    Private Function WaterEmployers(ByVal lang As String) As String()
        If lang = "fa" Then
            Return New String() {"کارفرمای طرح انتقال آب", "آبفای استان تهران", "سازمان آب و برق"}
        ElseIf lang = "ar" Then
            Return New String() {"صاحب عمل مشروع نقل المياه", "مياه محافظة طهران", "منظمة المياه والكهرباء"}
        End If
        Return New String() {"Water transmission client", "Tehran Water Authority", "Water and Power Organization"}
    End Function

    Private Function WaterTexts(ByVal lang As String) As String()
        If lang = "fa" Then
            Return New String() {"اجرای پروژه احداث و بهره‌برداری خط لوله انتقال آب دریا به روش EPC.", "احداث مخزن ذخیره آب به ظرفیت ۵۰۰۰ مترمکعب در دماوند.", "احداث پنج مخزن ذخیره آب هر یک به ظرفیت ۲۰۰۰ مترمکعب در سد کرخه."}
        ElseIf lang = "ar" Then
            Return New String() {"تنفيذ واستقدام ومد خط أنابيب مياه البحر بطريقة EPC.", "بناء خزان المياه بسعة 5000 م3 في دماوند.", "بناء 5 خزانات مياه بسعة 2000 م3 في سد كرخه."}
        End If
        Return New String() {"EPC construction and commissioning of the seawater transmission pipeline.", "Construction of a 5,000 cubic-meter water reservoir in Damavand.", "Construction of five 2,000 cubic-meter water reservoirs at Karkheh Dam."}
    End Function

    Private Function WaterFallbackImages() As String()
        Return New String() {"images/WaterTransmissionPipelines.jpg", "images/WaterTransmissionPipelines.jpg", "images/WaterTransmissionPipelines.jpg"}
    End Function

    Public Function WaterHtml() As String
        Dim lang As String = CultureInfo.CurrentUICulture.TwoLetterISOLanguageName.ToLowerInvariant()
        Dim dateLabel As String = ""
        Dim bossLabel As String = ""
        BindLabels(lang, dateLabel, bossLabel)
        Dim html As New StringBuilder()
        Dim colors() As String = {"#003653", "#00708C", "#0B2D71"}
        Dim fallbackImgs() As String = WaterFallbackImages()
        Dim titles() As String = WaterTitles(lang)
        Dim years() As String = WaterYears(lang)
        Dim employers() As String = WaterEmployers(lang)
        Dim texts() As String = WaterTexts(lang)
        Dim originalCount As Integer = titles.Length
        Dim i As Integer
        For i = 0 To originalCount - 1 + ExtraSlots
            Dim pic As String = ProjVal(lang, "proj_water", i + 1, "image", SafeArr(fallbackImgs, i))
            If pic = "" Then pic = fallbackImgs(0)
            Dim title As String = ProjVal(lang, "proj_water", i + 1, "title", SafeArr(titles, i))
            Dim yr As String = SafeArr(years, i)
            Dim emp As String = ProjVal(lang, "proj_water", i + 1, "employer", SafeArr(employers, i))
            Dim txt As String = ProjVal(lang, "proj_water", i + 1, "text", SafeArr(texts, i))
            If i >= originalCount AndAlso title = "" Then
                Continue For
            End If
            AppendSlide(html, dateLabel, bossLabel, title, yr, emp, txt, pic, SafeColor(colors, i), i + 1)
        Next
        Return html.ToString()
    End Function

    ' ===================== shared helpers =====================

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
        html.Append("</p>")
        If startDate <> "" Then
            html.Append("<p><i class='fa fa-chevron-right' style='font-size:14pt;color:#fff;margin-right :10px;'></i>")
            html.Append(dateLabel)
            html.Append(startDate)
            html.Append("</p>")
        End If
        If boss <> "" Then
            html.Append("<p><i class='fa fa-chevron-right' style='font-size:14pt;color:#fff;margin-right :10px;'></i>")
            html.Append(bossLabel)
            html.Append(boss)
            html.Append("</p>")
        End If
        html.Append("</div><div class='box'><a class='lightbox' data-littlelightbox-group='gallery")
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

    ' ===================== lookups for the admin panel's edit form =====================
    ' These let SiteStudioEdit.aspx show the REAL current title/employer/text/image of
    ' an existing project (even though it still comes from the hardcoded arrays above and
    ' not yet from the panel's own storage) instead of a misleading blank field. For a
    ' slot beyond the category's original count they correctly return "" (brand new,
    ' still-empty slot).

    Public Function OriginalCountFor(ByVal cat As String) As Integer
        If cat = "gas" Then Return GasTitles("fa").Length
        If cat = "pipe" Then Return PipeTitles("fa").Length
        If cat = "build" Then Return BuildTitles("fa").Length
        If cat = "fac" Then Return FacTitles("fa").Length
        If cat = "water" Then Return WaterTitles("fa").Length
        Return 0
    End Function

    Public Function DefaultTitle(ByVal cat As String, ByVal idx As Integer, ByVal lang As String) As String
        Dim i As Integer = idx - 1
        If cat = "gas" Then Return SafeArr(GasTitles(lang), i)
        If cat = "pipe" Then Return SafeArr(PipeTitles(lang), i)
        If cat = "build" Then Return SafeArr(BuildTitles(lang), i)
        If cat = "fac" Then Return SafeArr(FacTitles(lang), i)
        If cat = "water" Then Return SafeArr(WaterTitles(lang), i)
        Return ""
    End Function

    Public Function DefaultEmployer(ByVal cat As String, ByVal idx As Integer, ByVal lang As String) As String
        Dim i As Integer = idx - 1
        If cat = "gas" OrElse cat = "pipe" OrElse cat = "fac" Then
            If idx >= 1 AndAlso idx <= OriginalCountFor(cat) Then
                Return GasConstantEmployer(lang)
            End If
            Return ""
        End If
        If cat = "build" Then Return SafeArr(BuildEmployers(lang), i)
        If cat = "water" Then Return SafeArr(WaterEmployers(lang), i)
        Return ""
    End Function

    Public Function DefaultText(ByVal cat As String, ByVal idx As Integer, ByVal lang As String) As String
        Dim i As Integer = idx - 1
        If cat = "gas" Then Return "" ' gas projects never had a description field
        If cat = "pipe" Then Return SafeArr(PipeTexts(lang), i)
        If cat = "build" Then Return SafeArr(BuildTexts(lang), i)
        If cat = "fac" Then Return SafeArr(FacTexts(lang), i)
        If cat = "water" Then Return SafeArr(WaterTexts(lang), i)
        Return ""
    End Function

    Public Function DefaultImage(ByVal cat As String, ByVal idx As Integer) As String
        Dim i As Integer = idx - 1
        If cat = "gas" Then Return SafeArr(GasFallbackImages(), i)
        If cat = "pipe" Then Return SafeArr(PipeFallbackImages(), i)
        If cat = "build" Then Return SafeArr(BuildFallbackImages(), i)
        If cat = "fac" Then Return SafeArr(FacFallbackImages(), i)
        If cat = "water" Then Return SafeArr(WaterFallbackImages(), i)
        Return ""
    End Function
End Module
