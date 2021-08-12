Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Admin_bill_payment
    Inherits System.Web.UI.Page
    Dim cmd, cmd1 As New SqlCommand
    Dim n As Integer
    Dim dr, dr1 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        con.Open()
        Try
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("insert into Bill(cid,payid,paytime,cname,cadd,payear,paymon,totalrs,aid,aname)values(@cid,@payid,@paytime,@cname,@cadd,@payear,@paymon,@totalrs,@aid,@aname)", con)
            cmd.Parameters.AddWithValue("@cid", DropDownList4.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@payid", Label12.Text.Trim())
            cmd.Parameters.AddWithValue("@paytime", Label10.Text.Trim())
            cmd.Parameters.AddWithValue("@cname", TextBox1.Text.Trim())
            cmd.Parameters.AddWithValue("@cadd", TextBox2.Text.Trim())
            cmd.Parameters.AddWithValue("@payear", DropDownList1.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@paymon", DropDownList5.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@totalrs", TextBox3.Text.Trim())
            cmd.Parameters.AddWithValue("@aid", DropDownList2.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@aname", TextBox4.Text.Trim())

            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()



    End Sub

    Protected Sub DropDownList4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList4.SelectedIndexChanged
        con.Open()
        Try
            cmd = New SqlCommand("select * from customer where cid='" + DropDownList4.SelectedValue + "' ", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                TextBox1.Text = dr(2).ToString
                TextBox2.Text = dr(3).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        con.Open()
        Try
            cmd = New SqlCommand("select * from Agent where aid='" + DropDownList2.SelectedValue + "' ", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                TextBox4.Text = dr(1).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee>Admin Bill Collection</marquee>"
        Label10.Text = DateAndTime.Now
        TextBox1.Text = Session("cname")
        Dim random As New Random()
        Dim i As Integer
        For i = 1 To 1000
            Label12.Text = random.Next(3000)

            Session("payid") = Label12.Text
        Next

    End Sub

End Class
