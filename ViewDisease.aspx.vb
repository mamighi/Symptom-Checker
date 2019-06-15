﻿
Partial Class ViewDisease
    Inherits System.Web.UI.Page
    Dim ts As TaskManager = New TaskManager()

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim det As List(Of List(Of String)) = ts.getDisease()
        Dim ids As Integer = 0
        For Each temp As List(Of String) In det
            ids = ids + 1
            Dim tbrow As TableRow = New TableRow()
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


            tbrow.Cells.Add(celluser)
            tbrow.Cells.Add(cellName)
            tbrow.Cells.Add(cellCon)
            Table1.Rows.Add(tbrow)
        Next
    End Sub
End Class
