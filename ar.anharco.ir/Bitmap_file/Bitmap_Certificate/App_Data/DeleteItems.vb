Module DeleteItems
    Public Sub Delete_Record(ByVal tableName As String, ByVal FieldName_Pk As String, ByVal amountField_Pk As Integer)
        Dim c As New ConnectionClass
        Dim str As String
        str = "Delete from " & tableName
        str = str & " where " & FieldName_Pk & "=" & amountField_Pk
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        c.DisConnectOfDB()
    End Sub

End Module
