Imports System.Data.SqlClient
Public Class DeleteOfDB
    Private tblName As String
    Private conStr As String
    Public Sub DeletedStr(ByVal oConn As SqlConnection)
        Dim cmd As SqlCommand
        Dim strSQL As String
        strSQL = "Delete From " & tblName
        strSQL = strSQL & " where " & conStr
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
    Public Property TableName() As String
        Get
            Return tblName
        End Get
        Set(ByVal Value As String)
            tblName = Value
        End Set
    End Property
    Public Property ConditionStr() As String
        Get
            Return conStr
        End Get
        Set(ByVal Value As String)
            conStr = Value
        End Set
    End Property
End Class
