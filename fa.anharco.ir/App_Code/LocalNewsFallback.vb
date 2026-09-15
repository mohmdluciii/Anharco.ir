Option Explicit On
Option Strict Off

Public Module LocalNewsFallback
    Public Function Count() As Integer
        Return 6
    End Function

    Public Function Title(ByVal index As Integer, ByVal lang As String) As String
        lang = Norm(lang)
        If lang = "fa" Then
            Select Case index
                Case 1 : Return "شروع پروژه خط لوله انتقال گاز"
                Case 2 : Return "افتتاح ایستگاه تقویت فشار گاز"
                Case 3 : Return "دریافت گواهینامه سیستم مدیریت یکپارچه"
                Case 4 : Return "حضور در نمایشگاه صنعت نفت"
                Case 5 : Return "تکمیل پروژه ابنیه و ساختمان"
                Case 6 : Return "توسعه همکاری های بین المللی"
            End Select
        ElseIf lang = "ar" Then
            Select Case index
                Case 1 : Return "بدء مشروع خط أنابيب نقل الغاز"
                Case 2 : Return "افتتاح محطة تعزيز ضغط الغاز"
                Case 3 : Return "الحصول على شهادة نظام الإدارة المتکامل"
                Case 4 : Return "المشارکة في معرض صناعة النفط"
                Case 5 : Return "إنجاز مشروع البناء والإعمار"
                Case 6 : Return "توسعة التعاون الدولي"
            End Select
        Else
            Select Case index
                Case 1 : Return "Gas transmission pipeline project launched"
                Case 2 : Return "Gas pressure boosting station opened"
                Case 3 : Return "IMS certificate obtained"
                Case 4 : Return "Presence at the oil industry exhibition"
                Case 5 : Return "Construction project completed"
                Case 6 : Return "International cooperation expanded"
            End Select
        End If
        Return "News " & index
    End Function

    Public Function Summary(ByVal index As Integer, ByVal lang As String) As String
        lang = Norm(lang)
        If lang = "fa" Then
            Return "آخرین خبرهای شرکت انهار در حوزه نفت، گاز و پروژه های EPC."
        ElseIf lang = "ar" Then
            Return "آخر أخبار شركة أنهار في مجال النفط والغاز ومشاريع EPC."
        End If
        Return "Latest Anhar news in oil, gas and EPC projects."
    End Function

    Public Function DateText(ByVal index As Integer, ByVal lang As String) As String
        lang = Norm(lang)
        If lang = "fa" Then
            Return "1405/0" & index & "/12"
        End If
        Return "2026-0" & index & "-12"
    End Function

    Private Function Norm(ByVal lang As String) As String
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
