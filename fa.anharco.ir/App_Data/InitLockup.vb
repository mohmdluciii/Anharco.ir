Imports System.Data.SqlClient
Public Class InitLockup
    Public Function initCombo(ByVal cmb As DropDownList, ByVal oConn As SqlConnection, ByVal strSQL As String)
        Dim sel As SelectOfDB
        Dim dr As SqlDataReader
        Dim SList As New SortedList
        sel = New SelectOfDB
        dr = sel.FetchRec(oConn, strSQL)
        SList.Add("--------------", 0)
        While dr.Read
            SList.Add(dr.GetString(1), dr.GetInt32(0))
        End While
        cmb.DataSource = SList.Keys
        cmb.DataBind()
        dr.Close()
        Return SList
    End Function
End Class
