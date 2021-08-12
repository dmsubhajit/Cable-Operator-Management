Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Admin_offer
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim n As Integer
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        Try
            cmd = New SqlCommand("insert into setoffer(pname,offer,offdate)values(@pname,@offer,@offdate)", con)
            cmd.Parameters.AddWithValue("@pname", DropDownList1.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@offer", TextBox2.Text.Trim())
            cmd.Parameters.AddWithValue("@offdate", TextBox3.Text.Trim())
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd.Dispose()
            TextBox2.Text = " "
            TextBox3.Text = ""
        End Try
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Calendar1.Visible = True

    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        TextBox3.Text = Calendar1.SelectedDate
        Calendar1.Visible = False
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee>Offer For Cable Connection</marquee>"
    End Sub
End Class
