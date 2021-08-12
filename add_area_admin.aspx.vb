Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class add_area_admin
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim n As Integer
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub LinkButton9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton8.Click
        con.Open()

        Try
            cmd = New SqlCommand("insert into Area(aid,areaname,apincode,sl)values(@aid,@areaname,@apincode,@sl)", con)
            cmd.Parameters.AddWithValue("@aid", TextBox2.Text.Trim())
            cmd.Parameters.AddWithValue("@areaname", anametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@apincode", apintxt.Text.Trim())
            cmd.Parameters.AddWithValue("@sl", TextBox3.Text.Trim())
            cmd.ExecuteReader()
            
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd.Dispose()
            Try
                con.Open()
                cmd = New SqlCommand("select max(sl) from Area", con)
                dr = cmd.ExecuteReader
                If dr.Read Then
                    n = dr(0).ToString
                    n = n + 1
                    TextBox3.Text = Val(n)
                    TextBox2.Text = "PANS/CAB/AR/" & n.ToString

                End If
            Catch ex As Exception

            End Try
            con.Close()
            anametxt.Text = " "
            apintxt.Text = " "
        End Try

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee>Create Area Page</marquee>"
        Try
            con.Open()
            cmd = New SqlCommand("select max(sl) from Area", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                n = dr(0).ToString
                n = n + 1
                TextBox3.Text = Val(n)
                TextBox2.Text = "PANS/CAB/AR/" & n.ToString

            End If
        Catch ex As Exception

        End Try
        con.Close()
    End Sub
End Class
