Public Class Request_Form
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim type = Request.Url.Segments(2).Replace("/", "")

            Select Case type
                Case "new"
                    reqTabs.Visible = False
                Case "edit"
                    Dim idkey = Request.Url.Segments.Last.Replace("/", "")
                    Dim tabval = Request.QueryString("tab")

                    hpltab_d.NavigateUrl = $"~/requests/edit/{idkey}?tab=d"
                    hpltab_f.NavigateUrl = $"~/requests/edit/{idkey}?tab=f"

                    Select Case tabval
                        Case "f"
                            Pnl_Detail.Visible = False
                            Pnl_File.Visible = True

                            hpltab_f.CssClass += " active"
                        Case Else
                            Pnl_Detail.Visible = True
                            Pnl_File.Visible = False

                            hpltab_d.CssClass += " active"
                    End Select
            End Select
        End If
    End Sub

End Class