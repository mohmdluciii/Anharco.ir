Option Explicit On
Option Strict Off

Public Module LocalAcknowledgmentFallback
    Public Function Count() As Integer
        Return 12
    End Function

    Public Function Image(ByVal index As Integer) As String
        If index = 6 Then
            Return "images/AcknowledgmentsAnhar6.png"
        End If
        Return "images/AcknowledgmentsAnhar" & index & ".jpg"
    End Function

    Public Function Title(ByVal index As Integer, ByVal lang As String) As String
        lang = Normalize(lang)
        If lang = "fa" Then
            Select Case index
                Case 1 : Return "تقدیرنامه خط لوله محمدیه قم به پارچین"
                Case 2 : Return "تقدیرنامه پروژه یارد آباده"
                Case 3 : Return "گواهی حسن انجام کار ایستگاه‌های پل‌کله و قزوین"
                Case 4 : Return "تقدیرنامه ۲ ستاره تعالی سازمانی"
                Case 5 : Return "تقدیرنامه خط لوله ایرانشهر خاش پالیزان"
                Case 6 : Return "تقدیرنامه خط لوله ایرانشهر خاش پالیزان میرجاوه"
                Case 7 : Return "تقدیرنامه ایستگاه تقویت فشار گاز نائین"
                Case 8 : Return "لوح سپاس گازرسانی ماهدشت"
                Case 9 : Return "رضایت‌نامه تعویض خطوط اصفهان / ری"
                Case 10 : Return "تقدیرنامه EPC ایستگاه‌های دهشیر و نائین"
                Case 11 : Return "تقدیرنامه EPC تاسیسات تقویت فشار گاز نائین"
                Case 12 : Return "رضایت‌نامه خط لوله ری / کرج و منتظر قائم"
            End Select
        ElseIf lang = "ar" Then
            Select Case index
                Case 1 : Return "شهادة تقدير خط أنابيب محمدية قم إلى بارشين"
                Case 2 : Return "شهادة تقدير مشروع ساحة آباده"
                Case 3 : Return "شهادة حسن أداء محطتي بل كله وقزوين"
                Case 4 : Return "شهادة نجمتين للتميز التنظيمي"
                Case 5 : Return "شهادة تقدير خط أنابيب إيرانشهر خاش باليزان"
                Case 6 : Return "شهادة تقدير خط أنابيب إيرانشهر خاش باليزان ميرجاوه"
                Case 7 : Return "شهادة تقدير محطة تعزيز ضغط غاز نائين"
                Case 8 : Return "لوحة شكر لتغويز ماهدشت"
                Case 9 : Return "شهادة رضا عن استبدال خطوط أصفهان / ري"
                Case 10 : Return "شهادة تقدير EPC لمحطتي دهشير ونائين"
                Case 11 : Return "شهادة تقدير EPC لمنشآت تعزيز ضغط غاز نائين"
                Case 12 : Return "شهادة رضا خط أنابيب ري / كرج ومنتظر قائم"
            End Select
        Else
            Select Case index
                Case 1 : Return "Letter of appreciation — Qom to Parchin pipeline"
                Case 2 : Return "Letter of appreciation — Abadeh yard"
                Case 3 : Return "Performance certificate — Pol-e Kaleh and Qazvin stations"
                Case 4 : Return "2-star organizational excellence certificate"
                Case 5 : Return "Letter of appreciation — Iranshahr Khash Palizan pipeline"
                Case 6 : Return "Letter of appreciation — Iranshahr Khash Palizan Mirjaveh pipeline"
                Case 7 : Return "Letter of appreciation — Naein gas booster station"
                Case 8 : Return "Tablet of appreciation — Mahdasht gas supply"
                Case 9 : Return "Satisfaction letter — Isfahan / Rey pipeline replacement"
                Case 10 : Return "Letter of appreciation — Dehshir and Naein EPC stations"
                Case 11 : Return "Letter of appreciation — Naein gas booster EPC"
                Case 12 : Return "Satisfaction letter — Rey / Karaj and Montazer Ghaem pipeline"
            End Select
        End If
        Return "Acknowledgment " & index
    End Function

    Public Function Summary(ByVal index As Integer, ByVal lang As String) As String
        lang = Normalize(lang)
        If lang = "fa" Then
            Select Case index
                Case 1 : Return "شرکت ملی گاز ایران"
                Case 2 : Return "شرکت مهندسی و توسعه گاز ایران"
                Case 3 : Return "شرکت مهندسی و توسعه گاز ایران"
                Case 4 : Return "مرکز تعالی سازمانی / سازمان مدیریت صنعتی"
                Case 5 : Return "شرکت ملی گاز ایران"
                Case 6 : Return "شرکت ملی گاز ایران"
                Case 7 : Return "شرکت مهندسی و توسعه گاز ایران"
                Case 8 : Return "شهرداری، شورا و امام جمعه ماهدشت"
                Case 9 : Return "شرکت خطوط لوله و مخابرات نفت ایران"
                Case 10 : Return "شرکت مهندسی و توسعه گاز ایران"
                Case 11 : Return "شرکت مهندسی و توسعه گاز ایران"
                Case 12 : Return "شرکت خطوط لوله و مخابرات نفت ایران"
            End Select
        ElseIf lang = "ar" Then
            Select Case index
                Case 4 : Return "مركز التميز التنظيمي / منظمة الإدارة الصناعية"
                Case 8 : Return "بلدية ماهدشت والمجلس وإمام الجمعة"
                Case 9 : Return "شركة خطوط الأنابيب والاتصالات النفطية الإيرانية"
                Case 12 : Return "شركة خطوط الأنابيب والاتصالات النفطية الإيرانية"
                Case Else : Return "الشركات والمنظمات العاملة في النفط والغاز"
            End Select
        Else
            Select Case index
                Case 4 : Return "Center for Organizational Excellence / Industrial Management Institute"
                Case 8 : Return "Mahdasht municipality, council and Friday Imam"
                Case 9 : Return "Iranian Oil Pipelines and Telecommunication Company"
                Case 12 : Return "Iranian Oil Pipelines and Telecommunication Company"
                Case Else : Return "Oil and gas employers and organizations"
            End Select
        End If
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