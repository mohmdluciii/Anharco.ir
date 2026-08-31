Public Partial Class workDaily_Chart
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


        strScript = strScript & "label: @اخبار و رویدادها@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(1) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(1) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_News(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_News(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"

        strScript = strScript & "label: @اطلاعیه ها@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(2) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(2) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_Information(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_Information(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"


        strScript = strScript & "label: @مقاله@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(3) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(3) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_Essay(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_Essay(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"
        strScript = strScript & "}, {"


       
        strScript = strScript & "label: @ورود به پنل@,"
        strScript = strScript & "backgroundColor: window.chartColors." & fetch_Color_Chart(8) & ","
        strScript = strScript & "borderColor: window.chartColors." & fetch_Color_Chart(8) & ","
        strScript = strScript & "data: ["
        For i = -30 To 0 Step 1
            If i = -30 Then
                strScript = strScript & fetch_number_Log(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            Else
                strScript = strScript & "," & fetch_number_Log(myDate.convertorDate(DateAdd(DateInterval.Day, i, currentDate)))
            End If

        Next
        strScript = strScript & "],"
        strScript = strScript & "fill: false"

    End Sub

    Private Function fetch_number_News(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblnews"
        str = str & " where dateAdd_news='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_News = c.rs.Fields(0).Value
            Else
                fetch_number_News = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function


    Private Function fetch_number_Information(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblInformation"
        str = str & " where DateAdd_Information='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_Information = c.rs.Fields(0).Value
            Else
                fetch_number_Information = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function
    Private Function fetch_number_Essay(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblEssay"
        str = str & " where dateAdd_Essay='" & amount_Date & "'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_Essay = c.rs.Fields(0).Value
            Else
                fetch_number_Essay = 0
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
    Private Function fetch_number_Log(ByVal amount_Date As String) As Integer
        Dim c As New ConnectionClass
        Dim str As String = ""
        Dim myDate As New MdlDate
        str = "select count(*) from tblLog"
        str = str & " where date_Log='" & amount_Date & "'"
        str = str & " and page_Log='Manager'"
        c.ConnectToDB()
        c.OpenRecordSet(str, ConnectionClass.myE.ForwardOnly)
        If c.CheckRecordset = True Then
            If IsDBNull(c.rs.Fields(0).Value) = False Then
                If c.rs.Fields(0).Value > max_size Then
                    max_size = c.rs.Fields(0).Value
                End If
                fetch_number_Log = c.rs.Fields(0).Value
            Else
                fetch_number_Log = 0
            End If
        End If
        c.DisConnectOfDB()
    End Function
    Private Function fetch_Color_Chart(ByVal amount_number As Integer) As String
        Select Case amount_number
            Case 1
                fetch_Color_Chart = "red"
            Case 2
                fetch_Color_Chart = "blue"
            Case 3
                fetch_Color_Chart = "green"
            Case 4
                fetch_Color_Chart = "orange"
            Case 5
                fetch_Color_Chart = "yellow"
            Case 6
                fetch_Color_Chart = "purple"
            Case 7
                fetch_Color_Chart = "chart1"
            Case 8
                fetch_Color_Chart = "chart2"
            Case 9
                fetch_Color_Chart = "chart3"
            Case 10
                fetch_Color_Chart = "chart4"
            Case 11
                fetch_Color_Chart = "chart5"
            Case 12
                fetch_Color_Chart = "chart6"
            Case Else
                fetch_Color_Chart = "chart7"

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