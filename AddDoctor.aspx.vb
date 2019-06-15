
Partial Class AddDoctor
    Inherits System.Web.UI.Page
    Dim ts As TaskManager = New TaskManager()
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label2.Visible = False
        If TextBox1.Text.Length < 2 Or TextBox2.Text.Length < 2 Or TextBox3.Text.Length < 2 Or
            TextBox4.Text.Length < 2 Or TextBox5.Text.Length < 2 Then
            Label2.Text = "Please Fill All Field"
            Label2.Visible = True
            Return
        End If
        Dim userName As String = TextBox1.Text
        Dim password As String = TextBox2.Text
        Dim firstName As String = TextBox3.Text
        Dim lastName As String = TextBox4.Text
        Dim sp As String = DropDownList1.SelectedItem.ToString()
        Dim contactNumber As String = TextBox5.Text

        If ts.checkUser(userName) = False Then
            Label2.Text = "The UserName Exist, Please Choose Another UserName"
            Label2.Visible = True
            Return
        End If
        ts.addUser(userName, password, "D")
        ts.addDoctor(userName, firstName, lastName, contactNumber, sp)
        Response.Redirect("AdminHome.aspx")

    End Sub
End Class
