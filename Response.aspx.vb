
Partial Class Response
    Inherits System.Web.UI.Page
    Dim ts As TaskManager = New TaskManager()
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim id As Int32 = Int32.Parse(Session("ConID").ToString().Trim())
        Dim det As List(Of String) = ts.getConsultById(id)
        TextBox1.Text = det(0)
        TextBox2.Text = det(1)
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Label2.Visible = False
        Dim id As Int32 = Int32.Parse(Session("ConID").ToString().Trim())
        Dim rec As String = TextBox3.Text
        Dim per As String = TextBox4.Text
        If (rec.Length < 1) Then
            Label2.Visible = True
            Label2.Text = "Please Fill Up The Recomendation"
            Return
        End If
        ts.updateConsult(id, rec, per)
        Response.Redirect("DoctorHome.aspx")
    End Sub
End Class
