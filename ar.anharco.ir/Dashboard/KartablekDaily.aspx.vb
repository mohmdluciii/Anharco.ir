Public Partial Class KartablekDaily
    Inherits System.Web.UI.Page
    Dim strScript As String = ""
    Dim ary_Max(1000) As Double
    Dim max_size As Integer = 0
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        createChart()
    End Sub
    Private Sub createChart()

        strScript = " <script>"
        strScript = strScript & "function createConfig(gridlines, title) {"
        strScript = strScript & "return {"
        strScript = strScript & "type: 'line',"
        strScript = strScript & "data: {"
        strScript = strScript & "labels: [" & fetch_date_10Day() & "],"
        strScript = strScript & "datasets: [{"
        fetch_Final_Buy_Chart()
        strScript = strScript & "}]"
        strScript = strScript & "},"
        strScript = strScript & "options: {"
        strScript = strScript & "responsive: true,"
        strScript = strScript & "title:{"
        strScript = strScript & "display: true,"
        strScript = strScript & "text: title"
        strScript = strScript & "},"
        strScript = strScript & "scales: {"
        strScript = strScript & "xAxes: [{"
        strScript = strScript & "gridLines: gridlines"
        strScript = strScript & "}],"
        strScript = strScript & "yAxes: [{"
        strScript = strScript & "gridLines: gridlines,"
        strScript = strScript & "ticks: {"
        strScript = strScript & "min: 0,"
        strScript = strScript & "max: " & max_size + 10 & ","
        strScript = strScript & "stepSize: " & Int(max_size / 10)
        strScript = strScript & "}"
        strScript = strScript & "}]"
        strScript = strScript & "}"
        strScript = strScript & "}"
        strScript = strScript & "};"
        strScript = strScript & "}"
        strScript = strScript & "window.onload = function() {"
        strScript = strScript & "var container = document.querySelector('.container');"
        strScript = strScript & "[{"
        strScript = strScript & "title: 'نمودار فعالیت کلی مدیریت محتوا سایت',"
        strScript = strScript & "gridLines: {"
        strScript = strScript & "display: true"
        strScript = strScript & "}"

        strScript = strScript & "}].forEach(function(details) {"
        strScript = strScript & "var div = document.createElement('div');"
        strScript = strScript & "div.classList.add('chart-container');"
        strScript = strScript & "var canvas = document.createElement('canvas');"
        strScript = strScript & "div.appendChild(canvas);"
        strScript = strScript & "container.appendChild(div);"
        strScript = strScript & "var ctx = canvas.getContext('2d');"
        strScript = strScript & "var config = createConfig(details.gridLines, details.title);"
        strScript = strScript & "new Chart(ctx, config);"
        strScript = strScript & "});"
        strScript = strScript & "};"
        strScript = strScript & "</script>"
        Session("createChart") = Replace(strScript, "@", """")
    End Sub
    Private Function fetch_date_10Day() As String
        Dim amount_str As String = ""
        Dim mydate As New MdlDate
        Dim currentDate As Date = System.DateTime.Today
        For i = -30 To 0 Step 1
            amount_str = amount_str & ",@" & mydate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)) & "@"
        Next
        fetch_date_10Day = amount_str
    End Function
    Private Function fetch_name_Month(ByVal amount_Month As Integer) As String
        Select Case amount_Month
            Case 1
                fetch_name_Month = "January"
            Case 2
                fetch_name_Month = "February"
            Case 3
                fetch_name_Month = "March"
            Case 4
                fetch_name_Month = "April"
            Case 5
                fetch_name_Month = "May"
            Case 6
                fetch_name_Month = "June"
            Case 7
                fetch_name_Month = "July"
            Case 8
                fetch_name_Month = "August"
            Case 9
                fetch_name_Month = "September"
            Case 10
                fetch_name_Month = "October"
            Case 11
                fetch_name_Month = "November"
            Case 12
                fetch_name_Month = "December"

        End Select
    End Function

    Private Sub fetch_Final_Buy_Chart()
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim amount_str As String = ""
        Dim currentDate As Date = System.DateTime.Today
        Dim strPrice As String = ""
        Dim row As Integer = 0
        Dim myDate As New MdlDate


        strScript = strScript & "label: @گواهی اشتغال بکار@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(1) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(1) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_Gavahi(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_Gavahi(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"

        strScript = strScript & "label: @بیمه تکمیلی@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(2) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(2) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_Bime(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_Bime(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"


        strScript = strScript & "label: @بیمه تکمیلی وابسته@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(3) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(3) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_BimeDet(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_BimeDet(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"


        strScript = strScript & "label: @عمر و حوادث@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(11) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(11) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_Omr(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_Omr(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"



        strScript = strScript & "label: @انصراف بیمه تکمیلی@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(4) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(4) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_EnserafBime(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_EnserafBime(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"

        strScript = strScript & "label: @انصراف بیمه عمر و حوادث@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(5) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(5) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_EnserafOmr(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_EnserafOmr(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"



        strScript = strScript & "label: @سوالات قوانین و مقررات@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(6) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(6) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_LawQuestion(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_LawQuestion(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"

        strScript = strScript & "label: @پیشنهادات@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(7) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(7) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_Suggestion(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_Suggestion(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"


        strScript = strScript & "label: @تغییرات@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(8) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(8) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_Change(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_Change(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"


        strScript = strScript & "label: @علی الحساب@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(9) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(9) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_AllHesab(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_AllHesab(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"






        strScript = strScript & "label: @تعمیر و نگهداری@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(10) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(10) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_Request(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_Request(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"

    End Sub

    Private Function fetch_number_Gavahi(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblGavahi"
        str = str & " where dateAdd_Gavahi='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_Gavahi = c.rs.Fields(0).Value
            Else
                fetch_number_Gavahi = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function


    Private Function fetch_number_Bime(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblBime"
        str = str & " where dateAdd_Bime='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_Bime = c.rs.Fields(0).Value
            Else
                fetch_number_Bime = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function
    Private Function fetch_number_BimeDet(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblBimeDet"
        str = str & " where dateAdd_BimeDet='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_BimeDet = c.rs.Fields(0).Value
            Else
                fetch_number_BimeDet = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function
    Private Function fetch_number_Omr(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblOmr"
        str = str & " where dateAdd_Omr='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_Omr = c.rs.Fields(0).Value
            Else
                fetch_number_Omr = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function


    Private Function fetch_number_EnserafBime(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblEnserafBime"
        str = str & " where dateAdd_EnserafBime='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_EnserafBime = c.rs.Fields(0).Value
            Else
                fetch_number_EnserafBime = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function

    Private Function fetch_number_EnserafOmr(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblEnserafOmr"
        str = str & " where dateAdd_EnserafOmr='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_EnserafOmr = c.rs.Fields(0).Value
            Else
                fetch_number_EnserafOmr = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function


    Private Function fetch_number_LawQuestion(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblLawQuestion"
        str = str & " where dateAdd_LawQuestion='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_LawQuestion = c.rs.Fields(0).Value
            Else
                fetch_number_LawQuestion = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function

    Private Function fetch_number_Suggestion(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblSuggestion"
        str = str & " where dateAdd_Suggestion='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_Suggestion = c.rs.Fields(0).Value
            Else
                fetch_number_Suggestion = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function

    Private Function fetch_number_Change(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblChange"
        str = str & " where dateAdd_Change='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_Change = c.rs.Fields(0).Value
            Else
                fetch_number_Change = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function

    Private Function fetch_number_AllHesab(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblAllHesab"
        str = str & " where dateAdd_AllHesab='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_AllHesab = c.rs.Fields(0).Value
            Else
                fetch_number_AllHesab = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function

    Private Function fetch_number_Receipt(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblReceipt"
        str = str & " where dateADD_Receipt='" & amount_Date & "'"
        str = str & " and status_Receipt in(1,2,4)"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_Receipt = c.rs.Fields(0).Value
            Else
                fetch_number_Receipt = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function
    Private Function fetch_number_Draft(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblDraft"
        str = str & " where dateAdd_Draft='" & amount_Date & "'"
        str = str & " and status_Draft in(1,2,3,4)"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_Draft = c.rs.Fields(0).Value
            Else
                fetch_number_Draft = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function
    Private Function fetch_number_DraftDirect(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblDraftDirect"
        str = str & " where dateAdd_DraftDirect='" & amount_Date & "'"
        str = str & " and status_DraftDirect in(1,2,4)"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_DraftDirect = c.rs.Fields(0).Value
            Else
                fetch_number_DraftDirect = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function

    Private Function fetch_number_ReturnGoods(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblReturnGoods"
        str = str & " where dateAdd_ReturnGoods='" & amount_Date & "'"
        str = str & " and status_ReturnGoods in(1,2,3,4)"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_ReturnGoods = c.rs.Fields(0).Value
            Else
                fetch_number_ReturnGoods = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function
    Private Function fetch_number_Request(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblRequest"
        str = str & " where dateSend_Request='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_Request = c.rs.Fields(0).Value
            Else
                fetch_number_Request = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function
    Private Function fetch_Color_Chart(ByVal amount_number As Integer) As String
        Select Case amount_number
            Case 1
                fetch_Color_Chart = "red"
            Case 2
                fetch_Color_Chart = "orange"
            Case 3
                fetch_Color_Chart = "yellow"
            Case 4
                fetch_Color_Chart = "green"
            Case 5
                fetch_Color_Chart = "blue"
            Case 6
                fetch_Color_Chart = "purple"
            Case 7
                fetch_Color_Chart = "grey"
            Case 8
                fetch_Color_Chart = "chart1"
            Case 9
                fetch_Color_Chart = "chart2"
            Case 10
                fetch_Color_Chart = "chart3"
            Case 11
                fetch_Color_Chart = "chart4"
            Case 12
                fetch_Color_Chart = "chart5"
            Case Else
                fetch_Color_Chart = "chart6"

        End Select

    End Function
    Dim ary_maxPrice(1000) As Double
    Dim counter_maxPrice As Integer = 0
    Private Function fetch_Buy_ForChart(ByVal amount_Date As Date, ByVal Cryptocurrency As String, ByVal amount_counter As Integer)

        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim input_Date As Date = amount_Date
        fetch_Buy_ForChart = ""
        str = "select AVG(cast(Difficulty as float)) from tblCoins"
        str = str & " where Cryptocurrency='" & Cryptocurrency & "'"
        str = str & " and date_add ='" & input_Date.Year & "/" & input_Date.Month & "/" & input_Date.Day & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If amount_counter = -14 Then
                If IsDBNull(c.rs.Fields(0).Value) = False Then
                    fetch_Buy_ForChart = c.rs.Fields(0).Value
                    ary_maxPrice(counter_maxPrice) = c.rs.Fields(0).Value
                    counter_maxPrice = counter_maxPrice + 1
                Else
                    fetch_Buy_ForChart = 0
                    ary_maxPrice(counter_maxPrice) = 0
                    counter_maxPrice = counter_maxPrice + 1
                End If
            Else
                If IsDBNull(c.rs.Fields(0).Value) = False Then
                    fetch_Buy_ForChart = fetch_Buy_ForChart & "," & c.rs.Fields(0).Value
                    ary_maxPrice(counter_maxPrice) = c.rs.Fields(0).Value
                    counter_maxPrice = counter_maxPrice + 1
                Else
                    fetch_Buy_ForChart = fetch_Buy_ForChart & "," & 0
                    ary_maxPrice(counter_maxPrice) = 0
                    counter_maxPrice = counter_maxPrice + 1
                End If
            End If

        End If
        c.DisConnectOfDB()
    End Function
    Private Function fetch_final_MaxPrice() As Double
        Dim amount_max As Double = 0
        For i = 0 To counter_maxPrice - 1
            If ary_maxPrice(i) > amount_max Then
                amount_max = ary_maxPrice(i)
            End If
        Next
        If amount_max = 0 Then
            fetch_final_MaxPrice = 5000000000000000
        Else
            fetch_final_MaxPrice = 6000000000000000
        End If


    End Function
End Class