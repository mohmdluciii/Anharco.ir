Option Explicit On
Option Strict Off

Imports System.Globalization
Imports System.IO
Imports System.Net
Imports System.Text
Imports System.Web
Imports System.Xml

Public Module ShanaNews
    Private Const CacheMinutes As Integer = 20
    Private Const ItemLimit As Integer = 8

    Public Function HomeHtml(ByVal lang As String) As String
        Return Build(lang, "home")
    End Function

    Public Function ListHtml(ByVal lang As String) As String
        Return Build(lang, "list")
    End Function

    Public Function SidebarHtml(ByVal lang As String) As String
        Return Build(lang, "side")
    End Function

    Private Function Build(ByVal lang As String, ByVal kind As String) As String
        lang = SiteStudioStore.NormalizeLang(lang)
        Dim items As XmlNodeList = LoadItems(lang)
        If items Is Nothing OrElse items.Count = 0 Then
            Return ""
        End If
        Dim sb As New StringBuilder()
        Dim n As Integer = 0
        Dim node As XmlNode
        For Each node In items
            n = n + 1
            If n > ItemLimit Then
                Exit For
            End If
            Dim title As String = Inner(node, "title")
            Dim href As String = Inner(node, "link")
            Dim dateTxt As String = FormatDate(Inner(node, "pubDate"), lang)
            Dim img As String = EnclosureUrl(node)
            If String.IsNullOrEmpty(img) Then
                img = "images/NewsAnhar.jpg"
            End If
            If String.IsNullOrEmpty(href) Then
                href = "#"
            End If
            If kind = "list" Then
                sb.Append("<div class=""containerContentBoxNews""><div class=""picBox""><a target=""_blank"" href=""")
                sb.Append(HttpUtility.HtmlAttributeEncode(href))
                sb.Append("""><img src=""")
                sb.Append(HttpUtility.HtmlAttributeEncode(img))
                sb.Append(""" alt=""")
                sb.Append(HttpUtility.HtmlAttributeEncode(title))
                sb.Append(""" /></a></div><div class=""contentTextNews""><div class=""titleNews""><a target=""_blank"" href=""")
                sb.Append(HttpUtility.HtmlAttributeEncode(href))
                sb.Append(""">")
                sb.Append(HttpUtility.HtmlEncode(title))
                sb.Append("</a></div><div class=""dateNews"">")
                sb.Append(HttpUtility.HtmlEncode(dateTxt))
                sb.Append("</div></div></div>")
            ElseIf kind = "side" Then
                sb.Append("<div class=""topNewsContentBox""><div class=""textBoxNews""><a target=""_blank"" href=""")
                sb.Append(HttpUtility.HtmlAttributeEncode(href))
                sb.Append(""">")
                sb.Append(HttpUtility.HtmlEncode(title))
                sb.Append("</a></div></div>")
            Else
                sb.Append("<div class=""contentBoxNews""><a class=""newsCardLink"" target=""_blank"" href=""")
                sb.Append(HttpUtility.HtmlAttributeEncode(href))
                sb.Append("""><div class=""newIndent""><div class=""newsCardPic""><img src=""")
                sb.Append(HttpUtility.HtmlAttributeEncode(img))
                sb.Append(""" alt=""")
                sb.Append(HttpUtility.HtmlAttributeEncode(title))
                sb.Append(""" /></div><div class=""innerBoxNews""><div class=""boxTextContentNews""><div class=""dateBox"">")
                sb.Append(HttpUtility.HtmlEncode(dateTxt))
                sb.Append("</div><div class=""titleBoxNews"">")
                sb.Append(HttpUtility.HtmlEncode(title))
                sb.Append("</div></div></div></div></a></div>")
            End If
        Next
        Return sb.ToString()
    End Function

    Private Function LoadItems(ByVal lang As String) As XmlNodeList
        Dim cacheKey As String = "shana_doc_" & lang
        Dim doc As XmlDocument = Nothing
        Try
            If HttpRuntime.Cache IsNot Nothing Then
                doc = TryCast(HttpRuntime.Cache(cacheKey), XmlDocument)
            End If
        Catch
        End Try
        If doc Is Nothing Then
            doc = DownloadFeed(FeedUrl(lang))
            If doc Is Nothing AndAlso lang <> "en" Then
                doc = DownloadFeed("https://en.shana.ir/rss")
            End If
            If doc IsNot Nothing Then
                Try
                    If HttpRuntime.Cache IsNot Nothing Then
                        HttpRuntime.Cache.Insert(cacheKey, doc, Nothing, DateTime.Now.AddMinutes(CacheMinutes), TimeSpan.Zero)
                    End If
                Catch
                End Try
            End If
        End If
        If doc Is Nothing Then
            Return Nothing
        End If
        Return doc.SelectNodes("/rss/channel/item")
    End Function

    Private Function FeedUrl(ByVal lang As String) As String
        If lang = "fa" Then
            Return "https://www.shana.ir/rss"
        End If
        Return "https://en.shana.ir/rss"
    End Function

    Private Function DownloadFeed(ByVal url As String) As XmlDocument
        Try
            Try
                ServicePointManager.SecurityProtocol = DirectCast(3072 Or 192 Or 48, SecurityProtocolType)
            Catch
            End Try
            Dim req As HttpWebRequest = CType(WebRequest.Create(url), HttpWebRequest)
            req.Method = "GET"
            req.Timeout = 8000
            req.ReadWriteTimeout = 8000
            req.UserAgent = "Mozilla/5.0 (compatible; AnharNews/1.0)"
            req.AutomaticDecompression = DecompressionMethods.GZip Or DecompressionMethods.Deflate
            Dim res As HttpWebResponse = CType(req.GetResponse(), HttpWebResponse)
            Dim xmlText As String
            Using stream As Stream = res.GetResponseStream()
                Using reader As New StreamReader(stream, Encoding.UTF8)
                    xmlText = reader.ReadToEnd()
                End Using
            End Using
            res.Close()
            If String.IsNullOrEmpty(xmlText) Then
                Return Nothing
            End If
            Dim doc As New XmlDocument()
            doc.LoadXml(xmlText)
            Return doc
        Catch
            Return Nothing
        End Try
    End Function

    Private Function Inner(ByVal node As XmlNode, ByVal name As String) As String
        Dim n As XmlNode = node.SelectSingleNode(name)
        If n Is Nothing Then
            Return ""
        End If
        Return n.InnerText.Trim()
    End Function

    Private Function EnclosureUrl(ByVal node As XmlNode) As String
        Dim n As XmlNode = node.SelectSingleNode("enclosure")
        If n Is Nothing OrElse n.Attributes Is Nothing Then
            Return ""
        End If
        Dim a As XmlAttribute = n.Attributes("url")
        If a Is Nothing Then
            Return ""
        End If
        Return a.Value
    End Function

    Private Function FormatDate(ByVal raw As String, ByVal lang As String) As String
        Dim dt As DateTime
        If Not DateTime.TryParse(raw, dt) Then
            Return raw
        End If
        If lang = "fa" Then
            Dim pc As New PersianCalendar()
            Return pc.GetYear(dt).ToString() & "/" & pc.GetMonth(dt).ToString("00") & "/" & pc.GetDayOfMonth(dt).ToString("00")
        End If
        Return dt.ToString("dd MMM yyyy", CultureInfo.InvariantCulture)
    End Function
End Module
