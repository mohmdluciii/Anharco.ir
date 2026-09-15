Imports System.Data.SqlClient
Public Class InsertToDBNet
    Public Sub InsertString(ByVal oConn As SqlConnection)
        Dim cmd As SqlCommand
        Dim i As Int16
        Dim strFields, strValues As String
        Dim strSQL As String
        For i = 0 To UBound(LstField)
            If LstField.Length = 1 Then
                strFields = "(" & LstField(i) & ")"
                Exit For
            End If
            If i = 0 Then
                strFields = "(" & LstField(i) & ","
            ElseIf i = UBound(LstField) Then
                strFields = strFields & LstField(i) & ")"
            Else
                strFields = strFields & LstField(i) & ","
            End If
        Next
        For i = 0 To UBound(LstValue)
            If LstValue.Length = 1 Then
                strValues = "('" & LstValue(i) & "')"
                Exit For
            End If
            If i = 0 Then
                strValues = "('" & LstValue(i) & "','"
            ElseIf i = UBound(LstValue) Then
                strValues = strValues & LstValue(i) & "')"
            Else
                strValues = strValues & LstValue(i) & "','"
            End If
        Next
        strSQL = "insert into " & TblName
        strSQL = strSQL & strFields
        strSQL = strSQL & " values" & strValues
        cmd = New SqlCommand(strSQL, oConn)
        Try
            If oConn.State = ConnectionState.Closed Then
                oConn.Open()
                cmd.ExecuteNonQuery()
            End If
        Catch e As SqlException
            Throw e
        End Try
    End Sub
    Dim LstField() As String
    Dim LstValue() As String
    Private TblName As String
    Private ListF As String
    Private ListV As String
    Public Property TableName() As String
        Get
            Return TblName
        End Get
        Set(ByVal Value As String)
            TblName = Value
        End Set
    End Property

    Public Property ListFields() As String
        Get
            Return ListF
        End Get
        Set(ByVal Value As String)
            ListF = Value
            LstField = Split(ListF, ",")
        End Set
    End Property
    Public Property ListValues() As String
        Get
            Return ListV
        End Get
        Set(ByVal Value As String)
            ListV = Value
            LstValue = Split(ListV, ",")
        End Set
    End Property

End Class
