Imports System.Web.Routing
Imports System.Web.SessionState

Public Class Global_asax
    Inherits System.Web.HttpApplication

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the application is started

        RegisterRoutes(RouteTable.Routes)
    End Sub

    Private Sub RegisterRoutes(routes As RouteCollection)
        routes.MapPageRoute("Dashboard", "dashboard", "~/app_views/dashboard/dash.aspx")
        routes.MapPageRoute("Dashboard Blank", "", "~/app_views/dashboard/dash.aspx")

        routes.MapPageRoute("Projects", "projects", "~/app_views/projects/project_listing.aspx")
        routes.MapPageRoute("Project New", "projects/new", "~/app_views/projects/project_new.aspx")
        routes.MapPageRoute("Project Edit", "projects/edit/{0}", "~/app_views/projects/project_form.aspx")
        routes.MapPageRoute("Project View", "projects/view/{0}", "~/app_views/projects/project_view.aspx")

        routes.MapPageRoute("Request", "requests", "~/app_views/request/request_listing.aspx")
        routes.MapPageRoute("Request - MR", "requests/mr", "~/app_views/request/request_listing.aspx")
        routes.MapPageRoute("Request - SR", "requests/sr", "~/app_views/request/request_listing.aspx")
        routes.MapPageRoute("Request View", "requests/view/{0}", "~/app_views/request/request_view.aspx")
        routes.MapPageRoute("Request New", "requests/new", "~/app_views/request/request_form.aspx")
        routes.MapPageRoute("Request Edit", "requests/edit/{0}", "~/app_views/request/request_form.aspx")

        routes.MapPageRoute("Announcement", "announcements", "~/app_views/announcements/ann_listing.aspx")
        routes.MapPageRoute("Announcement View", "announcements/view/{0}", "~/app_views/announcements/ann_view.aspx")
        routes.MapPageRoute("Announcement New", "announcements/new", "~/app_views/announcements/ann_form.aspx")


        routes.MapPageRoute("MyPage - Account", "mypage/account", "~/app_views/mypage/my_account.aspx")
        routes.MapPageRoute("MyPage - Overview", "mypage/overview", "~/app_views/mypage/my_overview.aspx")

    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the session is started
    End Sub

    Sub Application_BeginRequest(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires at the beginning of each request
    End Sub

    Sub Application_AuthenticateRequest(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires upon attempting to authenticate the use
    End Sub

    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when an error occurs
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the session ends
    End Sub

    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the application ends
    End Sub

End Class