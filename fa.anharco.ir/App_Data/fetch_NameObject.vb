Public Class fetch_NameObject
    Private nameTable_Interface As String
    Private nameFieldFind_InterFace As String
    Private nameFieldIndex_InterFace As String
    Private valueFieldIndex_Interface As String
    Public Property nameTable() As String
        Get
            nameTable = nameTable_Interface
        End Get
        Set(ByVal value As String)
            nameTable_Interface = value
        End Set
    End Property
    Public Property nameFieldFind() As String
        Get
            nameFieldFind = nameFieldFind_InterFace
        End Get
        Set(ByVal value As String)
            nameFieldFind_InterFace = value
        End Set
    End Property
    Public Property nameFieldIndex() As String
        Get
            nameFieldIndex = nameFieldIndex_InterFace
        End Get
        Set(ByVal value As String)
            nameFieldIndex_InterFace = value
        End Set
    End Property
    Public Property valueFieldIndex() As String
        Get
            valueFieldIndex = valueFieldIndex_Interface
        End Get
        Set(ByVal value As String)
            valueFieldIndex_Interface = value
        End Set
    End Property
    Public Function fetch_AmountField() As String
        Dim c As New ConnectionClass
        Dim str As String
        str = "select " & nameFieldIndex_InterFace & "," & nameFieldFind_InterFace & " from " & nameTable_Interface
        str = str & " where " & nameFieldIndex_InterFace & "='" & valueFieldIndex_Interface & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            fetch_AmountField = c.rs.Fields(1).Value
        Else
            fetch_AmountField = ""
        End If
        c.DisConnectOfDB()
    End Function
End Class
