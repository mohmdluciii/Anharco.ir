Option Explicit On
Option Strict Off

Imports System.Configuration
Imports System.Globalization
Imports System.IO
Imports System.Web
Imports System.Web.SessionState
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Xml

Public Module SiteStudioStore
    Public Function NormalizeLang(ByVal lang As String) As String
        If lang Is Nothing Then
            Return "en"
        End If
        lang = lang.Trim().ToLowerInvariant()
        If lang = "fa" OrElse lang = "ar" Then
            Return lang
        End If
        Return "en"
    End Function

    Public Function DetectLang() As String
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing Then
            Return "en"
        End If
        Try
            Dim setting As String = ConfigurationManager.AppSettings("SiteLang")
            If setting IsNot Nothing Then
                setting = setting.Trim().ToLowerInvariant()
                If setting = "fa" OrElse setting = "ar" Then
                    Return setting
                End If
            End If
        Catch
        End Try
        Try
            Dim host As String = ctx.Request.Url.Host.ToLowerInvariant()
            If host.StartsWith("fa.") OrElse host.IndexOf(".fa.") >= 0 Then
                Return "fa"
            End If
            If host.StartsWith("ar.") OrElse host.IndexOf(".ar.") >= 0 Then
                Return "ar"
            End If
        Catch
        End Try
        Dim root As String = ctx.Server.MapPath("~/").TrimEnd("\"c)
        Dim name As String = Path.GetFileName(root)
        If String.Equals(name, "fa.anharco.ir", StringComparison.OrdinalIgnoreCase) OrElse String.Equals(name, "Fa", StringComparison.OrdinalIgnoreCase) Then
            Return "fa"
        End If
        If String.Equals(name, "ar.anharco.ir", StringComparison.OrdinalIgnoreCase) OrElse String.Equals(name, "Ar", StringComparison.OrdinalIgnoreCase) Then
            Return "ar"
        End If
        If name IsNot Nothing Then
            Dim lower As String = name.ToLowerInvariant()
            If lower = "fa" OrElse lower.StartsWith("fa.") OrElse lower.StartsWith("fa-") Then
                Return "fa"
            End If
            If lower = "ar" OrElse lower.StartsWith("ar.") OrElse lower.StartsWith("ar-") Then
                Return "ar"
            End If
        End If
        Return "en"
    End Function

    Public Function CurrentSiteXmlPath() As String
        Return DataDir.GetDataFile("site-studio.xml")
    End Function

    ''' <summary>
    ''' Cache-buster for managed images: appending the file's timestamp keeps
    ''' browsers from serving the previous image after a replacement. Accepts
    ''' raw managed refs (media:..., SiteStudio/...) and converted handler
    ''' URLs (ImageStream.ashx?f=...).
    ''' </summary>
    Public Function CacheBust(ByVal rel As String) As String
        If String.IsNullOrEmpty(rel) Then
            Return rel
        End If
        Try
            ' Already busted (by Overlay or a previous pass) - leave it alone.
            If rel.IndexOf("?v=") >= 0 OrElse rel.IndexOf("&v=") >= 0 Then
                Return rel
            End If
            Dim lower As String = rel.ToLowerInvariant()
            Dim name As String = ""
            Dim sep As String = "?"
            If lower.StartsWith(MediaScheme) Then
                name = rel.Substring(MediaScheme.Length)
            ElseIf lower.StartsWith("sitestudio/") Then
                name = rel.Substring("SiteStudio/".Length)
            ElseIf lower.Contains("imagestream.ashx?f=") Then
                Dim i As Integer = rel.IndexOf("?f=")
                If i < 0 Then
                    i = rel.IndexOf("&f=")
                End If
                If i >= 0 Then
                    name = HttpUtility.UrlDecode(rel.Substring(i + 3))
                    Dim q As Integer = name.IndexOf("?"c)
                    If q >= 0 Then
                        name = name.Substring(0, q)
                    End If
                    sep = "&"
                End If
            Else
                Return rel
            End If
            Dim amp As Integer = name.IndexOf("?"c)
            If amp >= 0 Then
                name = name.Substring(0, amp)
            End If
            If name = "" OrElse name.IndexOf("/") >= 0 OrElse name.IndexOf("..") >= 0 Then
                Return rel
            End If
            Dim dir As String = FilesDir(DetectLang())
            If dir <> "" Then
                Dim full As String = Path.Combine(dir, name)
                If File.Exists(full) Then
                    Return rel & sep & "v=" & File.GetLastWriteTimeUtc(full).Ticks.ToString()
                End If
            End If
        Catch
        End Try
        Return rel
    End Function

    Public Function PreferWebpUrl(ByVal relativePath As String) As String
        If String.IsNullOrEmpty(relativePath) Then
            Return relativePath
        End If
        Dim lower As String = relativePath.ToLowerInvariant()
        ' Media stored in the writable data folder is served by ImageStream.ashx - never map it to disk.
        If lower.StartsWith(MediaScheme) Then
            Return relativePath
        End If
        If lower.EndsWith(".gif") OrElse lower.EndsWith(".webp") OrElse lower.EndsWith(".ico") OrElse lower.EndsWith(".svg") Then
            Return relativePath
        End If
        If Not (lower.EndsWith(".jpg") OrElse lower.EndsWith(".jpeg") OrElse lower.EndsWith(".png") OrElse lower.EndsWith(".bmp")) Then
            Return relativePath
        End If
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing Then
            Return relativePath
        End If
        Try
            Dim full As String = ctx.Server.MapPath("~/" & relativePath.Replace("/", "\"))
            Dim webp As String = Path.ChangeExtension(full, ".webp")
            If File.Exists(webp) Then
                Dim relWebp As String = Path.ChangeExtension(relativePath, ".webp").Replace("\", "/")
                Return relWebp
            End If
        Catch
        End Try
        Return relativePath
    End Function

    Public Function ResolvePublicUrl(ByVal relativePath As String, ByVal fallback As String) As String
        If String.IsNullOrEmpty(relativePath) Then
            Return fallback
        End If
        ' Media stored in the writable data folder is served by the ImageStream handler.
        If relativePath.StartsWith(MediaScheme, StringComparison.OrdinalIgnoreCase) Then
            Dim name As String = relativePath.Substring(MediaScheme.Length)
            Return "ImageStream.ashx?f=" & HttpUtility.UrlEncode(name)
        End If
        Dim ctx As HttpContext = HttpContext.Current
        If ctx Is Nothing Then
            Return relativePath
        End If
        Try
            Dim full As String = ctx.Server.MapPath("~/" & relativePath.Replace("/", "\"))
            If File.Exists(full) Then
                Return PreferWebpUrl(relativePath)
            End If
        Catch
        End Try
        Return fallback
    End Function

    Public Function SiteRoot(ByVal lang As String) As String
        Dim ctx As HttpContext = HttpContext.Current
        Dim here As String = ctx.Server.MapPath("~/").TrimEnd("\"c)
        Dim parent As String = Path.GetDirectoryName(here)
        lang = NormalizeLang(lang)
        Dim folder As String = "httpdocs"
        If lang = "fa" Then
            folder = "fa.anharco.ir"
        ElseIf lang = "ar" Then
            folder = "ar.anharco.ir"
        End If
        Dim candidate As String = Path.Combine(parent, folder)
        If Directory.Exists(candidate) Then
            Return candidate
        End If
        Return here
    End Function

    Public Function XmlPath(ByVal lang As String) As String
        Return DataDir.GetDataFileFor(SiteRoot(lang), "site-studio.xml")
    End Function

    Public Const MediaScheme As String = "media:"

    ''' <summary>
    ''' Writable folder for uploaded images of one language site. Prefers the
    ''' classic ~/SiteStudio folder; if the host denies writes there (like it
    ''' can deny App_Data), falls back to the active data dir's media folder.
    ''' </summary>
    Public Function FilesDir(ByVal lang As String) As String
        Dim dir As String = Path.Combine(SiteRoot(lang), "SiteStudio")
        If DataDir.ProbeWritable(dir) Then
            Return dir
        End If
        ' Each language site stores its images in its OWN writable location so
        ' its own ImageStream.ashx can serve them (hosts may deny SiteStudio).
        Dim fb As String = DataDir.MediaDirFor(SiteRoot(lang))
        If fb <> "" Then
            Return fb
        End If
        If Not Directory.Exists(dir) Then
            Directory.CreateDirectory(dir)
        End If
        Return dir
    End Function

    ''' <summary>Media folder of the CURRENT site (used by ImageStream.ashx).</summary>
    Public Function MediaFilesDir() As String
        Return FilesDir(DetectLang())
    End Function

    ''' <summary>
    ''' URL prefix for a stored image: "SiteStudio/" when the classic folder is
    ''' writable, otherwise the ImageStream scheme "media:".
    ''' </summary>
    Public Function MediaRelPrefix(ByVal lang As String) As String
        Dim dir As String = Path.Combine(SiteRoot(lang), "SiteStudio")
        If DataDir.ProbeWritable(dir) Then
            Return "SiteStudio/"
        End If
        Return MediaScheme
    End Function

    Public Function LoadDoc(ByVal lang As String) As XmlDocument
        Dim p As String = XmlPath(lang)
        If p = "" Then
            ' Memory mode: no writable directory on the host
            Dim txt As String = DataDir.MemGet("site-studio.xml")
            If txt IsNot Nothing AndAlso txt <> "" Then
                Try
                    Dim memDoc As New XmlDocument()
                    memDoc.LoadXml(txt)
                    Return memDoc
                Catch
                End Try
            End If
            Dim seedDoc As New XmlDocument()
            seedDoc.LoadXml("<site></site>")
            Seed(seedDoc, lang)
            DataDir.MemSet("site-studio.xml", seedDoc.OuterXml)
            Return seedDoc
        End If
        Dim doc As New XmlDocument()
        If File.Exists(p) Then
            doc.Load(p)
        Else
            doc.LoadXml("<site></site>")
            Seed(doc, lang)
            SaveDoc(lang, doc)
        End If
        Return doc
    End Function

    Public Sub SaveDoc(ByVal lang As String, ByVal doc As XmlDocument)
        Dim p As String = XmlPath(lang)
        If p = "" Then
            DataDir.MemSet("site-studio.xml", doc.OuterXml)
            Return
        End If
        doc.Save(p)
    End Sub

    Public Function GetValue(ByVal lang As String, ByVal key As String) As String
        Dim n As XmlNode = LoadDoc(lang).SelectSingleNode("/site/" & key)
        If n Is Nothing Then
            Return ""
        End If
        Return n.InnerText
    End Function

    Public Sub SetValue(ByVal lang As String, ByVal key As String, ByVal value As String)
        Dim doc As XmlDocument = LoadDoc(lang)
        If value Is Nothing Then
            EnsureChild(doc, key).InnerText = ""
        Else
            EnsureChild(doc, key).InnerText = value
        End If
        SaveDoc(lang, doc)
    End Sub

    Public Sub ClearValue(ByVal lang As String, ByVal key As String)
        SetValue(lang, key, "")
    End Sub

    Public Function BytesFromHidden(ByVal hid As HiddenField) As Byte()
        If hid Is Nothing Then
            Return Nothing
        End If
        Return BytesFromDataUrl(hid.Value)
    End Function

    Public Function BytesFromDataUrl(ByVal raw As String) As Byte()
        If String.IsNullOrEmpty(raw) Then
            Return Nothing
        End If
        Dim marker As String = "base64,"
        Dim i As Integer = raw.IndexOf(marker, StringComparison.OrdinalIgnoreCase)
        If i >= 0 Then
            raw = raw.Substring(i + marker.Length)
        End If
        Try
            Return Convert.FromBase64String(raw.Trim())
        Catch
            Return Nothing
        End Try
    End Function

    Public Function IsAnimatedKeep(ByVal fileName As String) As Boolean
        Dim ext As String = Path.GetExtension(fileName)
        If String.IsNullOrEmpty(ext) Then
            Return False
        End If
        ext = ext.ToLowerInvariant()
        Return (ext = ".gif" OrElse ext = ".ico" OrElse ext = ".svg")
    End Function

    ''' <summary>
    ''' Writes image bytes to the writable media folder (SiteStudio or the data
    ''' dir fallback) and returns the stored relative reference.
    ''' </summary>
    Public Function SaveImageAnywhere(ByVal lang As String, ByVal fileName As String, ByVal bytes() As Byte) As String
        If bytes Is Nothing OrElse bytes.Length = 0 Then
            Return ""
        End If
        Dim dir As String = FilesDir(lang)
        If Not Directory.Exists(dir) Then
            Directory.CreateDirectory(dir)
        End If
        File.WriteAllBytes(Path.Combine(dir, fileName), bytes)
        Return MediaRelPrefix(lang) & fileName
    End Function

    ''' <summary>
    ''' Deletes a previously stored media file of THIS site (best effort) when
    ''' the given reference points into our own managed folders. Used to keep
    ''' the media folder clean when an image is replaced or removed.
    ''' </summary>
    Public Sub TryDeleteMedia(ByVal lang As String, ByVal rel As String)
        If String.IsNullOrEmpty(rel) Then
            Return
        End If
        Try
            Dim lower As String = rel.ToLowerInvariant()
            Dim name As String = ""
            If lower.StartsWith(MediaScheme) Then
                name = rel.Substring(MediaScheme.Length)
            ElseIf lower.StartsWith("sitestudio/") Then
                name = rel.Substring("SiteStudio/".Length)
            Else
                Return
            End If
            If name.IndexOf("/") >= 0 OrElse name.IndexOf("\\") >= 0 OrElse name.IndexOf("..") >= 0 Then
                Return
            End If
            Dim dir As String = FilesDir(lang)
            If dir = "" Then
                Return
            End If
            Dim full As String = Path.Combine(dir, name)
            If File.Exists(full) Then
                File.Delete(full)
            End If
        Catch
        End Try
    End Sub

    Public Function SaveBytes(ByVal lang As String, ByVal key As String, ByVal bytes() As Byte, ByVal ext As String) As String
        If bytes Is Nothing OrElse bytes.Length = 0 Then
            Return ""
        End If
        If String.IsNullOrEmpty(ext) Then
            ext = ".webp"
        End If
        ext = ext.ToLowerInvariant()
        If Not ext.StartsWith(".") Then
            ext = "." & ext
        End If
        ' Unique file name on every save: replacing an image must never reuse
        ' the old file name, otherwise browsers/IIS keep showing the cached
        ' previous image and the change looks like it was never saved.
        Dim stamp As String = DateTime.Now.ToString("yyyyMMddHHmmss") & "_" & Guid.NewGuid().ToString("N").Substring(0, 6)
        Dim fileName As String = key & "_" & stamp & ext
        Dim oldRel As String = GetValue(lang, key)
        Dim rel As String = SaveImageAnywhere(lang, fileName, bytes)
        If rel <> "" Then
            ' Remove the previous managed file of this key on THIS site only;
            ' sibling language sites manage their own copies.
            TryDeleteMedia(lang, oldRel)
        End If
        SetValue(lang, key, rel)
        Return rel
    End Function

    Public Function SaveBytesAll(ByVal key As String, ByVal bytes() As Byte, ByVal ext As String) As String
        Dim lang As String
        Dim rel As String = ""
        For Each lang In Langs()
            rel = SaveBytes(lang, key, bytes, ext)
        Next
        Return rel
    End Function

    Public Function SaveUpload(ByVal lang As String, ByVal fu As FileUpload, ByVal key As String) As String
        Return SaveUploadEx(lang, fu, Nothing, key, False)
    End Function

    Public Function SaveUploadEx(ByVal lang As String, ByVal fu As FileUpload, ByVal hidWebp As HiddenField, ByVal key As String, ByVal allLangs As Boolean) As String
        Dim bytes() As Byte = BytesFromHidden(hidWebp)
        Dim ext As String = ".webp"
        If bytes IsNot Nothing Then
            If fu IsNot Nothing AndAlso fu.HasFile AndAlso IsAnimatedKeep(fu.FileName) Then
                ext = Path.GetExtension(fu.FileName).ToLowerInvariant()
                bytes = fu.FileBytes
            End If
        Else
            If fu Is Nothing OrElse Not fu.HasFile Then
                Return ""
            End If
            ext = Path.GetExtension(fu.FileName)
            If String.IsNullOrEmpty(ext) Then
                ext = ".jpg"
            End If
            ext = ext.ToLowerInvariant()
            Dim allowed As String = ".jpg.jpeg.png.gif.webp.ico.svg.bmp"
            If allowed.IndexOf(ext) < 0 Then
                ext = ".jpg"
            End If
            bytes = fu.FileBytes
        End If
        If allLangs Then
            Return SaveBytesAll(key, bytes, ext)
        End If
        Return SaveBytes(lang, key, bytes, ext)
    End Function

    Public Function FitKey(ByVal key As String) As String
        Return key & "_fit"
    End Function

    Public Function GetFit(ByVal lang As String, ByVal key As String) As String
        Dim v As String = GetValue(lang, FitKey(key))
        If String.IsNullOrEmpty(v) Then
            Return "50|50|100"
        End If
        Return v
    End Function

    Public Sub SetFit(ByVal lang As String, ByVal key As String, ByVal fit As String)
        If String.IsNullOrEmpty(fit) Then
            fit = "50|50|100"
        End If
        SetValue(lang, FitKey(key), fit)
    End Sub

    Public Sub SetFitAll(ByVal key As String, ByVal fit As String)
        Dim lang As String
        For Each lang In Langs()
            SetFit(lang, key, fit)
        Next
    End Sub

    Public Function BgCss(ByVal url As String, ByVal key As String) As String
        Dim lang As String = DetectLang()
        Dim fit As String = GetFit(lang, key)
        Dim parts() As String = fit.Split("|"c)
        Dim x As String = "50"
        Dim y As String = "50"
        Dim z As Double = 100
        If parts.Length > 0 AndAlso parts(0) <> "" Then
            x = parts(0)
        End If
        If parts.Length > 1 AndAlso parts(1) <> "" Then
            y = parts(1)
        End If
        If parts.Length > 2 Then
            Double.TryParse(parts(2), NumberStyles.Any, CultureInfo.InvariantCulture, z)
        End If
        ' Managed media (media: / SiteStudio) must resolve through the handler
        ' and carry a cache-buster so replaced images appear immediately.
        If url IsNot Nothing Then
            Dim ul As String = url.ToLowerInvariant()
            If ul.StartsWith(MediaScheme) OrElse ul.StartsWith("sitestudio/") Then
                url = CacheBust(ResolvePublicUrl(url, url))
            ElseIf ul.Contains("imagestream.ashx") Then
                url = CacheBust(url)
            End If
        End If
        Dim frame As StudioCropFrame = SiteStudioCatalog.CropFrameOf(key)
        Dim sizeCss As String = "cover"
        If frame IsNot Nothing AndAlso frame.Fit = "contain" Then
            sizeCss = "contain"
        End If
        If z > 100.5 OrElse z < 99.5 Then
            sizeCss = z.ToString("0.##", CultureInfo.InvariantCulture) & "% auto"
        End If
        Return "background-image:url(" & url & ");background-repeat:no-repeat;background-position:" & x & "% " & y & "% !important;background-size:" & sizeCss & " !important"
    End Function

    Public Function ImgFitCss(ByVal key As String) As String
        Dim lang As String = DetectLang()
        Dim fit As String = GetFit(lang, key)
        Dim parts() As String = fit.Split("|"c)
        Dim x As String = "50"
        Dim y As String = "50"
        Dim z As Double = 100
        If parts.Length > 0 AndAlso parts(0) <> "" Then
            x = parts(0)
        End If
        If parts.Length > 1 AndAlso parts(1) <> "" Then
            y = parts(1)
        End If
        If parts.Length > 2 Then
            Double.TryParse(parts(2), NumberStyles.Any, CultureInfo.InvariantCulture, z)
        End If
        Dim frame As StudioCropFrame = SiteStudioCatalog.CropFrameOf(key)
        Dim mode As String = "cover"
        If frame IsNot Nothing AndAlso frame.Fit = "contain" Then
            mode = "contain"
        End If
        Dim css As String = "object-fit:" & mode & ";object-position:" & x & "% " & y & "%;transform-origin:" & x & "% " & y & "%"
        If z > 100.5 OrElse z < 99.5 Then
            css &= ";transform:scale(" & (z / 100.0).ToString("0.###", CultureInfo.InvariantCulture) & ")"
        End If
        Return css
    End Function

    Public Function ImgFitStyle(ByVal key As String) As String
        Return "style=""" & ImgFitCss(key) & """"
    End Function

    Public Function BgStyle(ByVal key As String) As String
        Return BgCss(Asset(key), key)
    End Function

    Public Function SlideStyle(ByVal index As Integer, ByVal mobile As Boolean) As String
        Dim key As String = "slider" & index.ToString() & "_image"
        Dim url As String = ""
        Try
            Dim session As HttpSessionState = HttpContext.Current.Session
            If mobile Then
                url = Convert.ToString(session("url_slidBannerMobile" & index.ToString()))
            Else
                url = Convert.ToString(session("url_slidBanner" & index.ToString()))
            End If
        Catch
        End Try
        If String.IsNullOrEmpty(url) Then
            url = Asset(key)
        End If
        Return "style=""" & BgCss(url, key) & """"
    End Function

    Public Sub ApplyToCurrentSite(ByVal session As HttpSessionState)
        Dim lang As String = DetectLang()
        Dim p As String = CurrentSiteXmlPath()
        If p = "" Then
            ' Memory mode: no writable directory on the host
            ApplyDoc(session, LoadDoc(lang))
            Return
        End If
        ApplyDoc(session, LoadDocAt(p, lang))
    End Sub

    Public Sub ApplyToSession(ByVal session As HttpSessionState, ByVal lang As String)
        lang = NormalizeLang(lang)
        ApplyDoc(session, LoadDoc(lang))
    End Sub

    Private Function LoadDocAt(ByVal p As String, ByVal lang As String) As XmlDocument
        Dim doc As New XmlDocument()
        If File.Exists(p) Then
            doc.Load(p)
        Else
            doc.LoadXml("<site></site>")
            Seed(doc, NormalizeLang(lang))
            Dim dir As String = Path.GetDirectoryName(p)
            If Not Directory.Exists(dir) Then
                Directory.CreateDirectory(dir)
            End If
            doc.Save(p)
        End If
        Return doc
    End Function

    Private Function NodeText(ByVal doc As XmlDocument, ByVal key As String) As String
        Dim n As XmlNode = doc.SelectSingleNode("/site/" & key)
        If n Is Nothing Then
            Return ""
        End If
        Return n.InnerText
    End Function

    Private Sub ApplyDoc(ByVal session As HttpSessionState, ByVal doc As XmlDocument)
        Overlay(session, "site_title", NodeText(doc, "title"), "")
        Overlay(session, "site_logo", NodeText(doc, "logo"), "images/Anhar-Logo.png")
        Overlay(session, "site_favicon", NodeText(doc, "favicon"), Convert.ToString(session("site_logo")))
        Overlay(session, "site_logotype", NodeText(doc, "logotype"), "images/LogoType-AnharCo.jpg")
        Overlay(session, "footer_logo", NodeText(doc, "footer_logo"), "images/anharCoFooter.png")
        Overlay(session, "footer_title", NodeText(doc, "footer_title"), "")
        session("footer_logo") = FooterLogoUrl()
        session("footer_title") = FooterTitle()
        Overlay(session, "footer_about", NodeText(doc, "footer_about"), "")
        Overlay(session, "footer_copy", NodeText(doc, "footer_copy"), "")
        Overlay(session, "social_facebook", NodeText(doc, "social_facebook"), "http://www.facebook.com/anharcompany")
        Overlay(session, "social_instagram", NodeText(doc, "social_instagram"), "http://www.instagram.com/anharcompany")
        Overlay(session, "social_linkedin", NodeText(doc, "social_linkedin"), "https://www.linkedin.com/company/anhar-company")
        Overlay(session, "social_twitter", NodeText(doc, "social_twitter"), "https://twitter.com/AnharCompany")
        Overlay(session, "social_telegram", NodeText(doc, "social_telegram"), "http://telegram.me/joinchat/B3sSEz1VxMcIUL7uml7OdQ")
        Overlay(session, "social_facebook_icon", NodeText(doc, "social_facebook_icon"), "")
        Overlay(session, "social_instagram_icon", NodeText(doc, "social_instagram_icon"), "")
        Overlay(session, "social_linkedin_icon", NodeText(doc, "social_linkedin_icon"), "")
        Overlay(session, "social_twitter_icon", NodeText(doc, "social_twitter_icon"), "")
        Overlay(session, "social_telegram_icon", NodeText(doc, "social_telegram_icon"), "")
        session("initCertificates") = CertificatesHtml(DetectLang())
        session("initAcknowledgments") = AcknowledgmentsHtml(DetectLang())
        FillPublicNews(session, DetectLang())
        Overlay(session, "initProject_Button", NodeText(doc, "projects_more_link"), Convert.ToString(session("initProject_Button")))

        Dim i As Integer
        For i = 1 To 4
            Overlay(session, "url_slidBanner" & i, NodeText(doc, "slider" & i & "_image"), Convert.ToString(session("url_slidBanner" & i)))
            Overlay(session, "url_slidBannerMobile" & i, NodeText(doc, "slider" & i & "_image"), Convert.ToString(session("url_slidBannerMobile" & i)))
            Overlay(session, "name_TopBanner" & i, NodeText(doc, "slider" & i & "_name"), Convert.ToString(session("name_TopBanner" & i)))
            Overlay(session, "text_TopBanner" & i, NodeText(doc, "slider" & i & "_text"), Convert.ToString(session("text_TopBanner" & i)))
            Overlay(session, "small_TopBanner" & i, NodeText(doc, "slider" & i & "_button"), Convert.ToString(session("small_TopBanner" & i)))
            Overlay(session, "link_TopBanner" & i, NodeText(doc, "slider" & i & "_link"), Convert.ToString(session("link_TopBanner" & i)))
        Next

        For i = 1 To 8
            Dim galleryDefault As String = "FirstPage_PicAbout/MainPagePic" & i & ".jpg"
            Overlay(session, "url_PicAbout" & i, NodeText(doc, "gallery" & i & "_image"), galleryDefault)
            Overlay(session, "title" & i & "_FirstPage_PicAbout", NodeText(doc, "gallery" & i & "_title"), Convert.ToString(session("title" & i & "_FirstPage_PicAbout")))
            Overlay(session, "Link" & i & "_FirstPage_PicAbout", NodeText(doc, "gallery" & i & "_link"), Convert.ToString(session("Link" & i & "_FirstPage_PicAbout")))
            If String.IsNullOrEmpty(Convert.ToString(session("Pic" & i & "_FirstPage_PicAbout"))) Then
                session("Pic" & i & "_FirstPage_PicAbout") = "MainPagePic" & i & ".jpg"
            End If
        Next
    End Sub

    Private Sub FillPublicNews(ByVal session As HttpSessionState, ByVal lang As String)
        Dim shanaHome As String = ShanaNews.HomeHtml(lang)
        If shanaHome <> "" Then
            session("initTopNews") = shanaHome
            session("initListNews") = ShanaNews.ListHtml(lang)
            session("initTopNewsBox") = ShanaNews.SidebarHtml(lang)
            Return
        End If
        Dim current As String = Convert.ToString(session("initTopNews"))
        If String.IsNullOrEmpty(current) OrElse current.IndexOf("NewsShow.aspx?n=") >= 0 Then
            session("initTopNews") = NewsHomeHtml(lang)
            session("initListNews") = NewsListHtml(lang)
            session("initTopNewsBox") = NewsSidebarHtml(lang)
        End If
        If String.IsNullOrEmpty(Convert.ToString(session("initDetNews"))) Then
            session("initDetNews") = NewsDetailHtml(lang, 1)
        End If
    End Sub

    Public Function PreviewUrl(ByVal lang As String, ByVal key As String, ByVal fallback As String) As String
        Dim v As String = GetValue(lang, key)
        If v <> "" Then
            Return v
        End If
        If fallback <> "" Then
            Return fallback
        End If
        Return SiteStudioCatalog.FallbackOf(key)
    End Function

    Public Function Asset(ByVal key As String) As String
        If key = "footer_logo" Then
            Return FooterLogoUrl()
        End If
        Dim lang As String = DetectLang()
        Dim fallback As String = SiteStudioCatalog.FallbackOf(key)
        Return ResolvePublicUrl(PreviewUrl(lang, key, fallback), fallback)
    End Function

    Public Function FooterTitle() As String
        Dim lang As String = DetectLang()
        Dim v As String = GetValue(lang, "footer_title")
        If IsEnglishFooterTitle(v) Then
            If lang = "fa" Then
                Return "شرکت انهار"
            End If
            If lang = "ar" Then
                Return "شركة أنهار الإنشائية"
            End If
        End If
        If String.IsNullOrEmpty(v) Then
            If lang = "fa" Then
                Return "شرکت انهار"
            End If
            If lang = "ar" Then
                Return "شركة أنهار الإنشائية"
            End If
            Return "Anhar Co."
        End If
        Return v
    End Function

    Public Function FooterLogoUrl() As String
        Dim lang As String = DetectLang()
        Dim stored As String = GetValue(lang, "footer_logo")
        If String.IsNullOrEmpty(stored) Then
            stored = "images/anharCoFooter.png"
        End If
        Return ResolvePublicUrl(stored, "images/anharCoFooter.png")
    End Function

    Public Function Copy(ByVal key As String, ByVal fallback As String) As String
        Dim lang As String = DetectLang()
        Dim v As String = GetValue(lang, key)
        If String.IsNullOrEmpty(v) Then
            v = fallback
        End If
        If String.IsNullOrEmpty(v) Then
            v = SiteStudioCatalog.FallbackOf(key)
        End If
        If v Is Nothing Then
            v = ""
        End If
        Return HttpUtility.HtmlEncode(v).Replace(vbCrLf, "<br />").Replace(vbLf, "<br />").Replace(vbCr, "<br />")
    End Function

    Public Function AlignStored(ByVal key As String) As String
        Dim lang As String = DetectLang()
        Dim v As String = GetValue(lang, key & "_align")
        If v = "ltr" Then
            Return "ltr"
        End If
        If v = "rtl" Then
            Return "rtl"
        End If
        If v = "center" Then
            Return "center"
        End If
        If key IsNot Nothing AndAlso key.EndsWith("_h1") Then
            Return "center"
        End If
        If key IsNot Nothing AndAlso key.StartsWith("slider") AndAlso (key.EndsWith("_name") OrElse key.EndsWith("_text") OrElse key.EndsWith("_button")) Then
            Return "center"
        End If
        If lang = "en" Then
            Return "ltr"
        End If
        Return "rtl"
    End Function

    Public Function AlignClass(ByVal key As String) As String
        Dim a As String = AlignStored(key)
        If a = "ltr" Then
            Return "studioAlignLtr"
        End If
        If a = "center" Then
            Return "studioAlignCenter"
        End If
        Return "studioAlignRtl"
    End Function

    Public Function FooterAboutHtml() As String
        Dim lang As String = DetectLang()
        Dim fallback As String = "ANHAR Construction Co. was established in Golpayegan County in 1974 by four trustees of this city. Since its inception, the company has taken effective steps towards fulfilling social responsibility by being active in the field of building educational centers."
        If lang = "fa" Then
            fallback = "شرکت ساختمانی انهار در سال 1353 با استعانت از خداوند منان در شهرستان گلپایگان توسط چهار نفر از معتمدان این شهر تأسیس گردید که از همان ابتدای تأسیس با حضور در عرصه ساخت مراکز آموزشی، گام‌های مؤثری در راستای تحقق مسئولیت اجتماعی برداشته است."
        ElseIf lang = "ar" Then
            fallback = "تم تأسيس شركة أنهار الإنشائية (ذ.م.م.) في مدينة كلبايكان عام 1974 على يد أربعة من أمناء هذه المدينة. ومنذ تأسيسها، قامت الشركة باتخاذ خطوات فعّالة في سبيل تحقيق المسؤولية الاجتماعية من خلال حضورها في مجال بناء المراكز التعليمية."
        End If
        Return Copy("footer_about", fallback)
    End Function

    Public Function FooterCopyHtml() As String
        Dim lang As String = DetectLang()
        Dim fallback As String = "© 2026 Anhar Corporation. All rights reserved."
        If lang = "fa" Then
            fallback = "© ۱۴۰۵ شرکت انهار. کلیه حقوق محفوظ است."
        End If
        Return Copy("footer_copy", fallback)
    End Function

    Private Function IsEnglishFooterTitle(ByVal value As String) As Boolean
        If String.IsNullOrEmpty(value) Then
            Return True
        End If
        Dim t As String = value.Trim().ToLowerInvariant()
        Return t = "anhar co." OrElse t = "anhar co" OrElse t = "anhar company" OrElse t.StartsWith("anhar co")
    End Function

    Public Function SocialHtml() As String
        Dim sb As New System.Text.StringBuilder()
        sb.Append(SocialItem("facebook", "fa-facebook"))
        sb.Append(SocialItem("instagram", "fa-instagram"))
        sb.Append(SocialItem("linkedin", "fa-linkedin"))
        sb.Append(SocialItem("twitter", "fa-twitter"))
        sb.Append(SocialItem("telegram", "fa-telegram"))
        Return sb.ToString()
    End Function

    Private Function SocialItem(ByVal name As String, ByVal faClass As String) As String
        Dim lang As String = DetectLang()
        Dim href As String = PreviewUrl(lang, "social_" & name, SiteStudioCatalog.FallbackOf("social_" & name))
        If String.IsNullOrEmpty(href) Then
            href = "#"
        End If
        Dim icon As String = GetValue(lang, "social_" & name & "_icon")
        Dim sb As New System.Text.StringBuilder()
        sb.Append("<a class=""socialLink"" target=""_blank"" href=""")
        sb.Append(HttpUtility.HtmlAttributeEncode(href))
        sb.Append(""">")
        If Not String.IsNullOrEmpty(icon) Then
            sb.Append("<img class=""socialLogo"" src=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(ResolvePublicUrl(icon, icon)))
            sb.Append(""" alt="""" />")
        Else
            sb.Append("<i class=""fa ")
            sb.Append(faClass)
            sb.Append("""></i>")
        End If
        sb.Append("</a>")
        Return sb.ToString()
    End Function

    Public Function CertificatesHtml() As String
        Return CertificatesHtml(DetectLang())
    End Function

    Public Function CertificatesHtml(ByVal lang As String) As String
        lang = NormalizeLang(lang)
        Dim sb As New System.Text.StringBuilder()
        Dim i As Integer
        For i = 1 To LocalCertificateFallback.Count()
            Dim title As String = GetValue(lang, "cert" & i & "_title")
            Dim text As String = GetValue(lang, "cert" & i & "_text")
            Dim img As String = GetValue(lang, "cert" & i & "_image")
            If String.IsNullOrEmpty(title) Then
                title = LocalCertificateFallback.Title(i, lang)
            End If
            If String.IsNullOrEmpty(text) Then
                text = LocalCertificateFallback.Summary(i, lang)
            End If
            If String.IsNullOrEmpty(img) OrElse img.IndexOf("CertificatesAnhar.jpg", StringComparison.OrdinalIgnoreCase) >= 0 Then
                img = LocalCertificateFallback.Image(i)
            End If
            img = ResolvePublicUrl(img, LocalCertificateFallback.Image(i))
            sb.Append("<div class=""boxCertificates"">")
            sb.Append("<img src=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(img))
            sb.Append(""" alt=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(title))
            sb.Append(""" ")
            sb.Append(ImgFitStyle("cert" & i & "_image"))
            sb.Append(" />")
            sb.Append("<div class=""titleCertificates""><p class=""")
            sb.Append(AlignClass("cert" & i & "_title"))
            sb.Append(""">")
            sb.Append(HttpUtility.HtmlEncode(title))
            sb.Append("</p><p class=""")
            sb.Append(AlignClass("cert" & i & "_text"))
            sb.Append(""">")
            sb.Append(HttpUtility.HtmlEncode(text))
            sb.Append("</p></div></div>")
        Next
        Return sb.ToString()
    End Function

    Public Function AcknowledgmentsHtml() As String
        Return AcknowledgmentsHtml(DetectLang())
    End Function

    Public Function AcknowledgmentsHtml(ByVal lang As String) As String
        lang = NormalizeLang(lang)
        Dim sb As New System.Text.StringBuilder()
        Dim i As Integer
        For i = 1 To LocalAcknowledgmentFallback.Count()
            Dim title As String = GetValue(lang, "ack" & i & "_title")
            Dim text As String = GetValue(lang, "ack" & i & "_text")
            Dim img As String = GetValue(lang, "ack" & i & "_image")
            If String.IsNullOrEmpty(title) Then
                title = LocalAcknowledgmentFallback.Title(i, lang)
            End If
            If String.IsNullOrEmpty(text) Then
                text = LocalAcknowledgmentFallback.Summary(i, lang)
            End If
            If String.IsNullOrEmpty(img) OrElse img.IndexOf("AcknowledgmentsAnhar.jpg", StringComparison.OrdinalIgnoreCase) >= 0 Then
                img = LocalAcknowledgmentFallback.Image(i)
            End If
            img = ResolvePublicUrl(img, LocalAcknowledgmentFallback.Image(i))
            sb.Append("<div class=""boxCertificates"">")
            sb.Append("<img src=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(img))
            sb.Append(""" alt=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(title))
            sb.Append(""" ")
            sb.Append(ImgFitStyle("ack" & i & "_image"))
            sb.Append(" />")
            sb.Append("<div class=""titleCertificates""><p class=""")
            sb.Append(AlignClass("ack" & i & "_title"))
            sb.Append(""">")
            sb.Append(HttpUtility.HtmlEncode(title))
            sb.Append("</p><p class=""")
            sb.Append(AlignClass("ack" & i & "_text"))
            sb.Append(""">")
            sb.Append(HttpUtility.HtmlEncode(text))
            sb.Append("</p></div></div>")
        Next
        Return sb.ToString()
    End Function

    Public Function NewsHomeHtml() As String
        Return NewsHomeHtml(DetectLang())
    End Function

    Public Function NewsHomeHtml(ByVal lang As String) As String
        lang = NormalizeLang(lang)
        Dim sb As New System.Text.StringBuilder()
        Dim i As Integer
        For i = 1 To LocalNewsFallback.Count()
            Dim title As String = NewsTitle(lang, i)
            Dim dateTxt As String = NewsDate(lang, i)
            Dim img As String = NewsImage(lang, i)
            Dim href As String = NewsHref(lang, i)
            sb.Append("<div class=""contentBoxNews""><a class=""newsCardLink"" href=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(href))
            sb.Append("""><div class=""newIndent""><div class=""newsCardPic""><img src=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(img))
            sb.Append(""" alt=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(title))
            sb.Append(""" ")
            sb.Append(ImgFitStyle("news" & i & "_image"))
            sb.Append(" /></div><div class=""innerBoxNews""><div class=""boxTextContentNews""><div class=""dateBox"">")
            sb.Append(HttpUtility.HtmlEncode(dateTxt))
            sb.Append("</div><div class=""titleBoxNews ")
            sb.Append(AlignClass("news" & i & "_title"))
            sb.Append(""">")
            sb.Append(HttpUtility.HtmlEncode(title))
            sb.Append("</div></div></div></div></a></div>")
        Next
        Return sb.ToString()
    End Function

    Public Function NewsListHtml() As String
        Return NewsListHtml(DetectLang())
    End Function

    Public Function NewsListHtml(ByVal lang As String) As String
        lang = NormalizeLang(lang)
        Dim sb As New System.Text.StringBuilder()
        Dim i As Integer
        For i = 1 To LocalNewsFallback.Count()
            Dim title As String = NewsTitle(lang, i)
            Dim dateTxt As String = NewsDate(lang, i)
            Dim img As String = NewsImage(lang, i)
            Dim href As String = NewsHref(lang, i)
            sb.Append("<div class=""containerContentBoxNews""><div class=""picBox""><a href=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(href))
            sb.Append("""><img src=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(img))
            sb.Append(""" alt=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(title))
            sb.Append(""" ")
            sb.Append(ImgFitStyle("news" & i & "_image"))
            sb.Append(" /></a></div><div class=""contentTextNews""><div class=""titleNews""><a href=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(href))
            sb.Append(""" class=""")
            sb.Append(AlignClass("news" & i & "_title"))
            sb.Append(""">")
            sb.Append(HttpUtility.HtmlEncode(title))
            sb.Append("</a></div><div class=""dateNews ")
            sb.Append(AlignClass("news" & i & "_date"))
            sb.Append(""">")
            sb.Append(HttpUtility.HtmlEncode(dateTxt))
            sb.Append("</div></div></div>")
        Next
        Return sb.ToString()
    End Function

    Public Function NewsSidebarHtml() As String
        Return NewsSidebarHtml(DetectLang())
    End Function

    Public Function NewsSidebarHtml(ByVal lang As String) As String
        lang = NormalizeLang(lang)
        Dim sb As New System.Text.StringBuilder()
        Dim i As Integer
        For i = 1 To LocalNewsFallback.Count()
            Dim title As String = NewsTitle(lang, i)
            Dim href As String = NewsHref(lang, i)
            sb.Append("<div class=""topNewsContentBox""><div class=""textBoxNews""><a href=""")
            sb.Append(HttpUtility.HtmlAttributeEncode(href))
            sb.Append(""" class=""")
            sb.Append(AlignClass("news" & i & "_title"))
            sb.Append(""">")
            sb.Append(HttpUtility.HtmlEncode(title))
            sb.Append("</a></div></div>")
        Next
        Return sb.ToString()
    End Function

    Public Function NewsDetailHtml(ByVal index As Integer) As String
        Return NewsDetailHtml(DetectLang(), index)
    End Function

    Public Function NewsDetailHtml(ByVal lang As String, ByVal index As Integer) As String
        lang = NormalizeLang(lang)
        If index < 1 OrElse index > LocalNewsFallback.Count() Then
            index = 1
        End If
        Dim title As String = NewsTitle(lang, index)
        Dim dateTxt As String = NewsDate(lang, index)
        Dim text As String = NewsText(lang, index)
        Dim img As String = NewsImage(lang, index)
        Dim sb As New System.Text.StringBuilder()
        sb.Append("<div class=""newsDetailBox""><img src=""")
        sb.Append(HttpUtility.HtmlAttributeEncode(img))
        sb.Append(""" alt=""")
        sb.Append(HttpUtility.HtmlAttributeEncode(title))
        sb.Append(""" ")
        sb.Append(ImgFitStyle("news" & index & "_image"))
        sb.Append(" /><div class=""titleNews ")
        sb.Append(AlignClass("news" & index & "_title"))
        sb.Append(""">")
        sb.Append(HttpUtility.HtmlEncode(title))
        sb.Append("</div><div class=""dateNews ")
        sb.Append(AlignClass("news" & index & "_date"))
        sb.Append(""">")
        sb.Append(HttpUtility.HtmlEncode(dateTxt))
        sb.Append("</div><p class=""")
        sb.Append(AlignClass("news" & index & "_text"))
        sb.Append(""">")
        sb.Append(HttpUtility.HtmlEncode(text))
        sb.Append("</p></div>")
        Return sb.ToString()
    End Function

    Private Function NewsTitle(ByVal lang As String, ByVal i As Integer) As String
        Dim title As String = GetValue(lang, "news" & i & "_title")
        If String.IsNullOrEmpty(title) Then
            title = LocalNewsFallback.Title(i, lang)
        End If
        Return title
    End Function

    Private Function NewsDate(ByVal lang As String, ByVal i As Integer) As String
        Dim dateTxt As String = GetValue(lang, "news" & i & "_date")
        If String.IsNullOrEmpty(dateTxt) Then
            dateTxt = LocalNewsFallback.DateText(i, lang)
        End If
        Return dateTxt
    End Function

    Private Function NewsText(ByVal lang As String, ByVal i As Integer) As String
        Dim text As String = GetValue(lang, "news" & i & "_text")
        If String.IsNullOrEmpty(text) Then
            text = LocalNewsFallback.Summary(i, lang)
        End If
        Return text
    End Function

    Private Function NewsImage(ByVal lang As String, ByVal i As Integer) As String
        Dim img As String = PreviewUrl(lang, "news" & i & "_image", "images/NewsAnhar.jpg")
        Return ResolvePublicUrl(img, "images/NewsAnhar.jpg")
    End Function

    Private Function NewsHref(ByVal lang As String, ByVal i As Integer) As String
        Dim href As String = GetValue(lang, "news" & i & "_link")
        If String.IsNullOrEmpty(href) Then
            href = "NewsShow.aspx?n=" & i
        End If
        Return href
    End Function

    Private Function HasStudioCerts() As Boolean
        Dim lang As String = DetectLang()
        Dim i As Integer
        For i = 1 To LocalCertificateFallback.Count()
            If Not String.IsNullOrEmpty(GetValue(lang, "cert" & i & "_title")) Then
                Return True
            End If
            If Not String.IsNullOrEmpty(GetValue(lang, "cert" & i & "_text")) Then
                Return True
            End If
            Dim img As String = GetValue(lang, "cert" & i & "_image")
            If Not String.IsNullOrEmpty(img) AndAlso img <> "images/CertificatesAnhar.jpg" Then
                Return True
            End If
        Next
        Return False
    End Function

    Public Function Langs() As String()
        Return New String() {"en", "fa", "ar"}
    End Function

    Public Function PublicBase(ByVal lang As String) As String
        Dim ctx As HttpContext = HttpContext.Current
        lang = NormalizeLang(lang)
        Dim host As String = ""
        Try
            If ctx IsNot Nothing Then
                host = ctx.Request.Url.Host.ToLowerInvariant()
            End If
        Catch
        End Try
        If host = "localhost" OrElse host = "127.0.0.1" Then
            If lang = "fa" Then
                Return "http://localhost:8081/"
            End If
            If lang = "ar" Then
                Return "http://localhost:8082/"
            End If
            Return "http://localhost:8080/"
        End If
        If lang = "fa" Then
            Return "https://fa.anharco.ir/"
        End If
        If lang = "ar" Then
            Return "https://ar.anharco.ir/"
        End If
        Return "https://anharco.ir/"
    End Function

    Public Function PublicUrl(ByVal lang As String, ByVal rel As String) As String
        If String.IsNullOrEmpty(rel) Then
            Return ""
        End If
        ' Media stored in the writable data folder is served by ImageStream.ashx.
        If rel.StartsWith(MediaScheme, StringComparison.OrdinalIgnoreCase) Then
            Dim name As String = rel.Substring(MediaScheme.Length)
            Dim ctx0 As HttpContext = HttpContext.Current
            Dim cur0 As String = ""
            Try
                cur0 = ctx0.Server.MapPath("~/").TrimEnd("\"c)
            Catch
            End Try
            If String.Equals(cur0, SiteRoot(lang), StringComparison.OrdinalIgnoreCase) Then
                Return "ImageStream.ashx?f=" & HttpUtility.UrlEncode(name)
            End If
            Return PublicBase(lang) & "ImageStream.ashx?f=" & HttpUtility.UrlEncode(name)
        End If
        Dim ctx As HttpContext = HttpContext.Current
        Dim current As String = ""
        Try
            current = ctx.Server.MapPath("~/").TrimEnd("\"c)
        Catch
        End Try
        Dim target As String = SiteRoot(lang)
        If String.Equals(current, target, StringComparison.OrdinalIgnoreCase) Then
            Return rel
        End If
        Return PublicBase(lang) & rel
    End Function

    Public Function LangHref(ByVal lang As String) As String
        lang = NormalizeLang(lang)
        Dim page As String = "Index.aspx"
        Dim qs As String = ""
        Try
            Dim ctx As HttpContext = HttpContext.Current
            If ctx IsNot Nothing AndAlso ctx.Request IsNot Nothing Then
                Dim script As String = ctx.Request.ServerVariables("SCRIPT_NAME")
                If String.IsNullOrEmpty(script) Then
                    script = ctx.Request.Path
                End If
                If Not String.IsNullOrEmpty(script) Then
                    Dim name As String = Path.GetFileName(script)
                    If Not String.IsNullOrEmpty(name) Then
                        page = name
                    End If
                End If
                qs = ctx.Request.Url.Query
            End If
        Catch
        End Try
        Return PublicBase(lang) & page & qs
    End Function

    Public Sub SetValueAll(ByVal key As String, ByVal value As String)
        Dim lang As String
        For Each lang In Langs()
            SetValue(lang, key, value)
        Next
    End Sub

    Public Function SaveUploadAll(ByVal fu As FileUpload, ByVal key As String) As String
        Return SaveUploadEx(DetectLang(), fu, Nothing, key, True)
    End Function

    Private Sub Overlay(ByVal session As HttpSessionState, ByVal key As String, ByVal xmlValue As String, ByVal fallback As String)
        If Not String.IsNullOrEmpty(xmlValue) Then
            Dim v As String = PreferWebpUrl(xmlValue)
            ' Managed media references (media: / SiteStudio) must become real
            ' URLs (ImageStream.ashx / handler of the owning site) before they
            ' reach any img tag or background-image style - and must carry a
            ' cache-buster so a replaced image appears immediately.
            Dim vl As String = v.ToLowerInvariant()
            If vl.StartsWith(MediaScheme) OrElse vl.StartsWith("sitestudio/") Then
                v = CacheBust(ResolvePublicUrl(v, v))
            End If
            session(key) = v
            Return
        End If
        If String.IsNullOrEmpty(Convert.ToString(session(key))) AndAlso Not String.IsNullOrEmpty(fallback) Then
            session(key) = fallback
        End If
    End Sub

    Private Function EnsureChild(ByVal doc As XmlDocument, ByVal key As String) As XmlNode
        Dim root As XmlNode = doc.DocumentElement
        If root Is Nothing Then
            root = doc.CreateElement("site")
            doc.AppendChild(root)
        End If
        Dim child As XmlNode = root.SelectSingleNode(key)
        If child Is Nothing Then
            child = doc.CreateElement(key)
            root.AppendChild(child)
        End If
        Return child
    End Function

    Private Sub Seed(ByVal doc As XmlDocument, ByVal lang As String)
        lang = NormalizeLang(lang)
        SetNode(doc, "logo", "images/Anhar-Logo.png")
        SetNode(doc, "favicon", "images/Anhar-Logo.png")
        SetNode(doc, "logotype", "images/LogoType-AnharCo.jpg")
        SetNode(doc, "footer_logo", "images/anharCoFooter.png")
        SetNode(doc, "flag_fa", "images/IranFlag.jpg")
        SetNode(doc, "flag_ar", "images/IraqFlag.jpg")
        SetNode(doc, "social_facebook", "http://www.facebook.com/anharcompany")
        SetNode(doc, "social_instagram", "http://www.instagram.com/anharcompany")
        SetNode(doc, "social_linkedin", "https://www.linkedin.com/company/anhar-company")
        SetNode(doc, "social_twitter", "https://twitter.com/AnharCompany")
        SetNode(doc, "social_telegram", "http://telegram.me/joinchat/B3sSEz1VxMcIUL7uml7OdQ")
        SetNode(doc, "projects_more_link", "pipelines.aspx")
        Dim i As Integer
        For i = 1 To 8
            SetNode(doc, "gallery" & i & "_image", "FirstPage_PicAbout/MainPagePic" & i & ".jpg")
        Next
        If lang = "fa" Then
            SetNode(doc, "title", "وب سایت شرکت انهار")
            SetNode(doc, "slider1_name", "خطوط لوله نفت و گاز")
            SetNode(doc, "slider1_text", "احداث و اجرای خطوط انتقال نفت و گاز.")
            SetNode(doc, "slider1_button", "بیشتر")
            SetNode(doc, "slider1_link", "pipelines.aspx")
            SetNode(doc, "slider2_name", "تأسیسات تقویت فشار گاز")
            SetNode(doc, "slider2_text", "طراحی و اجرای ایستگاه‌های تقویت فشار گاز.")
            SetNode(doc, "slider2_button", "بیشتر")
            SetNode(doc, "slider2_link", "GasBoosterStation.aspx")
            SetNode(doc, "slider3_name", "ابنیه و ساختمان")
            SetNode(doc, "slider3_text", "پروژه‌های عمرانی، ساختمان و سازه‌های بتنی.")
            SetNode(doc, "slider3_button", "بیشتر")
            SetNode(doc, "slider3_link", "building.aspx")
            SetNode(doc, "slider4_name", "تأسیسات و تجهیزات")
            SetNode(doc, "slider4_text", "تأمین و نصب تأسیسات و تجهیزات صنعتی.")
            SetNode(doc, "slider4_button", "بیشتر")
            SetNode(doc, "slider4_link", "FacilitiesEquipment.aspx")
            SetNode(doc, "footer_title", "شرکت انهار")
            SetNode(doc, "footer_about", "شرکت ساختمانی انهار در سال 1353 با استعانت از خداوند منان در شهرستان گلپایگان توسط چهار نفر از معتمدان این شهر تأسیس گردید که از همان ابتدای تأسیس با حضور در عرصه ساخت مراکز آموزشی، گام‌های مؤثری در راستای تحقق مسئولیت اجتماعی برداشته است.")
            SetNode(doc, "footer_copy", "© ۱۴۰۵ شرکت انهار. کلیه حقوق محفوظ است.")
        ElseIf lang = "ar" Then
            SetNode(doc, "title", "شركة أنهار الإنشائية")
            SetNode(doc, "slider1_name", "شبكة خطوط أنابيب النفط والغاز")
            SetNode(doc, "slider1_text", "إنشاء ومد خطوط نقل النفط والغاز.")
            SetNode(doc, "slider1_button", "المزيد")
            SetNode(doc, "slider1_link", "pipelines.aspx")
            SetNode(doc, "slider2_name", "محطات تعزيز ضغط الغاز")
            SetNode(doc, "slider2_text", "تصميم وإنشاء محطات تعزيز ضغط الغاز.")
            SetNode(doc, "slider2_button", "المزيد")
            SetNode(doc, "slider2_link", "GasBoosterStation.aspx")
            SetNode(doc, "slider3_name", "البناء والإعمار")
            SetNode(doc, "slider3_text", "مشاريع مدنية ومباني ومنشآت خرسانية.")
            SetNode(doc, "slider3_button", "المزيد")
            SetNode(doc, "slider3_link", "building.aspx")
            SetNode(doc, "slider4_name", "الأجهزة والمنشآت")
            SetNode(doc, "slider4_text", "توريد وتركيب المنشآت والمعدات الصناعية.")
            SetNode(doc, "slider4_button", "المزيد")
            SetNode(doc, "slider4_link", "FacilitiesEquipment.aspx")
            SetNode(doc, "footer_title", "شركة أنهار الإنشائية")
            SetNode(doc, "footer_about", "تم تأسيس شركة أنهار الإنشائية (ذ.م.م.) في مدينة كلبايكان عام 1974 على يد أربعة من أمناء هذه المدينة المقيمين. ومنذ تأسيسها، قامت الشركة باتخاذ خطوات فعّالة في سبيل تحقيق المسؤولية الاجتماعية من خلال حضورها في مجال بناء المراكز التعليمية.")
            SetNode(doc, "footer_copy", "© 2026 Anhar Corporation. All rights reserved.")
        Else
            SetNode(doc, "title", "ANHAR Company Website")
            SetNode(doc, "slider1_name", "Oil and gas pipelines")
            SetNode(doc, "slider1_text", "Construction and laying of oil and gas transmission pipelines.")
            SetNode(doc, "slider1_button", "More")
            SetNode(doc, "slider1_link", "pipelines.aspx")
            SetNode(doc, "slider2_name", "Gas pressure boosting facilities")
            SetNode(doc, "slider2_text", "Design and construction of gas pressure boosting stations.")
            SetNode(doc, "slider2_button", "More")
            SetNode(doc, "slider2_link", "GasBoosterStation.aspx")
            SetNode(doc, "slider3_name", "Construction and building")
            SetNode(doc, "slider3_text", "Civil, building and concrete structure projects.")
            SetNode(doc, "slider3_button", "More")
            SetNode(doc, "slider3_link", "building.aspx")
            SetNode(doc, "slider4_name", "Facilities and equipment")
            SetNode(doc, "slider4_text", "Supply and installation of facilities and field equipment.")
            SetNode(doc, "slider4_button", "More")
            SetNode(doc, "slider4_link", "FacilitiesEquipment.aspx")
            SetNode(doc, "footer_title", "Anhar Co.")
            SetNode(doc, "footer_about", "ANHAR Construction Co. was established in Golpayegan County in 1974 by four trustees of this city. Since its inception, the company has taken effective steps towards fulfilling social responsibility by being active in the field of building educational centers.")
            SetNode(doc, "footer_copy", "© 2026 Anhar Corporation. All rights reserved.")
        End If
    End Sub

    Private Sub SetNode(ByVal doc As XmlDocument, ByVal key As String, ByVal value As String)
        EnsureChild(doc, key).InnerText = value
    End Sub
End Module
