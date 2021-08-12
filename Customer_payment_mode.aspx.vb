
Partial Class Customer_payment_mode
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Session("cname")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("payfrom") = DropDownList2.SelectedValue
        Session("payto") = DropDownList3.SelectedValue
        Session("paymode") = DropDownList4.SelectedValue
        Session("payyear") = DropDownList1.SelectedValue
        If DropDownList4.SelectedValue = "By Cash" Then
            Response.Redirect("customer_pay_by_cash.aspx")
        Else
            Response.Redirect("Customer_Bill_Payment_online.aspx")
        End If
    End Sub
End Class
