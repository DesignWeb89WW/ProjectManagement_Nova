Public Class Dash
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

        If rpi.ItemType = ListItemType.AlternatingItem Or rpi.ItemType = ListItemType.Item Then
            Dim ltitem_news As Literal = rpi.FindControl("ltitem_news")
            Dim val_encode = ltitem_news.Text
            Dim val_decode = Server.HtmlDecode(val_encode)
            ltitem_news.Text = val_decode
        End If
    End Sub
End Class