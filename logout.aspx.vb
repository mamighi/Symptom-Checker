
Partial Class logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session("UT") = ""
        Response.Redirect("Default.aspx")
    End Sub
End Class
