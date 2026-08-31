Option Explicit On
Option Strict Off

Public Class Safe_news_List
    Inherits W_ISM.news_List
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Response.Redirect("SiteStudio.aspx?g=news", True)
    End Sub
End Class

Public Class Safe_news_frm
    Inherits W_ISM.news_frm
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Response.Redirect("SiteStudioEdit.aspx?part=news1", True)
    End Sub
End Class

Public Class Safe_news_Edit
    Inherits W_ISM.news_Edit
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Response.Redirect("SiteStudio.aspx?g=news", True)
    End Sub
End Class

Public Class Safe_Gallery_List
    Inherits W_ISM.Gallery_List
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
    End Sub
End Class

Public Class Safe_Gallery_frm
    Inherits W_ISM.Gallery_frm
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
    End Sub
End Class

Public Class Safe_Gallery_Edit
    Inherits W_ISM.Gallery_Edit
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
    End Sub
End Class

Public Class Safe_Certificate_List
    Inherits W_ISM.Certificate_List
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Response.Redirect("SiteStudio.aspx?g=about", True)
    End Sub
End Class

Public Class Safe_Certificate_frm
    Inherits W_ISM.Certificate_frm
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
    End Sub
End Class

Public Class Safe_Certificate_Edit
    Inherits W_ISM.Certificate_Edit
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
    End Sub
End Class

Public Class Safe_TopBanner_List
    Inherits W_ISM.TopBanner_List
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
    End Sub
End Class

Public Class Safe_TopBanner_frm
    Inherits W_ISM.TopBanner_frm
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
    End Sub
End Class

Public Class Safe_TopBanner_Edit
    Inherits W_ISM.TopBanner_Edit
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
    End Sub
End Class

Public Class Safe_AboutUs_List
    Inherits W_ISM.AboutUs_List
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
    End Sub
End Class

Public Class Safe_AboutUs_frm1
    Inherits W_ISM.AboutUs_frm1
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
    End Sub
End Class

Public Class Safe_AboutUs_Edit
    Inherits W_ISM.AboutUs_Edit
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        LocalPanelSupport.RunPageLoad(Me, e, AddressOf MyBase.OnLoad)
    End Sub
End Class

Public Class Safe_Admin_frm1
    Inherits W_ISM.Admin_frm1
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Response.Redirect("PanelUsers.aspx?kind=admin", True)
    End Sub
End Class

Public Class Safe_Admin_List1
    Inherits W_ISM.Admin_List1
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Response.Redirect("PanelUsers.aspx?kind=admin", True)
    End Sub
End Class

Public Class Safe_Person_frm2
    Inherits W_ISM.Person_frm2
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Response.Redirect("PanelUsers.aspx?kind=person", True)
    End Sub
End Class

Public Class Safe_Person_List2
    Inherits W_ISM.Person_List2
    Protected Overrides Sub OnLoad(ByVal e As EventArgs)
        Response.Redirect("PanelUsers.aspx?kind=person", True)
    End Sub
End Class
