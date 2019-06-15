
Partial Class DAppointment
    Inherits System.Web.UI.Page
    Dim ts As TaskManager = New TaskManager()
    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim pat As List(Of List(Of String)) = ts.getPatient()

        DropDownList1.Items.Clear()
        For Each temp As List(Of String) In pat
            DropDownList1.Items.Add(temp(0))
        Next


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
        ts.addAppointment(us, DropDownList1.SelectedItem.ToString(), dt)
        Response.Redirect("DoctorHome.aspx")
    End Sub
End Class
