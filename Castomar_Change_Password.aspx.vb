Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Configuration

Partial Class Castomar_Change_Password
    Inherits System.Web.UI.Page
    Dim cmd1, cmd As SqlCommand
    Dim dr, dr1 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        Try
            If TextBox6.Text <> TextBox2.Text Then
                MsgBox("You have enter worong old password", MsgBoxStyle.OkCancel)
            Else
                cmd1 = New SqlCommand("update customer set cpass='" + TextBox4.Text + "' where cname='" + DropDownList1.SelectedValue + "'", con)
                cmd1.ExecuteReader()
                Response.Redirect("customer_login_page.aspx")
            End If
        Catch ex As Exception

        End Try
        
        con.Close()
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        con.Open()
        Try
            cmd = New SqlCommand("select * from customer where cname='" + DropDownList1.SelectedValue + "' ", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                TextBox6.Text = dr(4).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub

    
End Class
