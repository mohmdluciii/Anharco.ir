Option Explicit On
Option Strict Off

Public Module LocalCertificateFallback
    Public Function Count() As Integer
        Return 9
    End Function

    Public Function Image(ByVal index As Integer) As String
        Return "images/CertificatesAnhar" & index & ".jpg"
    End Function

    Public Function Title(ByVal index As Integer, ByVal lang As String) As String
        lang = Normalize(lang)
        If lang = "fa" Then
            Select Case index
                Case 1 : Return "گواهینامه صلاحیت پیمانکاری"
                Case 2 : Return "گواهینامه مدیریت جوش ISO 3834-2:2021"
                Case 3 : Return "رتبه‌بندی صلاحیت پیمانکاری"
                Case 4 : Return "گواهینامه صلاحیت ایمنی پیمانکاران"
                Case 5 : Return "مجوز ایمنی امور پیمانکاری منطقه ویژه پارس"
                Case 6 : Return "ISO 9001:2015 سیستم مدیریت کیفیت"
                Case 7 : Return "ISO 45001:2018 ایمنی و بهداشت شغلی"
                Case 8 : Return "ISO 29001 سیستم مدیریت کیفیت نفت و گاز"
                Case 9 : Return "سیستم مدیریت HSE از SGS"
            End Select
        ElseIf lang = "ar" Then
            Select Case index
                Case 1 : Return "شهادة أهلية المقاولات"
                Case 2 : Return "شهادة إدارة اللحام ISO 3834-2:2021"
                Case 3 : Return "تصنيف أهلية المقاولات"
                Case 4 : Return "شهادة أهلية السلامة للمقاولين"
                Case 5 : Return "رخصة السلامة لمنطقة بارس الاقتصادية"
                Case 6 : Return "ISO 9001:2015 نظام إدارة الجودة"
                Case 7 : Return "ISO 45001:2018 السلامة والصحة المهنية"
                Case 8 : Return "ISO 29001 نظام إدارة الجودة للنفط والغاز"
                Case 9 : Return "نظام إدارة HSE من SGS"
            End Select
        Else
            Select Case index
                Case 1 : Return "Contractor qualification certificate"
                Case 2 : Return "Welding management certificate ISO 3834-2:2021"
                Case 3 : Return "Contractor qualification grades"
                Case 4 : Return "Contractors safety qualification certificate"
                Case 5 : Return "PSEEZ contractors safety license"
                Case 6 : Return "ISO 9001:2015 quality management"
                Case 7 : Return "ISO 45001:2018 occupational health and safety"
                Case 8 : Return "ISO 29001 oil and gas quality management"
                Case 9 : Return "HSE management system from SGS"
            End Select
        End If
        Return "Certificate " & index
    End Function

    Public Function Summary(ByVal index As Integer, ByVal lang As String) As String
        lang = Normalize(lang)
        If lang = "fa" Then
            Select Case index
                Case 1 : Return "سازمان برنامه و بودجه کشور"
                Case 2 : Return "SGS Iran — کیفیت جوشکاری خطوط لوله"
                Case 3 : Return "نفت و گاز، ابنیه، تاسیسات، آب، راه و صنعت"
                Case 4 : Return "وزارت تعاون، کار و رفاه اجتماعی"
                Case 5 : Return "سازمان منطقه ویژه اقتصادی انرژی پارس"
                Case 6 : Return "SGS — طراحی، تأمین، اجرا و مدیریت پروژه"
                Case 7 : Return "SGS — سیستم مدیریت ایمنی و بهداشت شغلی"
                Case 8 : Return "AVA BRSM — پروژه‌های نفت، گاز و پتروشیمی"
                Case 9 : Return "SGS Iran — سیستم مدیریت HSE"
            End Select
        ElseIf lang = "ar" Then
            Select Case index
                Case 1 : Return "منظمة التخطيط والميزانية"
                Case 2 : Return "SGS Iran — جودة لحام خطوط الأنابيب"
                Case 3 : Return "النفط والغاز والمباني والمنشآت"
                Case 4 : Return "وزارة التعاون والعمل والرعاية الاجتماعية"
                Case 5 : Return "المنطقة الاقتصادية الخاصة لطاقة بارس"
                Case 6 : Return "SGS — التصميم والتوريد والتنفيذ"
                Case 7 : Return "SGS — نظام إدارة السلامة والصحة"
                Case 8 : Return "AVA BRSM — مشاريع النفط والغاز"
                Case 9 : Return "SGS Iran — نظام إدارة HSE"
            End Select
        Else
            Select Case index
                Case 1 : Return "Plan and Budget Organization of Iran"
                Case 2 : Return "SGS Iran — pipeline welding quality"
                Case 3 : Return "Oil and gas, construction, facilities, water, roads and industry"
                Case 4 : Return "Ministry of Cooperatives, Labour and Social Welfare"
                Case 5 : Return "Pars Special Economic Energy Zone"
                Case 6 : Return "SGS — design, supply, execution and project management"
                Case 7 : Return "SGS — occupational health and safety"
                Case 8 : Return "AVA BRSM — oil, gas and petrochemical projects"
                Case 9 : Return "SGS Iran — HSE management system"
            End Select
        End If
        Return ""
    End Function

    Public Function Html(ByVal lang As String) As String
        Return SiteStudioStore.CertificatesHtml(lang)
    End Function

    Private Function Normalize(ByVal lang As String) As String
        If lang Is Nothing Then
            Return "en"
        End If
        lang = lang.Trim().ToLowerInvariant()
        If lang = "fa" OrElse lang = "ar" Then
            Return lang
        End If
        Return "en"
    End Function
End Module