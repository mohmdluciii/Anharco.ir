Option Explicit On
Option Strict Off

Public Class Safe_News1
    Inherits W_ISM.News1
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
        SiteStudioStore.ApplyToCurrentSite(Session)
    End Sub
End Class

Public Class Safe_NewsShow1
    Inherits W_ISM.NewsShow1
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        SiteStudioStore.ApplyToCurrentSite(Session)
        Dim idx As Integer = 1
        Dim raw As String = Convert.ToString(Request("n"))
        If String.IsNullOrEmpty(raw) Then
            raw = Convert.ToString(Request("id"))
        End If
        Integer.TryParse(raw, idx)
        Session("initDetNews") = SiteStudioStore.NewsDetailHtml(idx)
    End Sub
End Class

Public Class Safe_Gallery1
    Inherits W_ISM.Gallery1
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
    End Sub
End Class

Public Class Safe_Certificates1
    Inherits W_ISM.Certificates1
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
        SiteStudioStore.ApplyToCurrentSite(Session)
    End Sub
End Class

Public Class Safe_Acknowledgments
    Inherits W_ISM.Acknowledgments
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
        SiteStudioStore.ApplyToCurrentSite(Session)
    End Sub
End Class

Public Class Safe_GasBoosterStation
    Inherits W_ISM.GasBoosterStation
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
        If String.IsNullOrEmpty(Convert.ToString(Session("initProject"))) Then
            Session("initProject") = LocalProjectFallback.GasBoosterHtml()
        End If
    End Sub
End Class

Public Class Safe_pipelines
    Inherits W_ISM.pipelines
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        SiteStudioStore.ApplyToCurrentSite(Session)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
        If String.IsNullOrEmpty(Convert.ToString(Session("initProject_pipelines"))) Then
            Session("initProject_pipelines") = LocalProjectFallback.PipelinesHtml()
        End If
    End Sub
End Class

Public Class Safe_building
    Inherits W_ISM.building
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
        If String.IsNullOrEmpty(Convert.ToString(Session("initProjectbuilding"))) Then
            Session("initProjectbuilding") = LocalProjectFallback.BuildingHtml()
        End If
    End Sub
End Class

Public Class Safe_FacilitiesEquipment
    Inherits W_ISM.FacilitiesEquipment
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
        If String.IsNullOrEmpty(Convert.ToString(Session("initProjectFacilitiesEquipment"))) Then
            Session("initProjectFacilitiesEquipment") = LocalProjectFallback.FacilitiesHtml()
        End If
    End Sub
End Class

Public Class Safe_WateTransmissionPipelines
    Inherits W_ISM.WateTransmissionPipelines
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
        Dim waterHtml As String = LocalProjectFallback.WaterHtml()
        If String.IsNullOrEmpty(Convert.ToString(Session("initWateTransmissionPipelines"))) Then
            Session("initWateTransmissionPipelines") = waterHtml
        End If
        If String.IsNullOrEmpty(Convert.ToString(Session("initProjectWateTransmissionPipelines"))) Then
            Session("initProjectWateTransmissionPipelines") = waterHtml
        End If
    End Sub
End Class

Public Class Safe_DesignServices
    Inherits W_ISM.DesignServices
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
    End Sub
End Class

Public Class Safe_BuyServices
    Inherits W_ISM.BuyServices
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
    End Sub
End Class

Public Class Safe_OperationsServices
    Inherits W_ISM.OperationsServices
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
    End Sub
End Class

Public Class Safe_AboutUs1
    Inherits W_ISM.AboutUs1
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
    End Sub
End Class

Public Class Safe_History1
    Inherits W_ISM.History1
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
    End Sub
End Class

Public Class Safe_ContactUS
    Inherits W_ISM.ContactUS
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
    End Sub
End Class

Public Class Safe_ContactManagement
    Inherits W_ISM.ContactManagement
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        HttpContext.Current.Response.Redirect("ContactUs.aspx", False)
        HttpContext.Current.ApplicationInstance.CompleteRequest()
    End Sub
End Class

Public Class Safe_MessageCEO
    Inherits W_ISM.MessageCEO
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
    End Sub
End Class

Public Class Safe_leadership
    Inherits W_ISM.leadership
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
    End Sub
End Class

Public Class Safe_Employers
    Inherits W_ISM.Employers
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
    End Sub
End Class

Public Class Safe_Empty
    Inherits W_ISM.Empty
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        If Request IsNot Nothing AndAlso Request.Form IsNot Nothing Then
            Dim eventTarget As String = Convert.ToString(Request.Form("__EVENTTARGET"))
            If eventTarget = "ResetVisits" Then
                Dim ok As Boolean = False
                Dim msg As String = ""
                Try
                    SiteVisits.ResetVisits()
                    ok = True
                Catch ex As Exception
                    msg = ex.Message
                End Try
                If ok Then
                    Session("PanelMsg") = "آمار بازدید با موفقیت ریست شد."
                    If DataDir.ModeName() <> "App_Data" Then
                        Session("PanelMsg") &= " (حالت ذخیره‌سازی: " & DataDir.ModeLabelFa() & ")"
                    End If
                Else
                    Session("PanelMsg") = "ریست آمار انجام نشد: " & msg
                End If
                Response.Redirect("Empty.aspx", False)
                Context.ApplicationInstance.CompleteRequest()
                Return
            End If
        End If
        Try
            LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
        Catch
        End Try
    End Sub
End Class

Public Class Safe_KartablePerson
    Inherits W_ISM.KartablePerson
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
    End Sub
End Class

Public Class Safe_Links1
    Inherits W_ISM.Links1
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
        If String.IsNullOrEmpty(Convert.ToString(Session("init_Links"))) Then
            Session("init_Links") = "<ul class=""studioLinks""><li><a href=""http://www.anharco.ir"">Anhar Co.</a></li><li><a href=""https://fa.anharco.ir"">Anhar FA</a></li><li><a href=""https://ar.anharco.ir"">Anhar AR</a></li></ul>"
        End If
    End Sub
End Class

Public Class Safe_FielsDownload
    Inherits W_ISM.FielsDownload
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
        If String.IsNullOrEmpty(Convert.ToString(Session("initFilesDownload"))) Then
            Session("initFilesDownload") = "<p>Download files are managed from the admin panel.</p>"
        End If
    End Sub
End Class

Public Class Safe_Indexer_Search
    Inherits W_ISM.Indexer_Search
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Try
            MyBase.OnLoad(e)
        Catch
        End Try
    End Sub
End Class

