
Partial Class Customer_acount_Details
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal2.Text = "<marquee>Customer Acount Details Page</marquee>"
        TextBox2.Text = Session("cname")

    End Sub
End Class
