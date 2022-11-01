Public Class Ann_Listing
    Inherits System.Web.UI.Page
    Private ReadOnly UIC As New UI_Announce

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim objnews = UIC.List_Annc
            RptAnnounce.DataSource = objnews
            RptAnnounce.DataBind()
        End If
    End Sub

End Class