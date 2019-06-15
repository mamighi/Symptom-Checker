
Partial Class ViewResponse
    Inherits System.Web.UI.Page
    Dim ts As TaskManager = New TaskManager()
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim id As Int32 = Int32.Parse(Session("ConID").ToString().Trim())
        Dim det As List(Of String) = ts.getResponseById(id)
        TextBox1.Text = det(1)
        TextBox2.Text = det(2)
        TextBox3.Text = det(3)
        TextBox4.Text = det(4)
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("ViewFeedBack.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim sPrintScript As System.Text.StringBuilder = New System.Text.StringBuilder
        sPrintScript.Append("<script type='text/javascript'>").AppendLine("")
        sPrintScript.Append("<!--").AppendLine("")
        sPrintScript.Append("function printText(elementId)").AppendLine("")
        sPrintScript.Append("{").AppendLine("")
        sPrintScript.Append("var printContent = document.getElementById(elementId);").AppendLine("")
        sPrintScript.Append("var windowUrl = 'Prescription';").AppendLine("")
        sPrintScript.Append("var windowName = 'Print' + new Date().getTime();").AppendLine("")
        sPrintScript.Append("var sTextToPrint = printContent.innerHTML;").AppendLine("")
        sPrintScript.Append("var printWindow = window.open(windowUrl, windowName, 'left=50000,top=50000,width=0,height=0');")
        sPrintScript.AppendLine("")
        sPrintScript.Append("printWindow.document.write('" + TextBox4.Text + "');").AppendLine("")
        sPrintScript.Append("printWindow.document.close();").AppendLine("")
        sPrintScript.Append("printWindow.focus();").AppendLine("")
        sPrintScript.Append("printWindow.print();").AppendLine("")
        sPrintScript.Append("printWindow.close();").AppendLine("").Append("}").AppendLine("")
        sPrintScript.Append("// -->").AppendLine("")
        sPrintScript.Append("</script>")
        If Not ClientScript.IsClientScriptBlockRegistered("printText") Then _
        ClientScript.RegisterClientScriptBlock(Me.GetType(), "printText", sPrintScript.ToString)
        Button1.Attributes.Add("onclick", String.Format("return printText('{0}');", Me.TextBox1.ClientID))
    End Sub
End Class
