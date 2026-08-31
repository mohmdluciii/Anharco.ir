Option Explicit On
Option Strict Off

Partial Class InputToPanelLocal
    Inherits System.Web.UI.Page

    Private Const LocalUser As String = "admin"
    Private Const LocalPass As String = "1234"
    Private Const LocalCode As String = "1234"
    Private Const LocalPersonUser As String = "person"
    Private Const LocalPersonPass As String = "1234"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Request("e") = "1" AndAlso Not IsPostBack Then
            LocalPanelSupport.ClearAuth()
            Response.Redirect("InputToPanel.aspx?mode=" & CurrentMode(), True)
            Return
        End If

        If Not IsPostBack Then
            hfMode.Value = CurrentMode()
        End If

        ApplyMode()
    End Sub

    Private Function CurrentMode() As String
        Dim mode As String = Convert.ToString(Request("mode"))
        If String.IsNullOrEmpty(mode) Then
            mode = Convert.ToString(hfMode.Value)
        End If
        If String.Equals(mode, "person", StringComparison.OrdinalIgnoreCase) Then
            Return "person"
        End If
        Return "manager"
    End Function

    Private Function IsManagerMode() As Boolean
        Return String.Equals(hfMode.Value, "person", StringComparison.OrdinalIgnoreCase) = False
    End Function

    Private Sub ApplyMode()
        If IsManagerMode() Then
            hfMode.Value = "manager"
            pnlCode.Visible = True
            btnModeManager.CssClass = "buttonStyle onMode"
            btnModePerson.CssClass = "buttonStyle"
            btnModeManager.Style.Remove("background")
            btnModePerson.Style.Remove("background")
        Else
            hfMode.Value = "person"
            pnlCode.Visible = False
            btnModeManager.CssClass = "buttonStyle"
            btnModePerson.CssClass = "buttonStyle onMode"
            btnModeManager.Style.Remove("background")
            btnModePerson.Style.Remove("background")
        End If
    End Sub

    Protected Sub btnModeManager_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnModeManager.Click
        hfMode.Value = "manager"
        lblErr.Text = ""
        ApplyMode()
    End Sub

    Protected Sub btnModePerson_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnModePerson.Click
        hfMode.Value = "person"
        lblErr.Text = ""
        ApplyMode()
    End Sub

    Protected Sub btn_go_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_go.Click
        ' Brute-force protection
        Dim clientIP As String = "unknown"
        Try
            clientIP = HttpContext.Current.Request.UserHostAddress
        Catch
        End Try

        If Not BruteForceGuard.IsAllowed(clientIP) Then
            Dim waitSec As Integer = BruteForceGuard.WaitSeconds(clientIP)
            Dim waitMin As Integer = CInt(Math.Ceiling(waitSec / 60.0))
            lblErr.Text = "تعداد تلاش‌های ناموفق بیش از حد مجاز است. لطفاً " & waitMin.ToString() & " دقیقه صبر کنید."
            ApplyMode()
            Return
        End If

        Dim uid As String = txtUID.Text.Trim()
        Dim pwd As String = txtPWD.Text.Trim()
        Dim code As String = txtcode.Text.Trim()

        Dim loginOk As Boolean = False
        If IsManagerMode() Then
            If (uid = LocalUser AndAlso pwd = LocalPass AndAlso code = LocalCode) OrElse PanelUserStore.ValidateAdmin(uid, pwd, code) Then
                loginOk = True
            End If
        Else
            If (uid = LocalPersonUser AndAlso pwd = LocalPersonPass) OrElse PanelUserStore.ValidatePerson(uid, pwd) Then
                loginOk = True
            End If
        End If

        If loginOk Then
            BruteForceGuard.ClearFailures(clientIP)
            If IsManagerMode() Then
                LocalPanelSupport.BindAdminSession(uid)
                Response.Redirect("empty.aspx", True)
            Else
                LocalPanelSupport.BindPersonSession(uid)
                Response.Redirect("KartablePerson.aspx", True)
            End If
            Return
        End If

        BruteForceGuard.RecordFailure(clientIP)
        lblErr.Text = "نام کاربری یا رمز اشتباه است"
        ApplyMode()
    End Sub
End Class
