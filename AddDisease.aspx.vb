
Partial Class AddDisease
    Inherits System.Web.UI.Page
    Dim ts As TaskManager = New TaskManager()
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label2.Visible = False
        If TextBox1.Text.Length < 2 Or TextBox2.Text.Length < 2 Then
            Label2.Text = "Please Fill All Field"
            Label2.Visible = True
            Return
        End If
        Dim Name As String = TextBox1.Text
        Dim Type As String = DropDownList1.SelectedItem.ToString()
        Dim Sym() As String = TextBox2.Text.Split(CChar(vbCrLf))
        Dim SY As String = ""
        For Each s As String In Sym
            SY += s + " - "
        Next
        ts.addDisease(Name, Type, SY)
        Response.Redirect("AdminHome.aspx")
    End Sub
End Class
