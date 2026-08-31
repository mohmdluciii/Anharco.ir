Public Class DeleteDB
    Dim tb As String
    Dim con As String
    Public Event DeleteRec()
    Public Property tableName() As String
        Get
            Return tb
        End Get
        Set(ByVal value As String)
            tb = value
        End Set
    End Property



    Public Property Condition() As String
        Get
            Return con
        End Get
        Set(ByVal value As String)
            con = value
        End Set
    End Property

    Public Function DeleteStr() As String
        RaiseEvent DeleteRec()
        Dim str As String
        str = "delete from " & tb
        str = str & " where " & con
        DeleteStr = str
        Exit Function
    End Function
End Class
