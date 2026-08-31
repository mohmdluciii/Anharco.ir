Option Explicit On
Option Strict Off

Imports System.Collections
Imports System.Globalization
Imports System.IO
Imports System.Text
Imports System.Web
Imports System.Xml

Public Module SiteVisits
    Private ReadOnly Gate As New Object()
    Private Const CookieName As String = "anhar_vid"
    Private Const DayKeep As Integer = 90

    Public Sub HitIfPublic()
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing OrElse ctx.Request Is Nothing Then
            Return
        End If
        If Not ShouldCount(ctx) Then
            Return
        End If
        Dim isNew As Boolean = False
        Dim vid As String = ReadVid(ctx, isNew)
        If isNew Then
            WriteVid(ctx, vid)
        End If
        Dim lang As String = "en"
        Try
            lang = SiteStudioStore.DetectLang()
        Catch
        End Try
        Dim today As String = DateTime.Now.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture)
        Try
            SaveHit(LocalPath(ctx), today, lang, isNew)
        Catch
        End Try
        Try
            Dim sharedFile As String = SharedPath(ctx)
            If sharedFile <> "" AndAlso Not String.Equals(sharedFile, LocalPath(ctx), StringComparison.OrdinalIgnoreCase) Then
                SaveHit(sharedFile, today, lang, isNew)
            End If
        Catch
        End Try
    End Sub

    Public Function DashboardHtml() As String
        Dim doc As XmlDocument = Nothing
        Dim ctx As HttpContext = HttpContext.Current
        Try
            Dim sharedFile As String = SharedPath(ctx)
            If sharedFile <> "" AndAlso File.Exists(sharedFile) Then
                doc = LoadDoc(sharedFile)
            End If
        Catch
        End Try
        If doc Is Nothing Then
            Try
                doc = LoadDoc(LocalPath(ctx))
            Catch
            End Try
        End If
        Dim total As Long = 0
        Dim uniqueAll As Long = 0
        Dim todayHits As Long = 0
        Dim todayUnique As Long = 0
        Dim faHits As Long = 0
        Dim arHits As Long = 0
        Dim enHits As Long = 0
        Dim today As String = DateTime.Now.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture)
        If doc IsNot Nothing AndAlso doc.DocumentElement IsNot Nothing Then
            Dim root As XmlElement = doc.DocumentElement
            total = ToLong(Inner(root, "total"))
            uniqueAll = ToLong(Inner(root, "unique"))
            Dim dayNode As XmlElement = CType(root.SelectSingleNode("days/day[@id='" & today & "']"), XmlElement)
            If dayNode IsNot Nothing Then
                todayHits = ToLong(dayNode.GetAttribute("hits"))
                todayUnique = ToLong(dayNode.GetAttribute("unique"))
            End If
            faHits = LangHits(root, "fa")
            arHits = LangHits(root, "ar")
            enHits = LangHits(root, "en")
        End If
        Dim fa As CultureInfo = CultureInfo.GetCultureInfo("fa-IR")
        Dim sb As New StringBuilder()
        sb.Append("<div class=""visitCard visitMain""><i class=""fa fa-eye""></i><b data-n=""")
        sb.Append(total.ToString(CultureInfo.InvariantCulture))
        sb.Append(""">")
        sb.Append(HttpUtility.HtmlEncode(total.ToString("N0", fa)))
        sb.Append("</b><span>بازدید کل سایت</span></div>")
        sb.Append("<div class=""visitCard""><i class=""fa fa-calendar""></i><b data-n=""")
        sb.Append(todayHits.ToString(CultureInfo.InvariantCulture))
        sb.Append(""">")
        sb.Append(HttpUtility.HtmlEncode(todayHits.ToString("N0", fa)))
        sb.Append("</b><span>بازدید امروز</span></div>")
        sb.Append("<div class=""visitCard""><i class=""fa fa-users""></i><b data-n=""")
        sb.Append(uniqueAll.ToString(CultureInfo.InvariantCulture))
        sb.Append(""">")
        sb.Append(HttpUtility.HtmlEncode(uniqueAll.ToString("N0", fa)))
        sb.Append("</b><span>بازدیدکننده یکتا</span></div>")
        sb.Append("<div class=""visitCard""><i class=""fa fa-user""></i><b data-n=""")
        sb.Append(todayUnique.ToString(CultureInfo.InvariantCulture))
        sb.Append(""">")
        sb.Append(HttpUtility.HtmlEncode(todayUnique.ToString("N0", fa)))
        sb.Append("</b><span>بازدیدکننده یکتا امروز</span></div>")
        If faHits > 0 OrElse arHits > 0 OrElse enHits > 0 Then
            sb.Append("<div class=""visitLangRow"">")
            sb.Append(LangChip("فارسی", faHits, fa))
            sb.Append(LangChip("العربية", arHits, fa))
            sb.Append(LangChip("English", enHits, fa))
            sb.Append("</div>")
        End If
        sb.Append(ChartBlockHtml(doc, faHits, arHits, enHits))
        Return sb.ToString()
    End Function

    Private Function ChartBlockHtml(ByVal doc As XmlDocument, ByVal faHits As Long, ByVal arHits As Long, ByVal enHits As Long) As String
        Dim labels As New StringBuilder()
        Dim hits As New StringBuilder()
        Dim uniques As New StringBuilder()
        Dim faDaily As New StringBuilder()
        Dim arDaily As New StringBuilder()
        Dim enDaily As New StringBuilder()
        Dim i As Integer
        For i = 13 To 0 Step -1
            Dim day As DateTime = DateTime.Today.AddDays(-i)
            Dim id As String = day.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture)
            Dim h As Long = 0
            Dim u As Long = 0
            Dim fd As Long = 0
            Dim ad As Long = 0
            Dim ed As Long = 0
            If doc IsNot Nothing AndAlso doc.DocumentElement IsNot Nothing Then
                Dim dayNode As XmlElement = CType(doc.DocumentElement.SelectSingleNode("days/day[@id='" & id & "']"), XmlElement)
                If dayNode IsNot Nothing Then
                    h = ToLong(dayNode.GetAttribute("hits"))
                    u = ToLong(dayNode.GetAttribute("unique"))
                    fd = ToLong(dayNode.GetAttribute("fa-hits"))
                    ad = ToLong(dayNode.GetAttribute("ar-hits"))
                    ed = ToLong(dayNode.GetAttribute("en-hits"))
                End If
            End If
            If labels.Length > 0 Then
                labels.Append(",")
                hits.Append(",")
                uniques.Append(",")
                faDaily.Append(",")
                arDaily.Append(",")
                enDaily.Append(",")
            End If
            labels.Append(JsStr(FaDayLabel(day)))
            hits.Append(h.ToString(CultureInfo.InvariantCulture))
            uniques.Append(u.ToString(CultureInfo.InvariantCulture))
            faDaily.Append(fd.ToString(CultureInfo.InvariantCulture))
            arDaily.Append(ad.ToString(CultureInfo.InvariantCulture))
            enDaily.Append(ed.ToString(CultureInfo.InvariantCulture))
        Next
        Dim sb As New StringBuilder()
        sb.Append("<div class=""visitCharts"">")
        sb.Append("<div class=""visitChartBox visitChartLine""><div class=""visitChartTitle"">روند ۱۴ روز اخیر</div><div class=""visitChartCanvas""><canvas id=""visitLineChart""></canvas></div></div>")
        sb.Append("<div class=""visitChartBox visitChartDonut""><div class=""visitChartTitle"">سهم زبان‌ها</div><div class=""visitChartCanvas visitChartCanvasRound""><canvas id=""visitDonutChart""></canvas></div></div>")
        sb.Append("</div>")
        sb.Append("<script type=""text/javascript"">window.ANHAR_VISITS={labels:[")
        sb.Append(labels.ToString())
        sb.Append("],hits:[")
        sb.Append(hits.ToString())
        sb.Append("],unique:[")
        sb.Append(uniques.ToString())
        sb.Append("],fa:[")
        sb.Append(faDaily.ToString())
        sb.Append("],ar:[")
        sb.Append(arDaily.ToString())
        sb.Append("],en:[")
        sb.Append(enDaily.ToString())
        sb.Append("],langs:[")
        sb.Append(faHits.ToString(CultureInfo.InvariantCulture))
        sb.Append(",")
        sb.Append(arHits.ToString(CultureInfo.InvariantCulture))
        sb.Append(",")
        sb.Append(enHits.ToString(CultureInfo.InvariantCulture))
        sb.Append("]};</script>")
        Return sb.ToString()
    End Function

    Private Function FaDayLabel(ByVal day As DateTime) As String
        Dim pc As New PersianCalendar()
        Dim months() As String = {"فروردین", "اردیبهشت", "خرداد", "تیر", "مرداد", "شهریور", "مهر", "آبان", "آذر", "دی", "بهمن", "اسفند"}
        Dim m As Integer = pc.GetMonth(day)
        If m < 1 OrElse m > 12 Then
            Return day.ToString("MM/dd", CultureInfo.InvariantCulture)
        End If
        Return pc.GetDayOfMonth(day).ToString(CultureInfo.InvariantCulture) & " " & months(m - 1)
    End Function

    Private Function JsStr(ByVal s As String) As String
        If s Is Nothing Then
            s = ""
        End If
        Return """" & s.Replace("\", "\\").Replace("""", "\""").Replace(vbCr, "").Replace(vbLf, "") & """"
    End Function

    Private Function LangChip(ByVal title As String, ByVal n As Long, ByVal fa As CultureInfo) As String
        Return "<div class=""visitLang""><b>" & HttpUtility.HtmlEncode(n.ToString("N0", fa)) & "</b><span>" & HttpUtility.HtmlEncode(title) & "</span></div>"
    End Function

    Public Sub ResetVisits()
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing Then Return
        Dim localFile As String = Path.Combine(ctx.Server.MapPath("~/App_Data"), "site-visits.xml")
        Dim sharedFile As String = ""
        Try
            Dim rootDir As String = ctx.Server.MapPath("~").TrimEnd("\"c, "/"c)
            Dim parentDir As DirectoryInfo = Directory.GetParent(rootDir)
            If parentDir IsNot Nothing Then
                sharedFile = Path.Combine(Path.Combine(parentDir.FullName, "App_Data"), "site-visits.xml")
            End If
        Catch
        End Try
        SyncLock Gate
            If File.Exists(localFile) Then File.Delete(localFile)
            If sharedFile <> "" AndAlso File.Exists(sharedFile) Then File.Delete(sharedFile)
        End SyncLock
    End Sub

    Private Function LangHits(ByVal root As XmlElement, ByVal lang As String) As Long
        Dim n As XmlElement = CType(root.SelectSingleNode("langs/lang[@id='" & lang & "']"), XmlElement)
        If n Is Nothing Then
            Return 0
        End If
        Return ToLong(n.GetAttribute("hits"))
    End Function

    Private Function ShouldCount(ByVal ctx As HttpContext) As Boolean
        If ctx.Request.HttpMethod <> "GET" Then
            Return False
        End If
        Dim path As String = ctx.Request.Path
        If String.IsNullOrEmpty(path) Then
            Return False
        End If
        Dim ext As String = IO.Path.GetExtension(path).ToLowerInvariant()
        If ext <> "" AndAlso ext <> ".aspx" Then
            Return False
        End If
        Dim file As String = IO.Path.GetFileName(path).ToLowerInvariant()
        If file = "" Then
            file = "index.aspx"
        End If
        If LocalPanelSupport.IsPanelPath(path) Then
            Return False
        End If
        If file.StartsWith("sitestudio") OrElse file = "pdf.aspx" OrElse file = "empty.aspx" OrElse file = "emptypage.aspx" Then
            Return False
        End If
        Dim low As String = path.ToLowerInvariant()
        If low.IndexOf("/dashboard/") >= 0 OrElse low.IndexOf("/bitmap_file/") >= 0 Then
            Return False
        End If
        If LocalPanelSupport.IsLocallyLoggedIn() Then
            Return False
        End If
        Dim ua As String = Convert.ToString(ctx.Request.UserAgent)
        If ua <> "" Then
            ua = ua.ToLowerInvariant()
            If ua.IndexOf("bot") >= 0 OrElse ua.IndexOf("crawl") >= 0 OrElse ua.IndexOf("spider") >= 0 OrElse ua.IndexOf("slurp") >= 0 Then
                Return False
            End If
        End If
        Return True
    End Function

    Private Function ReadVid(ByVal ctx As HttpContext, ByRef isNew As Boolean) As String
        Dim ck As HttpCookie = ctx.Request.Cookies(CookieName)
        If ck IsNot Nothing AndAlso Not String.IsNullOrEmpty(ck.Value) Then
            isNew = False
            Return ck.Value
        End If
        isNew = True
        Return Guid.NewGuid().ToString("N")
    End Function

    Private Sub WriteVid(ByVal ctx As HttpContext, ByVal vid As String)
        Dim ck As New HttpCookie(CookieName, vid)
        ck.HttpOnly = True
        ck.Path = "/"
        ck.Expires = DateTime.Now.AddYears(1)
        ctx.Response.Cookies.Set(ck)
    End Sub

    Private Sub SaveHit(ByVal filePath As String, ByVal today As String, ByVal lang As String, ByVal isNew As Boolean)
        If String.IsNullOrEmpty(filePath) Then
            Return
        End If
        SyncLock Gate
            Dim folder As String = IO.Path.GetDirectoryName(filePath)
            If Not Directory.Exists(folder) Then
                Directory.CreateDirectory(folder)
            End If
            Dim doc As XmlDocument = LoadDoc(filePath)
            Dim root As XmlElement = doc.DocumentElement
            SetInner(doc, root, "total", (ToLong(Inner(root, "total")) + 1).ToString(CultureInfo.InvariantCulture))
            If isNew Then
                SetInner(doc, root, "unique", (ToLong(Inner(root, "unique")) + 1).ToString(CultureInfo.InvariantCulture))
            End If
            Dim days As XmlElement = EnsureChild(doc, root, "days")
            Dim dayNode As XmlElement = CType(days.SelectSingleNode("day[@id='" & today & "']"), XmlElement)
            If dayNode Is Nothing Then
                dayNode = doc.CreateElement("day")
                dayNode.SetAttribute("id", today)
                dayNode.SetAttribute("hits", "0")
                dayNode.SetAttribute("unique", "0")
                days.AppendChild(dayNode)
            End If
            dayNode.SetAttribute("hits", (ToLong(dayNode.GetAttribute("hits")) + 1).ToString(CultureInfo.InvariantCulture))
            If isNew Then
                dayNode.SetAttribute("unique", (ToLong(dayNode.GetAttribute("unique")) + 1).ToString(CultureInfo.InvariantCulture))
            End If
            Dim langHitAttr As String = lang & "-hits"
            dayNode.SetAttribute(langHitAttr, (ToLong(dayNode.GetAttribute(langHitAttr)) + 1).ToString(CultureInfo.InvariantCulture))
            Dim langs As XmlElement = EnsureChild(doc, root, "langs")
            Dim langNode As XmlElement = CType(langs.SelectSingleNode("lang[@id='" & lang & "']"), XmlElement)
            If langNode Is Nothing Then
                langNode = doc.CreateElement("lang")
                langNode.SetAttribute("id", lang)
                langNode.SetAttribute("hits", "0")
                langs.AppendChild(langNode)
            End If
            langNode.SetAttribute("hits", (ToLong(langNode.GetAttribute("hits")) + 1).ToString(CultureInfo.InvariantCulture))
            PruneDays(days, today)
            Dim tmp As String = filePath & ".tmp"
            Dim settings As New XmlWriterSettings()
            settings.Encoding = New UTF8Encoding(True)
            settings.Indent = True
            Dim w As XmlWriter = XmlWriter.Create(tmp, settings)
            doc.Save(w)
            w.Close()
            If File.Exists(filePath) Then
                File.Delete(filePath)
            End If
            File.Move(tmp, filePath)
        End SyncLock
    End Sub

    Private Sub PruneDays(ByVal days As XmlElement, ByVal today As String)
        Dim keepFrom As DateTime
        If Not DateTime.TryParseExact(today, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, keepFrom) Then
            Return
        End If
        keepFrom = keepFrom.AddDays(-DayKeep)
        Dim drop As New ArrayList()
        Dim n As XmlNode
        For Each n In days.ChildNodes
            Dim el As XmlElement = TryCast(n, XmlElement)
            If el Is Nothing Then
                Continue For
            End If
            Dim d As DateTime
            If DateTime.TryParseExact(el.GetAttribute("id"), "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, d) Then
                If d < keepFrom Then
                    drop.Add(el)
                End If
            End If
        Next
        Dim i As Integer
        For i = 0 To drop.Count - 1
            days.RemoveChild(CType(drop(i), XmlNode))
        Next
    End Sub

    Private Function LoadDoc(ByVal filePath As String) As XmlDocument
        Dim doc As New XmlDocument()
        If File.Exists(filePath) Then
            Try
                doc.Load(filePath)
                If doc.DocumentElement IsNot Nothing Then
                    Return doc
                End If
            Catch
            End Try
        End If
        doc.AppendChild(doc.CreateXmlDeclaration("1.0", "utf-8", Nothing))
        Dim root As XmlElement = doc.CreateElement("visits")
        doc.AppendChild(root)
        SetInner(doc, root, "total", "0")
        SetInner(doc, root, "unique", "0")
        EnsureChild(doc, root, "days")
        EnsureChild(doc, root, "langs")
        Return doc
    End Function

    Private Function EnsureChild(ByVal doc As XmlDocument, ByVal parent As XmlElement, ByVal name As String) As XmlElement
        Dim n As XmlElement = CType(parent.SelectSingleNode(name), XmlElement)
        If n Is Nothing Then
            n = doc.CreateElement(name)
            parent.AppendChild(n)
        End If
        Return n
    End Function

    Private Sub SetInner(ByVal doc As XmlDocument, ByVal parent As XmlElement, ByVal name As String, ByVal value As String)
        Dim n As XmlElement = CType(parent.SelectSingleNode(name), XmlElement)
        If n Is Nothing Then
            n = doc.CreateElement(name)
            parent.AppendChild(n)
        End If
        n.InnerText = value
    End Sub

    Private Function Inner(ByVal parent As XmlElement, ByVal name As String) As String
        Dim n As XmlNode = parent.SelectSingleNode(name)
        If n Is Nothing Then
            Return "0"
        End If
        Return n.InnerText
    End Function

    Private Function ToLong(ByVal s As String) As Long
        Dim n As Long = 0
        If s Is Nothing Then
            Return 0
        End If
        Long.TryParse(s, NumberStyles.Integer, CultureInfo.InvariantCulture, n)
        Return n
    End Function

    Private Function LocalPath(ByVal ctx As HttpContext) As String
        Dim data As String = ctx.Server.MapPath("~/App_Data")
        Return Path.Combine(data, "site-visits.xml")
    End Function

    Private Function SharedPath(ByVal ctx As HttpContext) As String
        Try
            Dim root As String = ctx.Server.MapPath("~").TrimEnd("\"c, "/"c)
            Dim parent As DirectoryInfo = Directory.GetParent(root)
            If parent Is Nothing Then
                Return ""
            End If
            Return Path.Combine(Path.Combine(parent.FullName, "App_Data"), "site-visits.xml")
        Catch
            Return ""
        End Try
    End Function
End Module
