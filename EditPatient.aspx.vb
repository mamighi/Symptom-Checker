
Partial Class EditPatient
    Inherits System.Web.UI.Page
    Dim ts As TaskManager = New TaskManager()
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label2.Visible = False
        If TextBox1.Text.Length < 2 Or TextBox3.Text.Length < 2 Or
            TextBox4.Text.Length < 2 Or TextBox5.Text.Length < 2 Then
            Label2.Text = "Please Fill All Field"
            Label2.Visible = True
            Return
        End If
        Dim userName As String = TextBox1.Text

        Dim firstName As String = TextBox3.Text
        Dim lastName As String = TextBox4.Text
        Dim age As String = DropDownList1.SelectedItem.ToString()
        Dim contactNumber As String = TextBox5.Text

       
        ts.updatePatient(userName, firstName, lastName, age, contactNumber)
        Response.Redirect("PatientHome.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim userName = Session("USER").ToString().Trim()
        TextBox1.Text = userName
        Dim det As List(Of String) = ts.loadPatient(userName)
        TextBox3.Text = det(0)
        TextBox4.Text = det(1)
        DropDownList1.SelectedIndex = Int32.Parse(det(2)) - 18
        TextBox5.Text = det(3)
    End Sub
End Class
