Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class customer_pay_by_cash
    Inherits System.Web.UI.Page
    Dim cmd, cmd1 As New SqlCommand
    Dim n As Integer
    Dim dr, dr1 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee>Bill By Cash Payment Page</marquee>"
        Label8.Text = Session("cname")
        Try
            con.Open()
            cmd1 = New SqlCommand("select * from customer where cname='" + Label8.Text + "'", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                Label7.Text = dr1(0).ToString
                Label9.Text = dr1(3).ToString
                Label12.Text = dr1(6).ToString
                Label13.Text = dr1(7).ToString
                Label15.Text = DateAndTime.Now
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Dim random As New Random()
        Dim i As Integer
        For i = 1 To 1000
            Label14.Text = "CASH/PAY/" & random.Next(3000)

            Session("payid") = Label14.Text
        Next
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        Try
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("insert into cashpayment(cid,cname,cadds,aid,aname,acode,pno,mail,payid,rs,date)values(@cid,@cname,@cadds,@aid,@aname,@acode,@pno,@mail,@payid,@rs,@date)", con)
            cmd.Parameters.AddWithValue("@cid", Label7.Text.Trim())
            cmd.Parameters.AddWithValue("@cname", Label8.Text.Trim())
            cmd.Parameters.AddWithValue("@cadds", Label9.Text.Trim())
            cmd.Parameters.AddWithValue("@acode", DropDownList1.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@aid", DropDownList2.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@aname", DropDownList3.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@pno", Label12.Text.Trim())
            cmd.Parameters.AddWithValue("@mail", Label13.Text.Trim())
            cmd.Parameters.AddWithValue("@payid", Label14.Text.Trim())
            cmd.Parameters.AddWithValue("@rs", TextBox2.Text.Trim())
            cmd.Parameters.AddWithValue("@date", Label15.Text.Trim())
            cmd.ExecuteReader()
            MsgBox("payment process is successful", MsgBoxStyle.OkOnly)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged

    End Sub
End Class
