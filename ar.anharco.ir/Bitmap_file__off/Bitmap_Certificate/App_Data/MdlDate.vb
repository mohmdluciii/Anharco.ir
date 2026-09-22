Public Class MdlDate
    Public Function convertorDate(ByVal d As Date) As String
        Dim Sal, Mah, Ruz As String
        Dim pc As New Globalization.PersianCalendar()

        Sal = pc.GetYear(d)
        Mah = pc.GetMonth(d)
        Ruz = pc.GetDayOfMonth(d)
        If Len(Mah) = 1 Then
            Mah = "0" & Mah
        End If
        If Len(Ruz) = 1 Then
            Ruz = "0" & Ruz
        End If
        convertorDate = Sal & "/" & Mah & "/" & Ruz

    End Function
    Public Function convertorDate_Higri(ByVal d As String) As String
        Dim d1 As Date = convert_ShamsiToMilady(d)
        Dim Sal, Mah, Ruz As String
        Dim pc As New Globalization.HijriCalendar

        Sal = pc.GetYear(d1)
        Mah = pc.GetMonth(d1)
        Ruz = Int(pc.GetDayOfMonth(d1))
        If Len(Mah) = 1 Then
            Mah = "0" & Mah
        End If
        If Len(Ruz) = 1 Then
            Ruz = "0" & Ruz
        End If
        convertorDate_Higri = Sal & "/" & Mah & "/" & Ruz

    End Function
    Public Function convert_ShamsiToMilady(ByVal amount_date As String) As Date
        On Error Resume Next
        Dim pc As New Globalization.PersianCalendar()
        Dim myAry() As String
        myAry = Split(amount_date, "/")
        convert_ShamsiToMilady = pc.ToDateTime(Int(myAry(0)), Int(myAry(1)), Int(myAry(2)), 0, 0, 0, 0)
    End Function
End Class
