Option Explicit On
Option Strict Off

Imports System.Web

Public Class IndexSafe
    Inherits W_ISM.Index1

    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Dim skipSql As Boolean = False
        Try
            Dim host As String = HttpContext.Current.Request.Url.Host.ToLowerInvariant()
            If (host = "localhost" OrElse host = "127.0.0.1") Then
                skipSql = True
            End If
        Catch
        End Try
        If Not skipSql Then
            Dim flags As Reflection.BindingFlags = Reflection.BindingFlags.Instance Or Reflection.BindingFlags.NonPublic
            Dim names() As String = {"init_slidBanner", "init8PicFirstPage", "initTopNews", "initProject_Button"}
            Dim n As String
            For Each n In names
                Try
                    Dim m As Reflection.MethodInfo = GetType(W_ISM.Index1).GetMethod(n, flags)
                    If m IsNot Nothing Then
                        m.Invoke(Me, Nothing)
                    End If
                Catch
                End Try
            Next
        End If
        BindLocalBanners()
    End Sub

    Private Sub BindLocalBanners()
        Dim fallbacks() As String = { _
            "Bananer-Anhar-co-no-1.jpg", _
            "Bananer-Anhar-co-no-2.jpg", _
            "Bananer-Anhar-co-no-3.jpg", _
            "Bananer-Anhar-co-no-4.jpg" _
        }
        Dim i As Integer
        For i = 1 To 4
            Dim desktop As String = Convert.ToString(Session("init_slidBanner" & i))
            Dim bannerUrl As String = ""
            If Not String.IsNullOrEmpty(desktop) Then
                bannerUrl = SiteStudioStore.ResolvePublicUrl("File_TopBanner/" & desktop, "")
                If String.IsNullOrEmpty(bannerUrl) Then
                    bannerUrl = SiteStudioStore.ResolvePublicUrl("images/" & desktop, "")
                End If
            End If
            If String.IsNullOrEmpty(bannerUrl) Then
                bannerUrl = SiteStudioStore.ResolvePublicUrl("images/" & fallbacks(i - 1), "images/" & fallbacks(i - 1))
            End If
            Session("url_slidBanner" & i) = bannerUrl

            Dim mobile As String = Convert.ToString(Session("init_slidBannerMobile" & i))
            Dim mobileUrl As String = ""
            If Not String.IsNullOrEmpty(mobile) Then
                mobileUrl = SiteStudioStore.ResolvePublicUrl("mobile_TopBanner/" & mobile, "")
            End If
            If String.IsNullOrEmpty(mobileUrl) Then
                mobileUrl = bannerUrl
            End If
            Session("url_slidBannerMobile" & i) = mobileUrl
        Next

        SetIfEmpty("name_TopBanner1", "Oil and gas pipelines")
        SetIfEmpty("text_TopBanner1", "Construction and laying of oil and gas transmission pipelines.")
        SetIfEmpty("small_TopBanner1", "More")

        SetIfEmpty("name_TopBanner2", "Gas pressure boosting facilities")
        SetIfEmpty("text_TopBanner2", "Design and construction of gas pressure boosting stations.")
        SetIfEmpty("small_TopBanner2", "More")

        SetIfEmpty("name_TopBanner3", "Construction and building")
        SetIfEmpty("text_TopBanner3", "Civil, building and concrete structure projects.")
        SetIfEmpty("small_TopBanner3", "More")

        SetIfEmpty("name_TopBanner4", "Facilities and equipment")
        SetIfEmpty("text_TopBanner4", "Supply and installation of facilities and field equipment.")
        SetIfEmpty("small_TopBanner4", "More")

        SetIfEmpty("link_TopBanner1", "pipelines.aspx")
        SetIfEmpty("link_TopBanner2", "GasBoosterStation.aspx")
        SetIfEmpty("link_TopBanner3", "building.aspx")
        SetIfEmpty("link_TopBanner4", "FacilitiesEquipment.aspx")

        If String.IsNullOrEmpty(Convert.ToString(Session("initProject_Button"))) Then
            Session("initProject_Button") = "pipelines.aspx"
        End If
        SiteStudioStore.ApplyToCurrentSite(Session)
    End Sub

    Private Sub SetIfEmpty(ByVal key As String, ByVal value As String)
        If String.IsNullOrEmpty(Convert.ToString(Session(key))) Then
            Session(key) = value
        End If
    End Sub
End Class
