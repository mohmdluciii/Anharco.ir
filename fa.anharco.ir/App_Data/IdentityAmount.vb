Public Class IdentityAmount
    Private tableName_Interface As String
    Private fieldKey_Interface As String
    Public Property tableName()
        Get
            Return tableName_Interface
        End Get
        Set(ByVal value)
            tableName_Interface = value
        End Set
    End Property
    Public Property fieldKey() As String
        Get
            Return fieldKey_Interface
        End Get
        Set(ByVal value As String)
            fieldKey_Interface = value
        End Set
    End Property
    Public Function fetchAmountKey() As Double
        Dim c As New ConnectionClass
        Dim str As String
        str = "select top 1 " & fieldKey_Interface & " from " & tableName_Interface
        str = str & " order by " & fieldKey_Interface & " desc "
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            fetchAmountKey = CDbl(c.rs.Fields(fieldKey_Interface).Value) + 1
        Else
            fetchAmountKey = 1
        End If
        c.DisConnectOfDB()
    End Function
End Class
