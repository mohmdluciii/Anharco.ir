Option Explicit On
Option Strict Off

Imports System.Collections.Generic
Imports System.IO
Imports System.Text
Imports System.Web

''' <summary>
''' Central resolver for writable data storage with automatic fallback:
'''   1) ~/App_Data  (normal case)
'''   2) ~/SiteData  (auto-created at site root, protected from HTTP access)
'''   3) In-memory   (last resort; data lives until the application restarts)
''' Known XML data files are migrated from App_Data to SiteData automatically.
''' The decision is cached for 10 minutes (negative results are re-probed later,
''' so fixing permissions on the host takes effect without a redeploy).
''' </summary>
Public Module DataDir
    Public Const FallbackFolderName As String = "SiteData"
    Private Const ProbeFileName As String = "anhar-write-test.tmp"

    Private ReadOnly KnownDataFiles() As String = {"panel-users.xml", "site-visits.xml", "site-studio.xml"}

    Private Const ModeUnresolved As Integer = 0
    Private Const ModeAppData As Integer = 1
    Private Const ModeSiteData As Integer = 2
    Private Const ModeMemory As Integer = 3

    Private ReadOnly _lock As New Object()
    Private _mode As Integer = ModeUnresolved
    Private _dir As String = ""
    Private _resolvedAt As DateTime = DateTime.MinValue

    Private ReadOnly _probeLock As New Object()
    Private ReadOnly _probeCache As New Dictionary(Of String, ProbeResult)(StringComparer.OrdinalIgnoreCase)

    Private ReadOnly _memLock As New Object()
    Private ReadOnly _mem As New Dictionary(Of String, String)(StringComparer.OrdinalIgnoreCase)

    Private Class ProbeResult
        Public Ok As Boolean
        Public CheckedAt As DateTime
    End Class

    ''' <summary>Physical path of this site's root (no trailing slash), or "" if unknown.</summary>
    Public Function AppRoot() As String
        Dim ctx As HttpContext = HttpContext.Current
        If ctx IsNot Nothing Then
            Try
                Return ctx.Server.MapPath("~/").TrimEnd("\"c, "/"c)
            Catch
            End Try
        End If
        Try
            Return HttpRuntime.AppDomainAppPath.TrimEnd("\"c, "/"c)
        Catch
        End Try
        Return ""
    End Function

    ''' <summary>True if the given directory accepts create + write (+ delete best effort).</summary>
    Public Function ProbeWritable(ByVal dir As String) As Boolean
        If String.IsNullOrEmpty(dir) Then
            Return False
        End If
        Dim key As String = dir.ToLowerInvariant()
        Dim now As DateTime = DateTime.UtcNow
        SyncLock _probeLock
            Dim cached As ProbeResult = Nothing
            If _probeCache.TryGetValue(key, cached) Then
                If cached.Ok Then
                    Return True
                End If
                ' Re-probe failures after 10 minutes so host permission fixes take effect.
                If now.Subtract(cached.CheckedAt).TotalMinutes < 10 Then
                    Return False
                End If
            End If
        End SyncLock
        Dim ok As Boolean = False
        Try
            If Not Directory.Exists(dir) Then
                Directory.CreateDirectory(dir)
            End If
            Dim probe As String = Path.Combine(dir, ProbeFileName)
            File.WriteAllText(probe, "ok")
            Try
                File.Delete(probe)
            Catch
            End Try
            ok = True
        Catch
            ok = False
        End Try
        SyncLock _probeLock
            Dim r As New ProbeResult()
            r.Ok = ok
            r.CheckedAt = now
            _probeCache(key) = r
        End SyncLock
        Return ok
    End Function

    ''' <summary>Forgets a cached probe result so the next ProbeWritable call
    ''' re-tests the folder. Called when a real write fails despite a cached
    ''' "writable" verdict (host permissions changed after app start).</summary>
    Public Sub InvalidateProbe(ByVal dir As String)
        If String.IsNullOrEmpty(dir) Then
            Return
        End If
        SyncLock _probeLock
        _probeCache.Remove(dir.ToLowerInvariant())
        End SyncLock
    End Sub

    ''' <summary>
    ''' Resolves the active data directory. A Memory verdict is retried every
    ''' 10 minutes so granting write permission on the host takes effect
    ''' WITHOUT an application restart.
    ''' </summary>
    Public Function GetDir() As String
        SyncLock _lock
            If _mode = ModeMemory Then
                If DateTime.UtcNow.Subtract(_resolvedAt).TotalMinutes < 10 Then
                    Return _dir
                End If
            ElseIf _mode <> ModeUnresolved Then
                Return _dir
            End If
            Dim root As String = AppRoot()
            If root <> "" Then
                Dim appData As String = Path.Combine(root, "App_Data")
                If ProbeWritable(appData) Then
                    _mode = ModeAppData
                    _dir = appData
                    _resolvedAt = DateTime.UtcNow
                    Return _dir
                End If
                Dim siteData As String = Path.Combine(root, FallbackFolderName)
                If ProbeWritable(siteData) Then
                    EnsureHttpProtection(siteData)
                    MigrateKnownFiles(appData, siteData)
                    _mode = ModeSiteData
                    _dir = siteData
                    _resolvedAt = DateTime.UtcNow
                    Return _dir
                End If
            End If
            _mode = ModeMemory
            _dir = ""
            _resolvedAt = DateTime.UtcNow
            Return ""
        End SyncLock
    End Function

    ''' <summary>Machine name of the active storage mode: App_Data / SiteData / Memory.</summary>
    Public Function ModeName() As String
        Select Case GetMode()
            Case ModeAppData
                Return "App_Data"
            Case ModeSiteData
                Return FallbackFolderName
            Case Else
                Return "Memory"
        End Select
    End Function

    ''' <summary>Persian label of the active storage mode (for panel messages).</summary>
    Public Function ModeLabelFa() As String
        Select Case GetMode()
            Case ModeAppData
                Return "پوشه App_Data"
            Case ModeSiteData
                Return "پوشه جایگزین SiteData"
            Case Else
                Return "حافظه موقت (با ری‌استارت برنامه بازمی‌گردد)"
        End Select
    End Function

    Public Function IsMemoryOnly() As Boolean
        Return GetMode() = ModeMemory
    End Function

    Private Function GetMode() As Integer
        GetDir()
        Return _mode
    End Function

    ''' <summary>Full path for a data file of THIS site, or "" in memory mode.</summary>
    Public Function GetDataFile(ByVal name As String) As String
        Dim d As String = GetDir()
        If d = "" Then
            Return ""
        End If
        Return Path.Combine(d, name)
    End Function

    ''' <summary>
    ''' Writable folder for uploaded media (site images) of the CURRENT site.
    ''' Lives inside the active data directory (App_Data or SiteData), so
    ''' whatever location is writable for XML is writable for images too.
    ''' Returns "" in memory mode.
    ''' </summary>
    Public Function MediaDir() As String
        Return MediaDirFor(AppRoot())
    End Function

    ''' <summary>
    ''' Writable media folder of an arbitrary site root (sibling-language sites).
    ''' Uses the SAME rule as GetDataFileFor(): writable App_Data first, then
    ''' SiteData, so every language site stores its own images where it can
    ''' write - and its own ImageStream.ashx serves them from the same place.
    ''' </summary>
    Public Function MediaDirFor(ByVal siteRoot As String) As String
        If String.IsNullOrEmpty(siteRoot) Then
            Return ""
        End If
        If String.Equals(siteRoot, AppRoot(), StringComparison.OrdinalIgnoreCase) Then
            Dim d As String = GetDir()
            If d = "" Then
                Return ""
            End If
            Dim m As String = Path.Combine(d, "media")
            If Not Directory.Exists(m) Then
                Try
                    Directory.CreateDirectory(m)
                Catch
                End Try
            End If
            Return m
        End If
        Dim appData As String = Path.Combine(siteRoot, "App_Data")
        If ProbeWritable(appData) Then
            Dim m1 As String = Path.Combine(appData, "media")
            If Not Directory.Exists(m1) Then
                Try
                    Directory.CreateDirectory(m1)
                Catch
                End Try
            End If
            Return m1
        End If
        Dim siteData As String = Path.Combine(siteRoot, FallbackFolderName)
        If ProbeWritable(siteData) Then
            EnsureHttpProtection(siteData)
            MigrateKnownFiles(appData, siteData)
            Dim m2 As String = Path.Combine(siteData, "media")
            If Not Directory.Exists(m2) Then
                Try
                    Directory.CreateDirectory(m2)
                Catch
                End Try
            End If
            Return m2
        End If
        Return ""
    End Function

    ''' <summary>
    ''' Ordered candidate media folders of a site root: the resolved data
    ''' dir's media folder first, then App_Data\media, then SiteData\media.
    ''' SaveImageAnywhere tries each with a REAL write at save time, so a
    ''' stale cached verdict can never route an upload into a denied folder.
    ''' </summary>
    Public Function MediaCandidatesFor(ByVal siteRoot As String) As List(Of String)
        ' NOTE: plain New List(Of String) - the comparer overload is not a valid
        ' constructor in VB and throws InvalidCastException at runtime.
        Dim list As New List(Of String)
        If String.IsNullOrEmpty(siteRoot) Then
            Return list
        End If
        ' Some hosts (Plesk) allow writing FILES in App_Data but deny creating
        ' SUBFOLDERS. The data-dir ROOT itself therefore is a candidate too -
        ' images saved directly next to the XML files need no folder creation.
        If String.Equals(siteRoot, AppRoot(), StringComparison.OrdinalIgnoreCase) Then
            Dim d As String = GetDir()
            If d <> "" Then
                AddDirUnique(list, d)
                AddDirUnique(list, d & IO.Path.DirectorySeparatorChar & "media")
            End If
        End If
        Dim appData As String = Path.Combine(siteRoot, "App_Data")
        AddDirUnique(list, appData)
        AddDirUnique(list, appData & IO.Path.DirectorySeparatorChar & "media")
        Dim siteData As String = Path.Combine(siteRoot, FallbackFolderName)
        AddDirUnique(list, siteData)
        AddDirUnique(list, siteData & IO.Path.DirectorySeparatorChar & "media")
        Return list
    End Function

    ''' <summary>Adds a directory to the list (case-insensitive dedupe).</summary>
    Private Sub AddDirUnique(ByVal list As List(Of String), ByVal dir As String)
        If String.IsNullOrEmpty(dir) Then
            Return
        End If
        Dim item As String
        For Each item In list
            If String.Equals(item, dir, StringComparison.OrdinalIgnoreCase) Then
                Return
            End If
        Next
        list.Add(dir)
    End Sub

    ''' <summary>
    ''' Picks the active location of a data file under an arbitrary site root
    ''' (sibling-language sites). Uses the SAME rule as GetDir(): writable
    ''' App_Data first, then SiteData, so all apps agree on one location.
    ''' </summary>
    Public Function GetDataFileFor(ByVal siteRoot As String, ByVal name As String) As String
        If String.IsNullOrEmpty(siteRoot) Then
            Return ""
        End If
        If String.Equals(siteRoot, AppRoot(), StringComparison.OrdinalIgnoreCase) Then
            Return GetDataFile(name)
        End If
        Dim appData As String = Path.Combine(siteRoot, "App_Data")
        If ProbeWritable(appData) Then
            Return Path.Combine(appData, name)
        End If
        Dim siteData As String = Path.Combine(siteRoot, FallbackFolderName)
        If ProbeWritable(siteData) Then
            EnsureHttpProtection(siteData)
            MigrateKnownFiles(appData, siteData)
            Return Path.Combine(siteData, name)
        End If
        Return Path.Combine(appData, name)
    End Function

    ''' <summary>Returns the path where a data file already exists (SiteData copy wins), or "".</summary>
    Public Function PreferredExistingFile(ByVal siteRoot As String, ByVal name As String) As String
        If String.IsNullOrEmpty(siteRoot) OrElse String.IsNullOrEmpty(name) Then
            Return ""
        End If
        Dim p As String = Path.Combine(Path.Combine(siteRoot, FallbackFolderName), name)
        If File.Exists(p) Then
            Return p
        End If
        p = Path.Combine(Path.Combine(siteRoot, "App_Data"), name)
        If File.Exists(p) Then
            Return p
        End If
        Return ""
    End Function

    ''' <summary>Stores an XML document text in the in-memory (last resort) store.</summary>
    Public Sub MemSet(ByVal name As String, ByVal xmlText As String)
        SyncLock _memLock
            If xmlText Is Nothing Then
                _mem.Remove(name)
            Else
                _mem(name) = xmlText
            End If
        End SyncLock
    End Sub

    ''' <summary>Reads an XML document text from the in-memory store, or Nothing.</summary>
    Public Function MemGet(ByVal name As String) As String
        SyncLock _memLock
            Dim v As String = Nothing
            If _mem.TryGetValue(name, v) Then
                Return v
            End If
        End SyncLock
        Return Nothing
    End Function

    Public Function MemHas(ByVal name As String) As Boolean
        SyncLock _memLock
            Return _mem.ContainsKey(name)
        End SyncLock
    End Function

    Private Sub MigrateKnownFiles(ByVal srcDir As String, ByVal dstDir As String)
        If String.IsNullOrEmpty(srcDir) OrElse String.IsNullOrEmpty(dstDir) Then
            Return
        End If
        Dim f As String
        For Each f In KnownDataFiles
            Try
                Dim src As String = Path.Combine(srcDir, f)
                Dim dst As String = Path.Combine(dstDir, f)
                If File.Exists(src) AndAlso Not File.Exists(dst) Then
                    File.Copy(src, dst, False)
                End If
            Catch
            End Try
        Next
    End Sub

    ''' <summary>Blocks HTTP access to the fallback folder via a generated web.config.</summary>
    Private Sub EnsureHttpProtection(ByVal dir As String)
        Try
            If Not Directory.Exists(dir) Then
                Return
            End If
            Dim cfg As String = Path.Combine(dir, "web.config")
            If File.Exists(cfg) Then
                Return
            End If
            Dim xml As String = "<?xml version=""1.0"" encoding=""utf-8""?>" & vbCrLf & _
                "<configuration>" & vbCrLf & _
                "  <system.web>" & vbCrLf & _
                "    <authorization><deny users=""*"" /></authorization>" & vbCrLf & _
                "  </system.web>" & vbCrLf & _
                "  <system.webServer>" & vbCrLf & _
                "    <validation validateIntegratedModeConfiguration=""false"" />" & vbCrLf & _
                "    <handlers><remove name=""StaticFile"" /></handlers>" & vbCrLf & _
                "  </system.webServer>" & vbCrLf & _
                "</configuration>"
            File.WriteAllText(cfg, xml, Encoding.UTF8)
        Catch
        End Try
    End Sub

    ''' <summary>Diagnostic status table (inline styles; used by DataStatus.aspx).</summary>
    Public Function StatusHtml() As String
        Dim root As String = AppRoot()
        Dim appData As String = ""
        Dim siteData As String = ""
        If root <> "" Then
            appData = Path.Combine(root, "App_Data")
            siteData = Path.Combine(root, FallbackFolderName)
        End If
        Dim sb As New StringBuilder()
        sb.Append("<table class=""dataStatusTable"" style=""width:100%;border-collapse:collapse;font-size:13px;background:#fff"">")
        AddRow(sb, "حالت فعال ذخیره‌سازی", ModeLabelFa(), False)
        AddRow(sb, "مسیر ریشه سایت", root, True)
        AddRow(sb, "App_Data", DescribeDir(appData), True)
        AddRow(sb, FallbackFolderName, DescribeDir(siteData), True)
        If IsMemoryOnly() Then
            sb.Append("<tr><th style=""text-align:right;padding:8px;border-bottom:1px solid #eee;background:#fff3f3;color:#b00;width:190px"">هشدار</th>")
            sb.Append("<td style=""padding:8px;border-bottom:1px solid #eee;color:#b00"">هیچ پوشه‌ای قابل نوشتن نیست؛ داده‌ها موقت هستند و با ری‌استارت برنامه پاک می‌شوند.</td></tr>")
        End If
        Dim f As String
        For Each f In KnownDataFiles
            Dim p As String = GetDataFile(f)
            Dim info As String
            If p = "" Then
                If MemHas(f) Then
                    info = "در حافظه (موقت) ذخیره شده"
                Else
                    info = "در حافظه موقت بارگذاری نشده"
                End If
            ElseIf File.Exists(p) Then
                Dim fi As New FileInfo(p)
                info = fi.FullName & " — " & fi.Length.ToString("N0") & " بایت — آخرین تغییر: " & fi.LastWriteTime.ToString("yyyy/MM/dd HH:mm")
            Else
                info = "هنوز ساخته نشده: " & p
            End If
            AddRow(sb, f, info, True)
        Next
        sb.Append("</table>")
        Return sb.ToString()
    End Function

    Private Sub AddRow(ByVal sb As StringBuilder, ByVal k As String, ByVal v As String, ByVal ltr As Boolean)
        sb.Append("<tr><th style=""text-align:right;padding:8px;border-bottom:1px solid #eee;background:#fafafa;width:190px"">")
        sb.Append(HttpUtility.HtmlEncode(k))
        sb.Append("</th><td style=""padding:8px;border-bottom:1px solid #eee")
        If ltr Then
            sb.Append(";direction:ltr;text-align:left")
        End If
        sb.Append(""">")
        sb.Append(HttpUtility.HtmlEncode(v))
        sb.Append("</td></tr>")
    End Sub

    Private Function DescribeDir(ByVal dir As String) As String
        If String.IsNullOrEmpty(dir) Then
            Return "نامشخص"
        End If
        Dim exists As Boolean = Directory.Exists(dir)
        Dim writable As Boolean = ProbeWritable(dir)
        If exists AndAlso writable Then
            Return dir & " (قابل نوشتن)"
        End If
        If exists Then
            Return dir & " (قابل نوشتن نیست)"
        End If
        Return dir & " (وجود ندارد)"
    End Function
End Module
