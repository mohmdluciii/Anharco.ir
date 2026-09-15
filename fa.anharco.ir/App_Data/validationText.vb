Module validationText
    Public Function validNumber(ByVal k As Integer) As Integer
        If k < 46 Or k > 58 Then
            If k <> 32 And k <> 8 And k <> 13 And k <> 46 Then
                If k >= 96 And k <= 105 Then
                    validNumber = k
                Else
                    validNumber = 0
                End If
            Else
                validNumber = k
            End If
        Else
            validNumber = k
        End If
    End Function
    Public Function setValidFormat(ByVal Input_Str As String) As String
        Dim amount_Temp As String = Input_Str
        amount_Temp = Replace(amount_Temp, "EXEC", "")
        amount_Temp = Replace(amount_Temp, "eXEC", "")
        amount_Temp = Replace(amount_Temp, "ExEC", "")
        amount_Temp = Replace(amount_Temp, "EXeC", "")
        amount_Temp = Replace(amount_Temp, "EXEc", "")
        amount_Temp = Replace(amount_Temp, "exEC", "")
        amount_Temp = Replace(amount_Temp, "eXeC", "")
        amount_Temp = Replace(amount_Temp, "eXEc", "")
        amount_Temp = Replace(amount_Temp, "ExeC", "")
        amount_Temp = Replace(amount_Temp, "ExEc", "")
        amount_Temp = Replace(amount_Temp, "EXec", "")
        amount_Temp = Replace(amount_Temp, "exeC", "")
        amount_Temp = Replace(amount_Temp, "exEc", "")
        amount_Temp = Replace(amount_Temp, "Exec", "")
        amount_Temp = Replace(amount_Temp, "exec", "")
        amount_Temp = Replace(amount_Temp, "CAST", "")
        amount_Temp = Replace(amount_Temp, "CaST", "")
        amount_Temp = Replace(amount_Temp, "CAsT", "")
        amount_Temp = Replace(amount_Temp, "CASt", "")
        amount_Temp = Replace(amount_Temp, "cAST", "")
        amount_Temp = Replace(amount_Temp, "caST", "")
        amount_Temp = Replace(amount_Temp, "cAsT", "")
        amount_Temp = Replace(amount_Temp, "cASt", "")
        amount_Temp = Replace(amount_Temp, "CasT", "")
        amount_Temp = Replace(amount_Temp, "CaSt", "")
        amount_Temp = Replace(amount_Temp, "CAst", "")
        amount_Temp = Replace(amount_Temp, "casT", "")
        amount_Temp = Replace(amount_Temp, "caSt", "")
        amount_Temp = Replace(amount_Temp, "Cast", "")
        amount_Temp = Replace(amount_Temp, "cast", "")
        amount_Temp = Replace(amount_Temp, "SET ", "")
        amount_Temp = Replace(amount_Temp, "SeT ", "")
        amount_Temp = Replace(amount_Temp, "SEt ", "")
        amount_Temp = Replace(amount_Temp, "sET ", "")
        amount_Temp = Replace(amount_Temp, "SEt ", "")
        amount_Temp = Replace(amount_Temp, "SeT ", "")
        amount_Temp = Replace(amount_Temp, "SeT ", "")
        amount_Temp = Replace(amount_Temp, "set ", "")
        amount_Temp = Replace(amount_Temp, "<script", "")
        amount_Temp = Replace(amount_Temp, "<Script", "")
        amount_Temp = Replace(amount_Temp, "<SCript", "")
        amount_Temp = Replace(amount_Temp, "<SCRipt", "")
        amount_Temp = Replace(amount_Temp, "<SCRIpt", "")
        amount_Temp = Replace(amount_Temp, "<SCRIPt", "")
        amount_Temp = Replace(amount_Temp, "<SCRIPT", "")
        amount_Temp = Replace(amount_Temp, "--", "")
        amount_Temp = Replace(amount_Temp, "'", "")
        amount_Temp = Replace(amount_Temp, ",", "")
        amount_Temp = Replace(amount_Temp, "Update", "")
        amount_Temp = Replace(amount_Temp, "UPdate", "")
        amount_Temp = Replace(amount_Temp, "UPDate", "")
        amount_Temp = Replace(amount_Temp, "UPDAte", "")
        amount_Temp = Replace(amount_Temp, "UPDATe", "")
        amount_Temp = Replace(amount_Temp, "UPDATE", "")
        amount_Temp = Replace(amount_Temp, "update", "")
        amount_Temp = Replace(amount_Temp, "ك", "ک")
        amount_Temp = Replace(amount_Temp, "۱", "1")
        amount_Temp = Replace(amount_Temp, "۲", "2")
        amount_Temp = Replace(amount_Temp, "۳", "3")
        amount_Temp = Replace(amount_Temp, "۴", "4")
        amount_Temp = Replace(amount_Temp, "۵", "5")
        amount_Temp = Replace(amount_Temp, "۶", "6")
        amount_Temp = Replace(amount_Temp, "۷", "7")
        amount_Temp = Replace(amount_Temp, "۸", "8")
        amount_Temp = Replace(amount_Temp, "۹", "9")
        amount_Temp = Replace(amount_Temp, "۰", "0")
        amount_Temp = Replace(amount_Temp, "٬", "،")
        amount_Temp = Replace(amount_Temp, "٪", "%")


        setValidFormat = amount_Temp
    End Function
    Public Function setValidFormat_EditorObject(ByVal Input_Str As String) As String
        Dim amount_Temp As String = Input_Str
        amount_Temp = Replace(amount_Temp, "EXEC", "")
        amount_Temp = Replace(amount_Temp, "eXEC", "")
        amount_Temp = Replace(amount_Temp, "ExEC", "")
        amount_Temp = Replace(amount_Temp, "EXeC", "")
        amount_Temp = Replace(amount_Temp, "EXEc", "")
        amount_Temp = Replace(amount_Temp, "exEC", "")
        amount_Temp = Replace(amount_Temp, "eXeC", "")
        amount_Temp = Replace(amount_Temp, "eXEc", "")
        amount_Temp = Replace(amount_Temp, "ExeC", "")
        amount_Temp = Replace(amount_Temp, "ExEc", "")
        amount_Temp = Replace(amount_Temp, "EXec", "")
        amount_Temp = Replace(amount_Temp, "exeC", "")
        amount_Temp = Replace(amount_Temp, "exEc", "")
        amount_Temp = Replace(amount_Temp, "Exec", "")
        amount_Temp = Replace(amount_Temp, "exec", "")
        amount_Temp = Replace(amount_Temp, "CAST", "")
        amount_Temp = Replace(amount_Temp, "CaST", "")
        amount_Temp = Replace(amount_Temp, "CAsT", "")
        amount_Temp = Replace(amount_Temp, "CASt", "")
        amount_Temp = Replace(amount_Temp, "cAST", "")
        amount_Temp = Replace(amount_Temp, "caST", "")
        amount_Temp = Replace(amount_Temp, "cAsT", "")
        amount_Temp = Replace(amount_Temp, "cASt", "")
        amount_Temp = Replace(amount_Temp, "CasT", "")
        amount_Temp = Replace(amount_Temp, "CaSt", "")
        amount_Temp = Replace(amount_Temp, "CAst", "")
        amount_Temp = Replace(amount_Temp, "casT", "")
        amount_Temp = Replace(amount_Temp, "caSt", "")
        amount_Temp = Replace(amount_Temp, "Cast", "")
        amount_Temp = Replace(amount_Temp, "cast", "")
        amount_Temp = Replace(amount_Temp, "SET ", "")
        amount_Temp = Replace(amount_Temp, "SeT ", "")
        amount_Temp = Replace(amount_Temp, "SEt ", "")
        amount_Temp = Replace(amount_Temp, "sET ", "")
        amount_Temp = Replace(amount_Temp, "SEt ", "")
        amount_Temp = Replace(amount_Temp, "SeT ", "")
        amount_Temp = Replace(amount_Temp, "SeT ", "")
        amount_Temp = Replace(amount_Temp, "set ", "")
        amount_Temp = Replace(amount_Temp, "<script", "")
        amount_Temp = Replace(amount_Temp, "<Script", "")
        amount_Temp = Replace(amount_Temp, "<SCript", "")
        amount_Temp = Replace(amount_Temp, "<SCRipt", "")
        amount_Temp = Replace(amount_Temp, "<SCRIpt", "")
        amount_Temp = Replace(amount_Temp, "<SCRIPt", "")
        amount_Temp = Replace(amount_Temp, "<SCRIPT", "")
        amount_Temp = Replace(amount_Temp, "--", "")
        amount_Temp = Replace(amount_Temp, "'", "")
        amount_Temp = Replace(amount_Temp, ",", "|")
        amount_Temp = Replace(amount_Temp, "Update", "")
        amount_Temp = Replace(amount_Temp, "UPdate", "")
        amount_Temp = Replace(amount_Temp, "UPDate", "")
        amount_Temp = Replace(amount_Temp, "UPDAte", "")
        amount_Temp = Replace(amount_Temp, "UPDATe", "")
        amount_Temp = Replace(amount_Temp, "UPDATE", "")
        amount_Temp = Replace(amount_Temp, "update", "")
        amount_Temp = Replace(amount_Temp, "update", "")
        amount_Temp = Replace(amount_Temp, "ك", "ک")

        amount_Temp = Replace(amount_Temp, "۱", "1")
        amount_Temp = Replace(amount_Temp, "۲", "2")
        amount_Temp = Replace(amount_Temp, "۳", "3")
        amount_Temp = Replace(amount_Temp, "۴", "4")
        amount_Temp = Replace(amount_Temp, "۵", "5")
        amount_Temp = Replace(amount_Temp, "۶", "6")
        amount_Temp = Replace(amount_Temp, "۷", "7")
        amount_Temp = Replace(amount_Temp, "۸", "8")
        amount_Temp = Replace(amount_Temp, "۹", "9")
        amount_Temp = Replace(amount_Temp, "۰", "0")
        amount_Temp = Replace(amount_Temp, "٬", "،")
        amount_Temp = Replace(amount_Temp, "٪", "%")

        setValidFormat_EditorObject = amount_Temp
    End Function
    Public Function validate_DateFormat(ByVal amount_Date As String) As Boolean
        Dim myAry() As String
        validate_DateFormat = True
        If amount_Date <> "" Then
            If Len(Trim(amount_Date)) <> 10 Then
                validate_DateFormat = False
                Exit Function
            End If
            If InStr(amount_Date, "/") = 0 Then
                validate_DateFormat = False
                Exit Function
            End If
            myAry = Split(amount_Date, "/")
            If IsNumeric(myAry(0)) = False Or IsNumeric(myAry(1)) = False Or IsNumeric(myAry(2)) = False Then
                validate_DateFormat = False
                Exit Function
            End If
            If myAry(1) > 12 Then
                validate_DateFormat = False
                Exit Function
            End If
            If myAry(2) > 31 Then
                validate_DateFormat = False
                Exit Function
            End If
            If (myAry(1) >= 7 And myAry(1) <= 12) And myAry(2) > 30 Then
                validate_DateFormat = False
                Exit Function
            End If
        End If
    End Function
    Public Function check_InvalidString(ByVal amount_Str As String) As Boolean
        check_InvalidString = True
        If IsNumeric(amount_Str) = False Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " dtproperties ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " syscolumns ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " syscomments ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysdepends ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysfilegroups ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysfiles ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysfiles1 ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysforeignkeys ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysfulltextcatalogs ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysfulltextnotify ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysindexes ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysindexkeys ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysmembers ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysobjects ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " syspermissions ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysproperties ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysprotects ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysreferences ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " systypes ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " sysusers ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " select ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " insert ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " update ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " delete ") > 0 Then
            check_InvalidString = False
        End If

        If InStr(LCase(amount_Str), " or ") > 0 Then
            check_InvalidString = False
        End If

        If InStr(LCase(amount_Str), " = ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " and ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " or ") > 0 Then
            check_InvalidString = False
        End If

        If InStr(LCase(amount_Str), " is ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " null ") > 0 Then
            check_InvalidString = False
        End If

        If InStr(LCase(amount_Str), " from ") > 0 Then
            check_InvalidString = False
        End If

        If InStr(LCase(amount_Str), " count ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " * ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " like ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " % ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " ; ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " DROP ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " \ ") > 0 Then
            check_InvalidString = False
        End If
        If InStr(LCase(amount_Str), " $ ") > 0 Then
            check_InvalidString = False
        End If

    End Function
    Public Function check_InvalidString_SQLString(ByVal amount_Str As String) As Boolean
        check_InvalidString_SQLString = True

        If InStr(LCase(amount_Str), " dtproperties ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " syscolumns ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " syscomments ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysdepends ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysfilegroups ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysfiles ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysfiles1 ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysforeignkeys ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysfulltextcatalogs ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysfulltextnotify ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysindexes ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysindexkeys ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysmembers ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysobjects ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " syspermissions ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysproperties ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysprotects ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysreferences ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " systypes ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " sysusers ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " select ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " insert ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " update ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " delete ") > 0 Then
            check_InvalidString_SQLString = False
        End If

        If InStr(LCase(amount_Str), " or ") > 0 Then
            check_InvalidString_SQLString = False
        End If

        If InStr(LCase(amount_Str), "=") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " and ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " or ") > 0 Then
            check_InvalidString_SQLString = False
        End If

        If InStr(LCase(amount_Str), " is ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " null ") > 0 Then
            check_InvalidString_SQLString = False
        End If

        If InStr(LCase(amount_Str), " from ") > 0 Then
            check_InvalidString_SQLString = False
        End If

        If InStr(LCase(amount_Str), " count ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " * ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " like ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " % ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " ; ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " DROP ") > 0 Then
            check_InvalidString_SQLString = False
        End If
        If InStr(LCase(amount_Str), " \ ") > 0 Then
            check_InvalidString_SQLString = False
        End If


    End Function

    Public Function setValid_InputString(ByVal Input_Str As String) As String
        Dim amount_Temp As String = Input_Str
        amount_Temp = Replace(amount_Temp, "EXEC", "")
        amount_Temp = Replace(amount_Temp, "eXEC", "")
        amount_Temp = Replace(amount_Temp, "ExEC", "")
        amount_Temp = Replace(amount_Temp, "EXeC", "")
        amount_Temp = Replace(amount_Temp, "EXEc", "")
        amount_Temp = Replace(amount_Temp, "exEC", "")
        amount_Temp = Replace(amount_Temp, "eXeC", "")
        amount_Temp = Replace(amount_Temp, "eXEc", "")
        amount_Temp = Replace(amount_Temp, "ExeC", "")
        amount_Temp = Replace(amount_Temp, "ExEc", "")
        amount_Temp = Replace(amount_Temp, "EXec", "")
        amount_Temp = Replace(amount_Temp, "exeC", "")
        amount_Temp = Replace(amount_Temp, "exEc", "")
        amount_Temp = Replace(amount_Temp, "Exec", "")
        amount_Temp = Replace(amount_Temp, "exec", "")
        amount_Temp = Replace(amount_Temp, "CAST", "")
        amount_Temp = Replace(amount_Temp, "CaST", "")
        amount_Temp = Replace(amount_Temp, "CAsT", "")
        amount_Temp = Replace(amount_Temp, "CASt", "")
        amount_Temp = Replace(amount_Temp, "cAST", "")
        amount_Temp = Replace(amount_Temp, "caST", "")
        amount_Temp = Replace(amount_Temp, "cAsT", "")
        amount_Temp = Replace(amount_Temp, "cASt", "")
        amount_Temp = Replace(amount_Temp, "CasT", "")
        amount_Temp = Replace(amount_Temp, "CaSt", "")
        amount_Temp = Replace(amount_Temp, "CAst", "")
        amount_Temp = Replace(amount_Temp, "casT", "")
        amount_Temp = Replace(amount_Temp, "caSt", "")
        amount_Temp = Replace(amount_Temp, "Cast", "")
        amount_Temp = Replace(amount_Temp, "cast", "")
        amount_Temp = Replace(amount_Temp, "SET ", "")
        amount_Temp = Replace(amount_Temp, "SeT ", "")
        amount_Temp = Replace(amount_Temp, "SEt ", "")
        amount_Temp = Replace(amount_Temp, "sET ", "")
        amount_Temp = Replace(amount_Temp, "SEt ", "")
        amount_Temp = Replace(amount_Temp, "SeT ", "")
        amount_Temp = Replace(amount_Temp, "SeT ", "")
        amount_Temp = Replace(amount_Temp, "set ", "")
        amount_Temp = Replace(amount_Temp, "<script", "")
        amount_Temp = Replace(amount_Temp, "<Script", "")
        amount_Temp = Replace(amount_Temp, "<SCript", "")
        amount_Temp = Replace(amount_Temp, "<SCRipt", "")
        amount_Temp = Replace(amount_Temp, "<SCRIpt", "")
        amount_Temp = Replace(amount_Temp, "<SCRIPt", "")
        amount_Temp = Replace(amount_Temp, "<SCRIPT", "")
        amount_Temp = Replace(amount_Temp, "--", "")
        amount_Temp = Replace(amount_Temp, "'", "")
        amount_Temp = Replace(amount_Temp, ",", "")
        amount_Temp = Replace(amount_Temp, "Update", "")
        amount_Temp = Replace(amount_Temp, "UPdate", "")
        amount_Temp = Replace(amount_Temp, "UPDate", "")
        amount_Temp = Replace(amount_Temp, "UPDAte", "")
        amount_Temp = Replace(amount_Temp, "UPDATe", "")
        amount_Temp = Replace(amount_Temp, "UPDATE", "")
        amount_Temp = Replace(amount_Temp, "update", "")
        amount_Temp = Replace(amount_Temp, " ", "")
        amount_Temp = Replace(LCase(amount_Temp), "drop", "")
        amount_Temp = Replace(LCase(amount_Temp), "delete", "")
        amount_Temp = Replace(amount_Temp, "ك", "ک")
        setValid_InputString = amount_Temp
    End Function

    Dim ary_per_Asc(100) As Integer
    Private Sub init_Ary_Persian()
        ary_per_Asc(0) = 218
        ary_per_Asc(1) = 229
        ary_per_Asc(2) = 206
        ary_per_Asc(3) = 205
        ary_per_Asc(4) = 204
        ary_per_Asc(5) = 141
        ary_per_Asc(6) = 212
        ary_per_Asc(7) = 211
        ary_per_Asc(8) = 237
        ary_per_Asc(9) = 200
        ary_per_Asc(10) = 225
        ary_per_Asc(11) = 199
        ary_per_Asc(12) = 202
        ary_per_Asc(13) = 228
        ary_per_Asc(14) = 227
        ary_per_Asc(15) = 152
        ary_per_Asc(16) = 144
        ary_per_Asc(17) = 129
        ary_per_Asc(18) = 217
        ary_per_Asc(19) = 216
        ary_per_Asc(20) = 210
        ary_per_Asc(21) = 209
        ary_per_Asc(22) = 208
        ary_per_Asc(23) = 207
        ary_per_Asc(24) = 198
        ary_per_Asc(25) = 230
        ary_per_Asc(26) = 237
        ary_per_Asc(27) = 142

    End Sub
    Public Function check_In_Persian_Asc(ByVal amount As String) As Boolean
        init_Ary_Persian()
        check_In_Persian_Asc = False
        For i = 0 To 27
            If Int(Asc(amount)) = ary_per_Asc(i) Then
                check_In_Persian_Asc = True
                Exit Function
            End If
        Next
    End Function
End Module
