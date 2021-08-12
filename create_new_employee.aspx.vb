Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class create_new_employee
    Inherits System.Web.UI.Page
    Dim filename As String = String.Empty
    Dim filepath As String = String.Empty
    Dim cmd As New SqlCommand
    Dim n As Integer
    Dim dr As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        Try
            If upload.HasFile Then
                filename = upload.FileName
                filepath = Server.MapPath("~/imgupload/" & Convert.ToString(filename))
                upload.SaveAs(filepath)
                filename = "~/imgupload/" & filename

            End If
            cmd = New SqlCommand("insert into Agent(aid,aname,aadds,aarea,sl,aimg)values(@aid,@aname,@aadds,@aarea,@sl,@aimg)", con)
            cmd.Parameters.AddWithValue("@aid", TextBox4.Text.Trim())
            cmd.Parameters.AddWithValue("@aname", anametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@aadds", aaddstxt.Text.Trim())
            cmd.Parameters.AddWithValue("@aarea", aareatxt.Text.Trim())
            cmd.Parameters.AddWithValue("@sl", TextBox5.Text.Trim())
            cmd.Parameters.AddWithValue("@aimg", filename)
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally

            con.Close()
            cmd.Dispose()
            filename = Nothing
            filepath = Nothing
            anametxt.Text = " "
            aaddstxt.Text = " "
            aareatxt.Text = " "
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee>Create New Agent Page</marquee>"
        Try
            con.Open()
            cmd = New SqlCommand("select max(sl) from Agent", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                n = dr(0).ToString
                n = n + 1
                TextBox5.Text = Val(n)
                TextBox4.Text = "PANS/CAB/AG/" & n.ToString

            End If
        Catch ex As Exception

        End Try
        con.Close()

    End Sub
End Class
