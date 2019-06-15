
Partial Class AppRequest
    Inherits System.Web.UI.Page
    Dim ts As TaskManager = New TaskManager()
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim userName As String = Session("USER").ToString().Trim()
        Dim det As List(Of List(Of String)) = ts.getDocApp(userName)
        Dim ids As Integer = 0

        For Each temp As List(Of String) In det
            ids = ids + 1
            Dim tbrow As TableRow = New TableRow()
            tbrow.HorizontalAlign = HorizontalAlign.Center
            Dim RBD As RadioButton = New RadioButton
            RBD.GroupName = "B"

            Dim cellrb As TableCell = New TableCell()
            cellrb.Controls.Add(RBD)

            Dim celluser As TableCell = New TableCell()
            celluser.Text = temp(0)
            Dim cellName = New TableCell()
            cellName.Text = temp(1)
            Dim cellCon = New TableCell()
            cellCon.Text = temp(2)

            If ids Mod 2 = 0 Then
                tbrow.BackColor = System.Drawing.Color.Black
                tbrow.ForeColor = System.Drawing.Color.White
            Else
                tbrow.ForeColor = System.Drawing.Color.Black
                tbrow.BackColor = System.Drawing.Color.White
            End If
            tbrow.Cells.Add(cellrb)
            tbrow.Cells.Add(celluser)
            tbrow.Cells.Add(cellName)
            tbrow.Cells.Add(cellCon)
            Table1.Rows.Add(tbrow)
        Next
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        update("Approved")
    End Sub
    Public Sub update(ByVal st As String)
        Dim index As Int32 = 0
        For Each row As TableRow In Table1.Rows
            If index = 0 Then
                index += 1
                Continue For
            End If
            Dim tCell As TableCell = row.Cells(0)
            Dim RD As RadioButton = tCell.Controls(0)
            If RD.Checked Then
                Dim pat = row.Cells(1).Text
                Dim dt = DateTime.Parse(row.Cells(2).Text)
                Dim doc = Session("USER").ToString().Trim()
                ts.updateApp(pat, doc, dt, st)
            End If
            index += 1
        Next
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        update("Canceled")

    End Sub
End Class
