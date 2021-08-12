Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class New_castomar_Ragister
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim n As Integer
    Dim fileName As String = String.Empty
    Dim filePath As String = String.Empty
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee>New Customer Register Page</marquee>"
        Try
            con.Open()
            cmd = New SqlCommand("select max(sl) from customer", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                n = dr(0).ToString
                n = n + 1
                TextBox7.Text = Val(n)
                TextBox6.Text = "PANS/CUSC/CC/" & n.ToString
            End If
        Catch ex As Exception

        End Try
        con.Close()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        con.Open()

        Try
            If upload.HasFile Then
                fileName = upload.FileName
                filePath = Server.MapPath("~/pic/" & Convert.ToString(fileName))
                upload.SaveAs(filePath)
                fileName = "~/pic/" & fileName
            End If
            cmd = New SqlCommand("insert into customer(cid,sl,cname,cadd,cpass,cimg,cno,cemail)values(@cid,@sl,@cname,@cadd,@cpass,@cimg,@cno,@cemail)", con)
            cmd.Parameters.AddWithValue("@cid", TextBox6.Text.Trim())
            cmd.Parameters.AddWithValue("@sl", TextBox7.Text.Trim())
            cmd.Parameters.AddWithValue("@cname", TextBox1.Text.Trim())
            cmd.Parameters.AddWithValue("@cadd", TextBox2.Text.Trim())
            cmd.Parameters.AddWithValue("@cpass", TextBox4.Text.Trim())
            cmd.Parameters.AddWithValue("@cno", TextBox8.Text.Trim())
            cmd.Parameters.AddWithValue("@cemail", TextBox9.Text.Trim())
            cmd.Parameters.AddWithValue("@cimg", fileName)
            cmd.ExecuteReader()
            
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
           
            con.Close()
            cmd.Dispose()
            fileName = Nothing
            filePath = Nothing
            TextBox1.Text = " "
            TextBox2.Text = " "
            TextBox3.Text = ""
            TextBox4.Text = ""
            TextBox8.Text = ""
            TextBox9.Text = ""
            Try
                con.Open()
                cmd = New SqlCommand("select max(sl) from customer", con)
                dr = cmd.ExecuteReader
                If dr.Read Then
                    n = dr(0).ToString
                    n = n + 1
                    TextBox7.Text = Val(n)
                    TextBox6.Text = "PANS/CUSC/CC/" & n.ToString

                End If
            Catch ex As Exception

            End Try
            con.Close()
        End Try

    End Sub
End Class
