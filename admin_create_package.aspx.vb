Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class admin_create_package
    Inherits System.Web.UI.Page
    Dim cost As Integer
    Dim cmd As New SqlCommand
    Dim n As Integer
    Dim dr As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        Try
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("insert into setupbox(spn,spc,sbtcost)values(@spn,@spc,@sbtcost)", con)
            cmd.Parameters.AddWithValue("@spn", TextBox1.Text.Trim())
            cmd.Parameters.AddWithValue("@spc", DropDownList1.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@sbtcost", TextBox2.Text)
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        TextBox4.Text = Val(TextBox4.Text) + Val(TextBox2.Text)
        Try
            con.Open()
            Dim cmd1 As New SqlCommand()
            cmd1 = New SqlCommand("select * from setupbox where spn='" + TextBox1.Text + "'", con)
            Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd1)
            Dim dt As DataTable = New DataTable()
            adp.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        cmd.Dispose()
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        con.Open()
        Try
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("insert into cableline(c_name,c_cost)values(@c_name,@c_cost)", con)
            cmd.Parameters.AddWithValue("@c_name", DropDownList2.SelectedValue.Trim())
            cmd.Parameters.AddWithValue("@c_cost", TextBox5.Text)
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()

        Try
            con.Open()
            Dim cmd11 As New SqlCommand()
            cmd11 = New SqlCommand("select * from cableline ", con)
            Dim adp1 As SqlDataAdapter = New SqlDataAdapter(cmd11)
            Dim dt1 As DataTable = New DataTable()
            adp1.Fill(dt1)
            GridView2.DataSource = dt1
            GridView2.DataBind()

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        con.Open()
        cmd = New SqlCommand("select * from channel where cname='" + DropDownList1.SelectedValue + "'", con)
        Dim dr3 As SqlDataReader
        dr3 = cmd.ExecuteReader
        If dr3.Read Then
            TextBox2.Text = dr3(4).ToString
        End If
        con.Close()
    End Sub

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox2.TextChanged

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee>Cost Of Collection</marquee>"
        TextBox6.Text = Session("admin_username")
        If TextBox6.Text = "" Then
            Button1.Enabled = False
            Button2.Enabled = False
            Button3.Enabled = False

        End If
        con.Open()
        cmd = New SqlCommand("select * from package where p_type='" + Label1.Text + "'", con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds)
        GridView3.DataSource = ds
        GridView3.DataBind()
        con.Close()
        Try
            con.Open()
            Dim cmd11 As New SqlCommand()
            cmd11 = New SqlCommand("select * from cableline ", con)
            Dim adp1 As SqlDataAdapter = New SqlDataAdapter(cmd11)
            Dim dt1 As DataTable = New DataTable()
            adp1.Fill(dt1)
            GridView2.DataSource = dt1
            GridView2.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        con.Open()
        cmd = New SqlCommand("insert into package(p_name,p_cost,p_type)values(@p_name,@p_cost,@p_type)", con)
        cmd.Parameters.AddWithValue("@p_name", TextBox1.Text)
        cmd.Parameters.AddWithValue("@p_cost", TextBox4.Text)
        cmd.Parameters.AddWithValue("@p_type", Label1.Text)
        cmd.ExecuteReader()
        con.Close()
        cmd.Dispose()
        con.Open()
        cmd = New SqlCommand("select * from package where p_type='" + Label1.Text + "'", con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds)
        GridView3.DataSource = ds
        GridView3.DataBind()
        con.Close()
    End Sub
    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        con.Open()
        cmd = New SqlCommand("select * from channel where cname='" + DropDownList2.SelectedValue + "'", con)
        Dim dr3 As SqlDataReader
        dr3 = cmd.ExecuteReader
        If dr3.Read Then
            TextBox5.Text = dr3(4).ToString
        End If
        con.Close()
    End Sub
End Class