Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Customar_Search_channel
    Inherits System.Web.UI.Page
    Dim cost As Integer
    Dim cmd As New SqlCommand
    Dim n As Integer
    Dim dr As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee>Customer Search Channel Page</marquee>"
    End Sub

    'Protected Sub Button13_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button13.Click
    '    con.Open()
    '    Try
    '        Dim cmd As New SqlCommand()
    '        cmd = New SqlCommand("insert into cpackage(sname,scost)values(@sname,@scost)", con)
    '        cmd.Parameters.AddWithValue("@sname", DropDownList2.SelectedValue.Trim())
    '        cmd.Parameters.AddWithValue("@scost", TextBox2.Text)
    '        cmd.ExecuteReader()
    '    Catch ex As Exception
    '        MsgBox(ex.Message)
    '    End Try
    '    con.Close()
    '    TextBox3.Text = Val(TextBox3.Text) + Val(TextBox2.Text)
    '    'Try
    '    '    con.Open()
    '    '    Dim cmd1 As New SqlCommand()
    '    '    cmd1 = New SqlCommand("select * from setupbox where spn='" + TextBox1.Text + "'", con)
    '    '    Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd1)
    '    '    Dim dt As DataTable = New DataTable()
    '    '    adp.Fill(dt)
    '    '    GridView1.DataSource = dt
    '    '    GridView1.DataBind()

    '    'Catch ex As Exception
    '    '    MsgBox(ex.Message)
    '    'End Try
    '    con.Close()
    '    cmd.Dispose()

    'End Sub
End Class
