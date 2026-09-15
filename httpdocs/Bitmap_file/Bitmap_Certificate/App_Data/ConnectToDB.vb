Imports System
Imports System.Data
Imports System.Data.SqlClient
Public Class ConnectToDB
    Dim conStr As String
    Public db As SqlConnection
    Public Property StrConn() As String
        Get
            Return conStr
        End Get
        Set(ByVal Value As String)
            conStr = Value
            Try
                db = New SqlConnection(Value)
            Catch er As SqlException
                Throw er
            End Try
        End Set
    End Property
End Class
