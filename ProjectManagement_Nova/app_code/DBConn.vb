Imports System.Data.SqlClient

Public Class DBConn
    Private Function DBRoot() As SqlConnection
        Dim connstring = ConfigurationManager.ConnectionStrings("DBlcl").ConnectionString
        Dim sqlconnection As New SqlConnection(connstring)
        Return sqlconnection
    End Function

    Public Function SQl() As SqlConnection
        Return DBRoot()
    End Function

End Class
