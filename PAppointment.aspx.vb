
Partial Class PAppointment
    Inherits System.Web.UI.Page
    Dim ts As TaskManager = New TaskManager()
    Dim doc As String
    Dim pat As String
    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        doc = Session("doc").ToString().Trim()
        pat = Session("USER").ToString().Trim()

        Label3.Text = doc

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label2.Visible = False
        Dim time() As String = DropDownList2.SelectedItem.ToString().Split(":")
        Dim hour As Int32 = Int32.Parse(time(0))
        Dim min As Int32 = Int32.Parse(time(1))
        Dim dt As DateTime = New DateTime(Calendar1.SelectedDate.Year, Calendar1.SelectedDate.Month, Calendar1.SelectedDate.Day, hour, min, 0)
        Dim us As String = Session("USER").ToString().Trim()
        If ts.checkAppointemt(us, dt) = False Then
            Label2.Text = "There Is Another Appointment In selected time"
            Label2.Visible = True
            Return
        End If
        ts.addAppointment(doc, pat, dt)
        Response.Redirect("PatientHome.aspx")
    End Sub
End Class
