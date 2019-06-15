
Partial Class Consulting
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label2.Visible = False
        Dim pat = Session("USER").ToString().Trim
        Dim doc = Session("doc").ToString().Trim
        Dim des = TextBox2.Text
        If des.Trim().Length < 1 Then
            Label2.Text = "Please Describe Your Problem"
            Label2.Visible = True
            Return
        End If
        Dim ts As TaskManager = New TaskManager()
        ts.newConsult(pat, doc, des)
        Response.Redirect("PatientHome.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        TextBox1.Text = Session("doc").ToString().Trim()
    End Sub
End Class
