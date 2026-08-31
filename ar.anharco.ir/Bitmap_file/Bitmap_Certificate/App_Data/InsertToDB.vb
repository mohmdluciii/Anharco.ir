Public Class InsertToDB
    Private lFields
    Private lValues
    Private tName
    Public Property ListFields() As String
        Get
            Return lFields
        End Get
        Set(ByVal value As String)
            lFields = value
        End Set
    End Property
    Public Property ListValues() As String
        Get
            Return lValues
        End Get
        Set(ByVal value As String)
            lValues = value
        End Set
    End Property
    Public Property TableName() As String
        Get
            Return tName
        End Get
        Set(ByVal value As String)
            tName = value
        End Set
    End Property
	
    Public Function InsertToDb()
        Dim aryListFields() As String
        Dim aryListValues() As String
        Dim str As String
        Dim i As Integer
        aryListFields = Split(lFields, ",")
        aryListValues = Split(lValues, ",")
        Str = "insert into " & tName
        For i = 0 To UBound(aryListFields)
            If i = 0 Then
                str = str & "(" & aryListFields(i)
            Else
                str = str & "," & aryListFields(i)
            End If
        Next
        str = str & ")"
        For i = 0 To UBound(aryListValues)
            If i = 0 Then
                str = str & " values('" & aryListValues(i)
            Else
                str = str & "','" & aryListValues(i)
            End If
        Next
        str = str & "')"
        InsertToDb = str
    End Function
End Class
