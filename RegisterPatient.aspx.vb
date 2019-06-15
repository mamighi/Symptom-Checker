Imports System.Net.Mail

Partial Class RegisterPatient
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
        Dim age As String = DropDownList1.SelectedItem.ToString()
        Dim contactNumber As String = TextBox5.Text

        If ts.checkUser(userName) = False Then
            Label2.Text = "The UserName Exist, Please Choose Another UserName"
            Label2.Visible = True
            Return
        End If
        ts.addUser(userName, password, "p")
        ts.addPatient(userName, firstName, lastName, age, contactNumber)
        Response.Redirect("Default.aspx")

    End Sub
    Protected Sub sendMail()
        Dim strFrom = "ehealthcare2017@gmail.com"
        Dim strTo = TextBox6.Text
        Dim MailMsg As New MailMessage(New MailAddress(strFrom.Trim()), New MailAddress(strTo))
        MailMsg.BodyEncoding = Encoding.Default
        MailMsg.Subject = "New Account Confirmation"
        MailMsg.Body = "You have created an account on e-health care system. you can use you user name and password to login into your account"
        MailMsg.Priority = MailPriority.High
        MailMsg.IsBodyHtml = True

        Dim SmtpMail As New SmtpClient
        Dim basicAuthenticationInfo As New System.Net.NetworkCredential(strFrom, "!QAZxsw2")

        SmtpMail.Host = "smtp.gmail.com"
        SmtpMail.UseDefaultCredentials = False
        SmtpMail.Credentials = basicAuthenticationInfo

        SmtpMail.Send(MailMsg)
    End Sub
End Class
