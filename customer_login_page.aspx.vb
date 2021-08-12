Imports System.Data
Imports System.Data.SqlClient
Partial Class customer_login_page1
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand()
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            con.Open()
            cmd = New SqlCommand("select * from customer where cname='" + TextBox1.Text + "' and cpass='" + TextBox2.Text + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                Session("cname") = TextBox1.Text

                Response.Redirect("customer_home_page.aspx")
            Else
                errlbl.Text = "Enter Valid Username and Password"
            End If
        Catch ex As Exception
        Finally
            con.Close()
            cmd.Dispose()
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        Response.Redirect("New_castomar_Ragister.aspx")
    End Sub
End Class
