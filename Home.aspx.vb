
Partial Class Home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim UT As String = ""
        Try
            UT = Session("UT").ToString().Trim()
        Catch ex As Exception
            Response.Redirect("Default.aspx")
        End Try

        If UT.Equals("a") Then
            Response.Redirect("AdminHome.aspx")
            Return
        ElseIf UT.Equals("d") Then
            Response.Redirect("DoctorHome.aspx")
            Return
        ElseIf UT.Equals("p") Then
            Response.Redirect("PatientHome.aspx")
            Return
        Else
            Response.Redirect("Default.aspx")
        End If
    End Sub
End Class
