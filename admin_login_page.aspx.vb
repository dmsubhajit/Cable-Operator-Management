Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_login_page
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand()
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            con.Open()
            cmd = New SqlCommand("select * from admin_login where admin_username='" + usertxt.Text + "' and admin_password='" + passtxt.Text + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                Session("admin_username") = usertxt.Text

                Response.Redirect("admin_home_page.aspx")
            Else
                errlbl.Text = "Enter Valid Username and Password"
            End If
        Catch ex As Exception
        Finally
            con.Close()
            cmd.Dispose()
        End Try
    End Sub

    Protected Sub LinkButton8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton8.Click

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal1.Text = "<marquee>Admin Login Page</marquee>"
    End Sub
End Class
