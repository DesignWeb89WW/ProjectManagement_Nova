Imports System.Data
Imports System.Data.SqlClient

Public Class UI_Announce

    Private ReadOnly DBC As New DBConn

    Private Function Connect() As SqlConnection
        Return DBC.SQl
    End Function

    Public Function List_Annc() As DataTable
        Dim conn = Connect()
        Dim dt As New DataTable()
        Using conn
            Using cmd As New SqlCommand("WMS_Announcement")
                cmd.Connection = conn
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("V0_Action", "List")

                Using sda As New SqlDataAdapter(cmd)
                    sda.Fill(dt)
                End Using
            End Using
        End Using

        Return dt
    End Function

    Public Sub Insert_Annc(v1_title As String, v2_content As String)
        Dim conn = Connect()
        Using conn
            conn.Open()

            Using cmd As New SqlCommand("WMS_Announcement")
                cmd.Connection = conn
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("V0_Action", "Insert")
                cmd.Parameters.AddWithValue("V1_Title", v1_title)
                cmd.Parameters.AddWithValue("V2_Content", v2_content)

                cmd.ExecuteNonQuery()
            End Using
            conn.Close()
        End Using
    End Sub

    Public Sub Update_Annc(v1_title As String, v2_content As String, v3_idnum As String)
        Dim conn = Connect()
        Using conn
            conn.Open()

            Using cmd As New SqlCommand("WMS_Announcement")
                cmd.Connection = conn
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("V0_Action", "Update")
                cmd.Parameters.AddWithValue("V1_Title", v1_title)
                cmd.Parameters.AddWithValue("V2_Content", v2_content)
                cmd.Parameters.AddWithValue("V3_IDNUM", v2_content)

                cmd.ExecuteNonQuery()
            End Using
            conn.Close()
        End Using
    End Sub


    Public Function GrabAnncByID(v1_idnum As String) As SqlDataReader
        Dim conn = Connect()
        conn.Open()

        Dim cmd = New SqlCommand("WMS_Announcement")
        cmd.Connection = conn
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("V0_Action", "SearchByID")
        cmd.Parameters.AddWithValue("V3_IDNUM", v1_idnum)

        Return cmd.ExecuteReader
    End Function
End Class
