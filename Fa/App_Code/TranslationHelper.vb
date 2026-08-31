Option Explicit On
Option Strict Off

Imports System.Net
Imports System.Web
Imports System.Text.RegularExpressions
Imports System.Text
Imports System.IO

''' <summary>
''' Auto-translate Persian text to English and Arabic using MyMemory free API.
''' Writes directly to the other language XML files using absolute paths.
''' </summary>
Public Module TranslationHelper

    ''' <summary>
    ''' Translates text from one language to another using MyMemory API.
    ''' </summary>
    Public Function TranslateText(ByVal text As String, ByVal sourceLang As String, ByVal targetLang As String) As String
        If String.IsNullOrEmpty(text) OrElse String.IsNullOrEmpty(sourceLang) OrElse String.IsNullOrEmpty(targetLang) Then
            Return text
        End If
        If sourceLang.Equals(targetLang, StringComparison.OrdinalIgnoreCase) Then
            Return text
        End If
        Try
            Dim url As String = "https://api.mymemory.translated.net/get?q=" & HttpUtility.UrlEncode(text) & "&langpair=" & sourceLang & "|" & targetLang
            Dim client As New WebClient()
            client.Headers.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64)")
            Dim result As String = client.DownloadString(url)
            client.Dispose()
            Return ParseMyMemoryResult(result)
        Catch
            Return text
        End Try
    End Function

    ''' <summary>
    ''' Parses the MyMemory JSON response and returns the translated text.
    ''' </summary>
    Private Function ParseMyMemoryResult(ByVal json As String) As String
        If String.IsNullOrEmpty(json) Then
            Return ""
        End If
        Try
            Dim match As Match = Regex.Match(json, """translatedText""\s*:\s*""([^""]+)""")
            If match.Success Then
                Dim translated As String = match.Groups(1).Value
                translated = DecodeUnicodeEscapes(translated)
                Return translated
            End If
            Return ""
        Catch
            Return ""
        End Try
    End Function

    ''' <summary>
    ''' Decodes Unicode escape sequences like \u0627\u0644... into actual characters.
    ''' Compatible with .NET Framework 2.0 (no Lambda required).
    ''' </summary>
    Private Function DecodeUnicodeEscapes(ByVal input As String) As String
        If String.IsNullOrEmpty(input) Then
            Return input
        End If
        Dim sb As New StringBuilder()
        Dim i As Integer = 0
        While i < input.Length
            If i + 5 < input.Length AndAlso input.Substring(i, 2) = "\u" Then
                Dim hex As String = input.Substring(i + 2, 4)
                Dim isValidHex As Boolean = True
                Dim j As Integer = 0
                While j < 4
                    Dim ch As Char = hex(j)
                    If Not ((ch >= "0"c AndAlso ch <= "9"c) OrElse (ch >= "a"c AndAlso ch <= "f"c) OrElse (ch >= "A"c AndAlso ch <= "F"c)) Then
                        isValidHex = False
                        Exit While
                    End If
                    j = j + 1
                End While
                If isValidHex Then
                    Dim code As Integer = Integer.Parse(hex, Globalization.NumberStyles.HexNumber)
                    sb.Append(Char.ConvertFromUtf32(code))
                    i = i + 6
                Else
                    sb.Append(input(i))
                    i = i + 1
                End If
            Else
                sb.Append(input(i))
                i = i + 1
            End If
        End While
        Return sb.ToString()
    End Function

    ''' <summary>
    ''' Gets the absolute path to the root of the project (parent of httpdocs, Fa, Ar).
    ''' </summary>
    Private Function GetProjectRoot() As String
        Try
            Dim ctx As HttpContext = HttpContext.Current
            Dim currentDir As String = ctx.Server.MapPath("~/")
            ' Current site is in httpdocs, Fa, or Ar - go up one level to get root
            Return Directory.GetParent(currentDir.TrimEnd(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar)).FullName
        Catch
            Return ""
        End Try
    End Function

    ''' <summary>
    ''' Gets the XML file path for a specific language site.
    ''' </summary>
    Private Function GetXmlPathForLang(ByVal lang As String) As String
        Dim root As String = GetProjectRoot()
        If String.IsNullOrEmpty(root) Then Return ""
        Dim siteDir As String = ""
        Select Case lang.ToLowerInvariant()
            Case "fa"
                siteDir = "Fa"
            Case "ar"
                siteDir = "Ar"
            Case "en"
                siteDir = "httpdocs"
            Case Else
                Return ""
        End Select
        Dim xmlPath As String = Path.Combine(Path.Combine(Path.Combine(root, siteDir), "App_Data"), "site-studio.xml")
        If File.Exists(xmlPath) Then
            Return xmlPath
        End If
        Return ""
    End Function

    ''' <summary>
    ''' Sets a value in the XML file for a specific language.
    ''' </summary>
    Private Sub SetXmlValue(ByVal xmlPath As String, ByVal key As String, ByVal value As String)
        If String.IsNullOrEmpty(xmlPath) OrElse Not File.Exists(xmlPath) Then Return
        Try
            Dim doc As New System.Xml.XmlDocument()
            doc.PreserveWhitespace = True
            doc.Load(xmlPath)
            Dim root As System.Xml.XmlElement = doc.DocumentElement
            If root Is Nothing Then
                root = doc.CreateElement("site")
                doc.AppendChild(root)
            End If
            Dim node As System.Xml.XmlNode = root.SelectSingleNode(key)
            If node Is Nothing Then
                node = doc.CreateElement(key)
                root.AppendChild(node)
            End If
            node.InnerText = value
            doc.Save(xmlPath)
        Catch
        End Try
    End Sub

    ''' <summary>
    ''' Auto-translates a value from Persian (fa) to English (en) and Arabic (ar)
    ''' and writes directly to the other language XML files.
    ''' </summary>
    Public Sub AutoTranslateAndSave(ByVal key As String, ByVal persianValue As String)
        If String.IsNullOrEmpty(persianValue) Then
            Return
        End If
        Dim currentLang As String = Globalization.CultureInfo.CurrentUICulture.TwoLetterISOLanguageName.ToLowerInvariant()
        If currentLang <> "fa" Then
            Return
        End If
        If key.EndsWith("_image") OrElse key.EndsWith("_link") OrElse key.EndsWith("_align") Then
            Return
        End If
        If persianValue.Length < 3 Then
            Return
        End If
        Dim hasLetters As Boolean = False
        Dim idx As Integer = 0
        While idx < persianValue.Length
            If Char.IsLetter(persianValue(idx)) Then
                hasLetters = True
                Exit While
            End If
            idx = idx + 1
        End While
        If Not hasLetters Then
            Return
        End If

        Try
            ' Translate to English and save to httpdocs/App_Data/site-studio.xml
            Dim enText As String = TranslateText(persianValue, "fa", "en")
            If Not String.IsNullOrEmpty(enText) AndAlso enText <> persianValue Then
                Dim enPath As String = GetXmlPathForLang("en")
                SetXmlValue(enPath, key, enText)
            End If

            ' Translate to Arabic and save to Ar/App_Data/site-studio.xml
            Dim arText As String = TranslateText(persianValue, "fa", "ar")
            If Not String.IsNullOrEmpty(arText) AndAlso arText <> persianValue Then
                Dim arPath As String = GetXmlPathForLang("ar")
                SetXmlValue(arPath, key, arText)
            End If
        Catch
        End Try
    End Sub

End Module
