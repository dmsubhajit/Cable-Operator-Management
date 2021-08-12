Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Configuration
Partial Class Castomar_complan
    Inherits System.Web.UI.Page
    Dim cmd1, cmd As SqlCommand
    Dim dr, dr1 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Calendar1.Visible = True
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        TextBox5.Text = Calendar1.SelectedDate
        Calendar1.Visible = False

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee> Customar Complain Page</marquee>"
        TextBox6.Text = Session("cname")
        con.Open()
        Try
            cmd = New SqlCommand("select * from customer where cname='" + TextBox6.Text + "' ", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                TextBox2.Text = dr(0).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Dim random As New Random()
        Dim i As Integer
        For i = 1 To 100
            TextBox3.Text = random.Next(3000)
        Next
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()

        Try
            cmd = New SqlCommand("insert into complain(cid,comid,comst,comdtls,comdate)values(@cid,@comid,@comst,@comdtls,@comdate)", con)
            cmd.Parameters.AddWithValue("@cid", TextBox2.Text.Trim())
            cmd.Parameters.AddWithValue("@comid", TextBox3.Text.Trim())
            cmd.Parameters.AddWithValue("@comst", TextBox4.Text.Trim())
            cmd.Parameters.AddWithValue("@comdtls", TextBox1.Text.Trim())
            cmd.Parameters.AddWithValue("@comdate", TextBox5.Text.Trim())
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd.Dispose()
            TextBox4.Text = ""
            TextBox1.Text = ""
            TextBox5.Text = ""
        End Try
       
    End Sub
End Class
