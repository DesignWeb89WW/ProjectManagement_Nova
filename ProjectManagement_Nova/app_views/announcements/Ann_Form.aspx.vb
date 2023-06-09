Public Class Ann_Form
    Inherits System.Web.UI.Page
    Private ReadOnly UIC As New UI_Announce

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim urlcheck = Request.Url.Segments.Last.Replace("/", "")
            If IsNumeric(urlcheck) Then
                Dim idnum = urlcheck

                Dim dr = UIC.GrabAnncByID(idnum)
                If dr.HasRows Then
                    While dr.Read
                        TxtAnnc_Title.Text = dr.Item("annc_title")
                        Dim anncontent = dr.Item("annc_content")
                        Dim val_decode = Server.HtmlDecode(anncontent)
                        descriptionTextBox.Text = val_decode
                    End While
                End If
            End If
        End If
    End Sub

    Protected Sub CreateAnnouncement(sender As Object, e As EventArgs) Handles BtnCreate.Click
        Dim urlcheck = Request.Url.Segments.Last.Replace("/", "")
        If IsNumeric(urlcheck) Then
            Dim idnum = urlcheck
            Dim val = descriptionTextBox.Text
            Dim val_encode = Server.HtmlEncode(val) '// This one goes to database

            Dim titleval = TxtAnnc_Title.Text

            UIC.Update_Annc(titleval, val_encode, idnum)
            Response.Redirect(Request.RawUrl)

        Else
            Dim val = descriptionTextBox.Text
            Dim val_encode = Server.HtmlEncode(val) '// This one goes to database

            Dim titleval = TxtAnnc_Title.Text

            UIC.Insert_Annc(titleval, val_encode)
            Response.Redirect(Request.RawUrl)
        End If
        'Dim val_decode = Server.HtmlDecode(val_encode) '// This one for display
        'lttest.Text = val_decode
    End Sub

End Class