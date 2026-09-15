Module MdlSubDate
    Public Function subDate(ByVal date1, ByVal date2)
        On Error Resume Next
        Dim y1, y2
        Dim m1, m2
        Dim d1
        Dim d2
        Dim myAry1
        Dim myAry2
        Dim Y, m, d

        myAry1 = Split(date1, "/")
        myAry2 = Split(date2, "/")
        y1 = myAry1(0)
        y2 = myAry2(0)

        m1 = myAry1(1)
        If InStr(m1, "/") <> 0 Then m1 = Left(m1, 1)

        m2 = myAry2(1)
        If InStr(m2, "/") <> 0 Then m2 = Left(m2, 1)

        d1 = myAry1(2)
        If InStr(d1, "/") <> 0 Then d1 = Right(d1, 1)

        d2 = myAry2(2)
        If InStr(d2, "/") <> 0 Then d2 = Right(d2, 1)

        Y = (y2 - y1) * 365
        If m1 > 6 Then
            m1 = (6 * 31) + (m1 - 6) * 30
        Else
            m1 = m1 * 31
        End If

        If m2 > 6 Then
            m2 = (6 * 31) + (m2 - 6) * 30
        Else
            m2 = m2 * 31
        End If

        subDate = Y + (m2 - m1) + (d2 - d1)

        If err.number > 0 Then
        End If
    End Function
End Module
