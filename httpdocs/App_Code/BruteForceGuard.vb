Option Explicit On
Option Strict Off

Imports System.Collections.Generic
Imports System.Web

''' <summary>
''' In-memory brute-force guard for login pages.
''' Limits failed attempts per IP to 5 per 15-minute window.
''' For production use a persistent store (Redis, DB, file) instead of a static dictionary.
''' </summary>
Public Module BruteForceGuard
    Private ReadOnly _attempts As New Dictionary(Of String, AttemptInfo)()
    Private ReadOnly _lock As New Object()

    Private Class AttemptInfo
        Public Count As Integer
        Public WindowStart As DateTime
    End Class

    ''' <summary>
    ''' Returns True if the IP is allowed to try logging in.
    ''' </summary>
    Public Function IsAllowed(ByVal ip As String) As Boolean
        SyncLock _lock
            Dim info As AttemptInfo = Nothing
            If _attempts.TryGetValue(ip, info) Then
                If DateTime.UtcNow.Subtract(info.WindowStart).TotalMinutes > 15 Then
                    _attempts.Remove(ip)
                    Return True
                End If
                Return info.Count < 5
            End If
            Return True
        End SyncLock
    End Function

    ''' <summary>
    ''' Record a failed attempt.
    ''' </summary>
    Public Sub RecordFailure(ByVal ip As String)
        SyncLock _lock
            Dim info As AttemptInfo = Nothing
            If Not _attempts.TryGetValue(ip, info) Then
                info = New AttemptInfo() With { .Count = 0, .WindowStart = DateTime.UtcNow }
                _attempts(ip) = info
            End If
            If DateTime.UtcNow.Subtract(info.WindowStart).TotalMinutes > 15 Then
                info.Count = 0
                info.WindowStart = DateTime.UtcNow
            End If
            info.Count += 1
        End SyncLock
    End Sub

    ''' <summary>
    ''' Reset after successful login.
    ''' </summary>
    Public Sub ClearFailures(ByVal ip As String)
        SyncLock _lock
            _attempts.Remove(ip)
        End SyncLock
    End Sub

    ''' <summary>
    ''' Returns remaining seconds the IP must wait, or 0 if allowed.
    ''' </summary>
    Public Function WaitSeconds(ByVal ip As String) As Integer
        SyncLock _lock
            Dim info As AttemptInfo = Nothing
            If _attempts.TryGetValue(ip, info) Then
                If DateTime.UtcNow.Subtract(info.WindowStart).TotalMinutes > 15 Then
                    _attempts.Remove(ip)
                    Return 0
                End If
                If info.Count >= 5 Then
                    Dim elapsed As Double = DateTime.UtcNow.Subtract(info.WindowStart).TotalSeconds
                    Dim remaining As Integer = CInt(Math.Max(0, 900 - elapsed))
                    Return remaining
                End If
            End If
            Return 0
        End SyncLock
    End Function
End Module
