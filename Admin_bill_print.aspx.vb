Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Admin_bill_print
    Inherits System.Web.UI.Page
    Dim cmd, cmd1 As New SqlCommand
    Dim n As Integer
    Dim dr, dr1 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Try
            con.Open()
            cmd1 = New SqlCommand("select * from Bill where payid='" + DropDownList1.SelectedValue + "'", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                Label1.Text = dr1(0).ToString
                Label2.Text = dr1(3).ToString
                Label5.Text = dr1(2).ToString
                Label3.Text = dr1(4).ToString
                Label8.Text = dr1(7).ToString
                Label9.Text = dr1(8).ToString
                Label10.Text = dr1(9).ToString
                Label6.Text = dr1(5).ToString
                Label7.Text = dr1(6).ToString

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub
End Class
