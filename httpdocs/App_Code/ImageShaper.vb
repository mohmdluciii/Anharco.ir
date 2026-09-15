Option Explicit On
Option Strict Off

Imports System
Imports System.Collections.Generic
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.Drawing.Imaging
Imports System.IO
Imports System.Math
Imports ImageRaster = System.Drawing.Image

''' <summary>
''' Server-side auto-shaping of uploaded images.
''' Every managed slot (slider, gallery tile, news card, portrait...) has a
''' design aspect ratio. Before an upload is stored it is center-cropped /
''' fitted to exactly that ratio and saved as JPEG, so the site's collage
''' grid can never reflow or "randomly crop" when a photo is replaced -
''' whatever the shape of the original file was.
''' Contain-style slots (logos, certificates) are padded onto a transparent
''' canvas instead, so nothing is cut off.
''' </summary>
Public Module ImageShaper

    ''' <summary>True if the bytes decode as a raster image GDI+ can process.</summary>
    Public Function IsDecodableImage(ByVal bytes() As Byte) As Boolean
        If bytes Is Nothing OrElse bytes.Length < 16 Then
            Return False
        End If
        ' SVG is vector - leave it untouched.
        If LooksLikeSvg(bytes) Then
            Return False
        End If
        Try
            Using ms As New MemoryStream(bytes)
                Using img As ImageRaster = ImageRaster.FromStream(ms)
                    Return img.Width > 0
                End Using
            End Using
        Catch
            Return False
        End Try
    End Function

    Private Function LooksLikeSvg(ByVal bytes() As Byte) As Boolean
        Try
            Dim head As String = System.Text.Encoding.ASCII.GetString(bytes, 0, Math.Min(bytes.Length, 300)).ToLowerInvariant()
            Return head.Contains("<svg") OrElse head.Contains("<?xml")
        Catch
            Return False
        End Try
    End Function

    ''' <summary>
    ''' Reshapes raw image bytes to the given frame. cover = fill the frame and
    ''' center-crop the overflow; contain = letterbox the whole image inside.
    ''' Returns Nothing when the input is not a processable bitmap.
    ''' </summary>
    Public Function Shape(ByVal bytes() As Byte, ByVal frameW As Integer, ByVal frameH As Integer, ByVal mode As String) As Byte()
        If bytes Is Nothing OrElse bytes.Length = 0 Then
            Return Nothing
        End If
        If LooksLikeSvg(bytes) Then
            Return Nothing
        End If
        If frameW < 1 OrElse frameH < 1 Then
            Return Nothing
        End If
        Try
            Dim src As ImageRaster = Nothing
            Try
                Using ms As New MemoryStream(bytes)
                    src = ImageRaster.FromStream(ms)
                End Using
            Catch
                Return Nothing
            End Try

            Using src
                Dim sw As Integer = src.Width
                Dim sh As Integer = src.Height
                If sw < 1 OrElse sh < 1 Then
                    Return Nothing
                End If

                ' Long side cap keeps server memory sane for huge photos.
                Const maxLong As Integer = 2000
                Dim frameRatio As Double = CDbl(frameW) / CDbl(frameH)

                Dim outW As Integer
                Dim outH As Integer
                Dim drawX As Integer = 0
                Dim drawY As Integer = 0
                Dim drawW As Integer
                Dim drawH As Integer

                Dim cover As Boolean = Not (mode = "contain")
                If cover Then
                    ' Output exactly the frame ratio; crop source overflow.
                    If sw / CDbl(sh) > frameRatio Then
                        drawH = sh
                        drawW = CInt(Math.Round(sh * frameRatio))
                        drawX = (sw - drawW) \ 2
                        drawY = 0
                    Else
                        drawW = sw
                        drawH = CInt(Math.Round(sw / frameRatio))
                        drawX = 0
                        drawY = (sh - drawH) \ 2
                    End If
                    outW = drawW
                    outH = drawH
                    If outW > maxLong Then
                        Dim k As Double = maxLong / CDbl(outW)
                        outW = maxLong
                        outH = CInt(Math.Round(outH * k))
                    End If
                    If outH > maxLong Then
                        Dim k2 As Double = maxLong / CDbl(outH)
                        outH = maxLong
                        outW = CInt(Math.Round(outW * k2))
                    End If
                Else
                    ' Fit whole image inside the frame ratio, no cropping.
                    outW = sw
                    outH = CInt(Math.Round(sw / frameRatio))
                    If outH > sh Then
                        outH = sh
                        outW = CInt(Math.Round(sh * frameRatio))
                    End If
                    If outW > maxLong Then
                        Dim k3 As Double = maxLong / CDbl(outW)
                        outW = maxLong
                        outH = CInt(Math.Round(outH * k3))
                    End If
                    drawW = outW
                    drawH = outH
                End If

                Using dst As New Bitmap(outW, outH, PixelFormat.Format24bppRgb)
                    Using g As Graphics = Graphics.FromImage(dst)
                        g.Clear(Color.White)
                        g.InterpolationMode = InterpolationMode.HighQualityBicubic
                        g.SmoothingMode = SmoothingMode.HighQuality
                        g.PixelOffsetMode = PixelOffsetMode.HighQuality
                        Dim attrs As New ImageAttributes()
                        attrs.SetWrapMode(WrapMode.TileFlipXY)
                        Dim rect As New Rectangle(0, 0, outW, outH)
                        If cover Then
                            g.DrawImage(src, rect, drawX, drawY, drawW, drawH, GraphicsUnit.Pixel, attrs)
                        Else
                            ' Letterbox: scale source to fit, center on white.
                            Dim scale As Double = Min(outW / CDbl(sw), outH / CDbl(sh))
                            Dim fw As Integer = Max(1, CInt(Math.Round(sw * scale)))
                            Dim fh As Integer = Max(1, CInt(Math.Round(sh * scale)))
                            Dim fx As Integer = (outW - fw) \ 2
                            Dim fy As Integer = (outH - fh) \ 2
                            g.DrawImage(src, New Rectangle(fx, fy, fw, fh), 0, 0, sw, sh, GraphicsUnit.Pixel, attrs)
                        End If
                    End Using
                    Using msOut As New MemoryStream()
                        Dim jpg As ImageCodecInfo = JpegCodec()
                        Dim ep As New EncoderParameters(1)
                        ep.Param(0) = New EncoderParameter(Encoder.Quality, 88L)
                        If jpg IsNot Nothing Then
                            dst.Save(msOut, jpg, ep)
                        Else
                            dst.Save(msOut, ImageFormat.Jpeg)
                        End If
                        ' Keep the smaller of (reshaped, original).
                        If msOut.Length < bytes.Length Then
                            Return msOut.ToArray()
                        End If
                        Return bytes
                    End Using
                End Using
            End Using
        Catch
            ' Never fail an upload because shaping was impossible.
            Return Nothing
        End Try
    End Function

    Private Function JpegCodec() As ImageCodecInfo
        Dim codecs As ImageCodecInfo() = ImageCodecInfo.GetImageEncoders()
        Dim c As ImageCodecInfo
        For Each c In codecs
            If c.FormatID = ImageFormat.Jpeg.Guid Then
                Return c
            End If
        Next
        Return Nothing
    End Function

End Module
