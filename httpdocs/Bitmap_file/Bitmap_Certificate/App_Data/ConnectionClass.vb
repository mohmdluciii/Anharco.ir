Public Class ConnectionClass
    Enum myE As Integer
        Dynamic = 2
        ForwardOnly = 0
        [static] = 1
        keySet = 3
    End Enum
    Public db As New ADODB.Connection
    Public rs As New ADODB.Recordset
    Private StrConn As String
    Public Property ConnectionString() As String
        Get
            Return StrConn
        End Get
        Set(ByVal value As String)
            StrConn = value
        End Set
    End Property

    Public Sub ConnectToDB()
        On Error Resume Next
        StrConn = "Provider=SQLOLEDB.1;" & ConfigurationManager.ConnectionStrings("Bargh_MantagheiConnectionString").ConnectionString
        db.Open(StrConn)
        Exit Sub

    End Sub

    Public Sub DisConnectOfDB()
        On Error Resume Next
        db.Close()
        db = Nothing
        Exit Sub

    End Sub

    Public Sub OpenRecordSet(ByVal strSQL As String, ByVal cursor_amount As myE)
        'On Error Resume Next
        If cursor_amount = myE.Dynamic Then
            rs.Open(strSQL, db, ADODB.CursorTypeEnum.adOpenStatic)
        Else
            rs.Open(strSQL, db, cursor_amount)
        End If

        Exit Sub
        'ErrorLBL:
        'mdlError.shower
    End Sub

    Public Function CheckRecordset() As Boolean
        If rs.EOF And rs.BOF Then
            CheckRecordset = False
        Else
            CheckRecordset = True
        End If
    End Function
End Class
