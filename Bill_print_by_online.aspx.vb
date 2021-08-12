Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Bill_print_by_online
    Inherits System.Web.UI.Page
    Dim cmd, cmd1 As New SqlCommand
    Dim n As Integer
    Dim dr, dr1 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Session("cname")
        Label7.Text = Session("paymode")
        Label4.Text = Session("payidonline")
        Try
            con.Open()
            cmd1 = New SqlCommand("select * from onlinepayment where payid='" + Label4.Text + "'", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                Label1.Text = dr1(0).ToString
                Label2.Text = dr1(1).ToString
                Label3.Text = dr1(2).ToString
                Label24.Text = dr1(3).ToString
                Label25.Text = dr1(4).ToString
                Label5.Text = dr1(5).ToString
                Label22.Text = dr1(6).ToString
                Label8.Text = dr1(7).ToString
                Label7.Text = dr1(8).ToString
                Label15.Text = dr1(9).ToString
                Label16.Text = dr1(10).ToString
                Label17.Text = dr1(11).ToString
                Label18.Text = dr1(12).ToString
                'Label19.Text = dr1(13).ToString
                Label23.Text = dr1(14).ToString
                Label5.Text = dr1(15).ToString
                Label4.Text = dr1(16).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub
End Class
