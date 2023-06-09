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

    Protected Sub RptAnnounce_ItemDataBound(sender As Object, e As RepeaterItemEventArgs)
        Dim rpi = e.Item

        If rpi.ItemType = ListItemType.Item Or rpi.ItemType = ListItemType.AlternatingItem Then
            Dim hdfitem_acccontent As HiddenField = rpi.FindControl("hdfitem_acccontent")
            Dim ltitem_content As Literal = rpi.FindControl("ltitem_content")

            Dim anncontent = hdfitem_acccontent.Value
            Dim val_decode = Server.HtmlDecode(anncontent)
            ltitem_content.Text = val_decode
        End If
    End Sub
End Class