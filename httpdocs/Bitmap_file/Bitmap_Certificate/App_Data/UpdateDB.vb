Public Class UpdateDB
    Dim strFields As String
    Dim con As String
    Dim tb As String
    Public Event Update()

    Public Property FiledsForUpdate() As String
        Get
            Return strFields
        End Get
        Set(ByVal value As String)
            strFields = value
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

    Public Property tableName() As String
        Get
            Return tb
        End Get
        Set(ByVal value As String)
            tb = value
        End Set
    End Property


    Public Function updateStr() As String
        RaiseEvent Update()
        Dim str As String
        str = "update " & tb & " set "
        str = str & strFields
        str = str & " where "
        str = str & con
        updateStr = str
    End Function

End Class
