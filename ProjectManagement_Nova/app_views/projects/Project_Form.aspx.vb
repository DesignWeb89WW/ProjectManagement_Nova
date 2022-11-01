Public Class Project_Form
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim idkey = Request.Url.Segments.Last.Replace("/", "")
            Dim tabval = Request.QueryString("tab")

            hpltab_file.NavigateUrl = $"~/projects/edit/{idkey}?tab=f"
            hpltab_maintenance.NavigateUrl = $"~/projects/edit/{idkey}?tab=m"
            hpltab_primary.NavigateUrl = $"~/projects/edit/{idkey}?tab=p"

            Select Case tabval
                Case "f"
                    Pnl_Detail.Visible = False
                    Pnl_File.Visible = True
                    Pnl_Maintenance.Visible = False

                    hpltab_file.CssClass += " active"
                Case "m"
                    Pnl_Detail.Visible = False
                    Pnl_File.Visible = False
                    Pnl_Maintenance.Visible = True

                    hpltab_maintenance.CssClass += " active"
                Case Else
                    Pnl_Detail.Visible = True
                    Pnl_File.Visible = False
                    Pnl_Maintenance.Visible = False

                    hpltab_primary.CssClass += " active"
            End Select
        End If
    End Sub

End Class