Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class CustomerApplyconnection
    Inherits System.Web.UI.Page
    Dim cmd, cmd11 As New SqlCommand
    Dim dr As SqlDataReader
    Dim n As Integer
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee>Customer Apply Connection</marquee>"
        Label10.Text = DateAndTime.Now
        Label21.Text = Session("cname")
        con.Open()
        Try

            cmd = New SqlCommand("select * from customer where cname='" + Label21.Text + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                Label6.Text = dr(0).ToString
                Label8.Text = dr(3).ToString
                Label12.Text = dr(6).ToString
                Label14.Text = dr(7).ToString

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()

            cmd.Dispose()

        End Try
        Dim random As New Random()
        Dim i As Integer

        For i = 1 To 1000
            Label18.Text = random.Next(3000)
        Next
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Label16.Text = GridView1.SelectedRow.Cells(1).Text
        Label20.Text = GridView1.SelectedRow.Cells(2).Text
        TextBox2.Text = GridView1.SelectedRow.Cells(1).Text
        con.Open()
        cmd11 = New SqlCommand("select * from setupbox where spn='" + TextBox2.Text + "'", con)
        Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd11)
        Dim dt1 As DataTable = New DataTable()
        adp.Fill(dt1)
        GridView2.DataSource = dt1
        GridView2.DataBind()
        con.Close()

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Try
            con.Open()
            Dim cmd1 As New SqlCommand()
            If DropDownList1.SelectedValue = "Setup Box Connection" Then
                GridView1.Visible = True
                cmd1 = New SqlCommand("select * from package", con)
                Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd1)
                Dim dt As DataTable = New DataTable()
                adp.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
            ElseIf DropDownList1.SelectedValue = "Cable Connection" Then

                Label16.Text = "Null"
                GridView1.Visible = False
                Label20.Text = "150"

            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()

        End Try
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        con.Open()
        Try
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("insert into apply(cid,cname,cadds,cmail,cconnection,spack,rs,conid,cnum,date)values(@cid,@cname,@cadds,@cmail,@cconnection,@spack,@rs,@conid,@cnum,@date)", con)
            cmd.Parameters.AddWithValue("@cid", Label6.Text.Trim())
            cmd.Parameters.AddWithValue("@cname", Label21.Text.Trim())
            cmd.Parameters.AddWithValue("@cadds", Label8.Text.Trim())
            cmd.Parameters.AddWithValue("@cmail", Label14.Text.Trim())
            cmd.Parameters.AddWithValue("@cconnection", DropDownList1.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@spack", Label16.Text.Trim())
            cmd.Parameters.AddWithValue("@rs", Label20.Text.Trim())
            cmd.Parameters.AddWithValue("@conid", Label18.Text.Trim())
            cmd.Parameters.AddWithValue("@cnum", Label12.Text.Trim())
            cmd.Parameters.AddWithValue("@date", Label10.Text.Trim())
            cmd.ExecuteReader()
            Literal3.Text = "<marquee>Your  Connection request panding</marquee>"
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()


    End Sub
End Class
