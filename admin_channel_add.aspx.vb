Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class admin_channel_add
    Inherits System.Web.UI.Page
    Dim cmd, cmd1 As New SqlCommand
    Dim filename As String = String.Empty
    Dim filepath As String = String.Empty
    Dim n As Integer
    Dim dr As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")


    Protected Sub LinkButton8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton8.Click
        con.Open()

        Try
            If upload.HasFile Then
                filename = upload.FileName
                filepath = Server.MapPath("~/imgupload/" & Convert.ToString(filename))
                upload.SaveAs(filepath)
                filename = "~/imgupload/" & filename
            End If
            cmd = New SqlCommand("insert into channel(cno,cname,ctype,clang,ccost,sl,aimg)values(@cno,@cname,@ctype,@clang,@ccost,@sl,@aimg)", con)
            cmd.Parameters.AddWithValue("@cno", TextBox5.Text.Trim())
            cmd.Parameters.AddWithValue("@cname", cnametxt.Text.Trim())
            cmd.Parameters.AddWithValue("@ctype", ctypetxt.Text.Trim())
            cmd.Parameters.AddWithValue("@clang", clangtxt.Text.Trim())
            cmd.Parameters.AddWithValue("@ccost", ccosttxt.Text.Trim())
            cmd.Parameters.AddWithValue("@sl", TextBox6.Text.Trim())
            cmd.Parameters.AddWithValue("@aimg", filename)
            cmd.ExecuteReader()

            Try
                con.Open()
                cmd = New SqlCommand("select max(sl) from channel", con)
                dr = cmd.ExecuteReader
                If dr.Read Then
                    n = dr(0).ToString
                    n = n + 1
                    TextBox6.Text = Val(n)
                    TextBox5.Text = "PANS/CAB/AG/" & n.ToString

                End If
            Catch ex As Exception

            End Try
            con.Close()

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd.Dispose()
            cnametxt.Text = " "
            ctypetxt.Text = " "
            clangtxt.Text = " "
            ccosttxt.Text = " "
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee>Admin Channel Add</marquee>"
        Try
            con.Open()
            cmd = New SqlCommand("select max(sl) from channel", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                n = dr(0).ToString
                n = n + 1
                TextBox6.Text = Val(n)
                TextBox5.Text = "PANS/CAB/AG/" & n.ToString

            End If
        Catch ex As Exception

        End Try
        con.Close()

    End Sub

    Protected Sub LinkButton9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton9.Click

    End Sub
End Class
