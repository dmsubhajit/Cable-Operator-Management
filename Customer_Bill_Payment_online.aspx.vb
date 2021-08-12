Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Admin_Bill_Payment
    Inherits System.Web.UI.Page
    Dim cmd, cmd1 As New SqlCommand
    Dim n As Integer
    Dim dr, dr1 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee> Online Bill Payment Page</marquee>"
        Label15.Text = Session("cname")
        TextBox11.Text = Session("payfrom")
        TextBox12.Text = Session("payto")
        TextBox10.Text = Session("paymode")
        TextBox9.Text = Session("payyear")
        Label11.Text = DateAndTime.Now
        Try
            con.Open()
            cmd1 = New SqlCommand("select * from customer where cname='" + Label15.Text + "'", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                Label14.Text = dr1(0).ToString
                Label10.Text = dr1(3).ToString
                Label13.Text = dr1(6).ToString
                Label12.Text = dr1(7).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Dim random As New Random()
        Dim i As Integer
        For i = 1 To 1000
            Label16.Text = "ONLINE/PAY/" & random.Next(3000)
            Session("payid") = Label14.Text
        Next

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        Try
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("insert into onlinepayment(cid,cname,cadds,cno,email,lastpay,spaymanth,epaymanth,due,paymodule,sbank,cardno,holdar,expdate,datetime,payid)values(@cid,@cname,@cadds,@cno,@email,@lastpay,@spaymanth,@epaymanth,@due,@paymodule,@sbank,@cardno,@holdar,@expdate,@datetime,@payid)", con)
            cmd.Parameters.AddWithValue("@cid", Label14.Text.Trim())
            cmd.Parameters.AddWithValue("@cname", Label15.Text.Trim())
            cmd.Parameters.AddWithValue("@cadds", Label10.Text.Trim())
            cmd.Parameters.AddWithValue("@cno", Label13.Text.Trim())
            cmd.Parameters.AddWithValue("@email", Label12.Text.Trim())
            cmd.Parameters.AddWithValue("@lastpay", TextBox9.Text.Trim())
            cmd.Parameters.AddWithValue("@spaymanth", TextBox11.Text.Trim())
            cmd.Parameters.AddWithValue("@epaymanth", TextBox12.Text.Trim())
            cmd.Parameters.AddWithValue("@due", TextBox4.Text.Trim())
            cmd.Parameters.AddWithValue("@paymodule", TextBox10.Text.Trim())
            cmd.Parameters.AddWithValue("@sbank", DropDownList1.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@cardno", TextBox5.Text.Trim())
            cmd.Parameters.AddWithValue("@holdar", TextBox8.Text.Trim())
            cmd.Parameters.AddWithValue("@expdate", TextBox7.Text.Trim())
            'cmd.Parameters.AddWithValue("@pin", TextBox6.Text.Trim())
            cmd.Parameters.AddWithValue("@datetime", Label11.Text.Trim())
            cmd.Parameters.AddWithValue("@payid", Label16.Text.Trim())
            cmd.ExecuteReader()
            MsgBox("payment process is successful", MsgBoxStyle.OkOnly)
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            TextBox4.Text = ""
            TextBox5.Text = ""
            TextBox6.Text = ""
            TextBox7.Text = ""
            TextBox8.Text = ""
        End Try
        con.Close()

    End Sub
End Class
