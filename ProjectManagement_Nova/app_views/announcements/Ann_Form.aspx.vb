Public Class Ann_Form
    Inherits System.Web.UI.Page
    Private ReadOnly UIC As New UI_Announce

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub CreateAnnouncement(sender As Object, e As EventArgs) Handles BtnCreate.Click
        Dim val = descriptionTextBox.Text
        Dim val_encode = Server.HtmlEncode(val) '// This one goes to database

        Dim titleval = TxtAnnc_Title.Text

        UIC.Insert_Annc(titleval, val_encode)
        Response.Redirect(Request.RawUrl)
        'Dim val_decode = Server.HtmlDecode(val_encode) '// This one for display
        'lttest.Text = val_decode
    End Sub

End Class