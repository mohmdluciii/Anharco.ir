Public Class FillComboBox
    Dim c As New ConnectionClass
    Dim i_Fill As Integer
    Public Event FillingCombo(ByVal strSQL As String, ByVal nameCombo As DropDownList, ByVal itemField As String, ByVal Itemdate As String)

    Public Sub fillcombo(ByVal nameCombo As DropDownList, ByVal strSQL As String, ByVal itemField As String, ByVal ItemData As String)
        RaiseEvent FillingCombo(strSQL, nameCombo, itemField, ItemData)
        Dim i_Fill1 As Integer
        nameCombo.Items.Clear()
        c.ConnectToDB()
        c.OpenRecordSet(strSQL, ConnectionClass.myE.ForwardOnly)
        nameCombo.Items.Add("-------------------------------")
        nameCombo.DataValueField = 0
        i_Fill1 = 1
        If c.CheckRecordset = True Then
            Do While Not c.rs.EOF
                nameCombo.Items.Add(Replace(c.rs.Fields(itemField).Value, "ي", "ی"))
                nameCombo.Items(i_Fill1).Value = c.rs.Fields(ItemData).Value
                c.rs.MoveNext()
                i_Fill1 = i_Fill1 + 1

            Loop
        End If
        c.DisConnectOfDB()
        Exit Sub

    End Sub

    Public Sub fillcombo_DefaultText(ByVal nameCombo As DropDownList, ByVal strSQL As String, ByVal itemField As String, ByVal ItemData As String, ByVal Default_Text As String)
        Dim i_Fill1 As Integer
        nameCombo.Items.Clear()
        c.ConnectToDB()
        c.OpenRecordSet(strSQL, ConnectionClass.myE.ForwardOnly)
        nameCombo.Items.Add(Default_Text)
        nameCombo.DataValueField = 0
        i_Fill1 = 1
        If c.CheckRecordset = True Then
            Do While Not c.rs.EOF
                nameCombo.Items.Add(Replace(c.rs.Fields(itemField).Value, "ي", "ی"))
                nameCombo.Items(i_Fill1).Value = c.rs.Fields(ItemData).Value
                c.rs.MoveNext()
                i_Fill1 = i_Fill1 + 1

            Loop
        End If
        c.DisConnectOfDB()
        Exit Sub

    End Sub

    Public Sub fillListBox(ByVal nameListBox As ListBox, ByVal strSQL As String, ByVal itemField As String, ByVal ItemData As String)
        Dim i_Fill1 As Integer
        nameListBox.Items.Clear()
        c.ConnectToDB()
        c.OpenRecordSet(strSQL, ConnectionClass.myE.ForwardOnly)

        i_Fill1 = 0
        If c.CheckRecordset = True Then
            Do While Not c.rs.EOF
                If c.rs.Fields(itemField).Value = "" Then
                    nameListBox.Items.Add(Replace(" ", "ي", "ی"))
                Else
                    nameListBox.Items.Add(Replace(c.rs.Fields(itemField).Value, "ي", "ی"))
                End If

                nameListBox.Items(i_Fill1).Value = c.rs.Fields(ItemData).Value
                c.rs.MoveNext()
                i_Fill1 = i_Fill1 + 1

            Loop
        End If
        c.DisConnectOfDB()
        Exit Sub

    End Sub
End Class
