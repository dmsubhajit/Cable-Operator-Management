Imports System.Data
Imports System.Data.SqlClient
Partial Class customer_print
    Inherits System.Web.UI.Page
    Dim cmd1 As New SqlCommand()
    Dim dr, dr1, dr11 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cable.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("cname")
        Try
            con.Open()
            cmd1 = New SqlCommand("select cid from customer where cname='" + Label1.Text + "'", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                Label2.Text = dr1(0).ToString
                Session("cid") = Label2.Text
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("paymode") = DropDownList1.SelectedValue
        Session("payidcash") = DropDownList2.SelectedValue
        Session("payidonline") = DropDownList3.SelectedValue
        If DropDownList1.SelectedValue = "By cash" Then
            Response.Redirect("bill_print_by_cash.aspx")
        ElseIf DropDownList1.SelectedValue = "By online" Then
            Response.Redirect("Bill_print_by_online.aspx")
        End If
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        If DropDownList1.SelectedValue = "By cash" Then
            DropDownList2.Visible = True
            DropDownList3.Visible = False
        ElseIf DropDownList1.SelectedValue = "By online" Then
            DropDownList3.Visible = True
            DropDownList2.Visible = False
        End If
    End Sub
End Class
