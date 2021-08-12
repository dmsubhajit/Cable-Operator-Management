Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class customer_previous_payment
    Inherits System.Web.UI.Page
    Dim cmd, cmd11 As New SqlCommand
    Dim dr As SqlDataReader
    Dim n As Integer
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee>See Previous Payment Page</marquee>"
        TextBox2.Text = Session("cname")
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Try
            con.Open()
            Dim cmd1 As New SqlCommand()
            If DropDownList1.SelectedValue = "Online Payment" Then
                GridView1.Visible = True
                GridView2.Visible = False
                cmd1 = New SqlCommand("select * from onlinepayment", con)
                Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd1)
                Dim dt As DataTable = New DataTable()
                adp.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
            ElseIf DropDownList1.SelectedValue = "Cash Payment" Then
                GridView2.Visible = True
                GridView1.Visible = False
                cmd1 = New SqlCommand("select * from cashpayment", con)
                Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd1)
                Dim dt As DataTable = New DataTable()
                adp.Fill(dt)
                GridView2.DataSource = dt
                GridView2.DataBind()

            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()

        End Try
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        'Label16.Text = GridView1.SelectedRow.Cells(1).Text
        'Label20.Text = GridView1.SelectedRow.Cells(2).Text
        'TextBox2.Text = GridView1.SelectedRow.Cells(1).Text
        'con.Open()
        cmd11 = New SqlCommand("select * from ", con)
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd11)
        Dim dt1 As DataTable = New DataTable()
        adp.Fill(dt1)
        con.Close()
    End Sub
End Class
