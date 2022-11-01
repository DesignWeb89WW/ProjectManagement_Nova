Public Class Main
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim pagename = Request.Url.Segments.Last().Replace("/", "").Replace(".aspx", "").ToLower
        Dim csspage = $"app-wrapper form-{pagename}"
        form1.Attributes.Add("class", csspage)
    End Sub

End Class