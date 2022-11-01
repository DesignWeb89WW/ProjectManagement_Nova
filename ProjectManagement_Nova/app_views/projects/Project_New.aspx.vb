Public Class Project_New
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnNew_Click(sender As Object, e As EventArgs) Handles BtnNew.Click
        Response.Redirect("~/projects/edit/1?tab=f", True)
    End Sub
End Class