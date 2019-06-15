
Partial Class DiseasePrediction
    Inherits System.Web.UI.Page
    Dim ts As TaskManager = New TaskManager()
    Dim dis As List(Of TaskManager.dis) = New List(Of TaskManager.dis)
    Dim Sym() As String
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    End Sub
    Public Sub getSym()
        Dim D As List(Of TaskManager.dis) = ts.findDis()
        Sym = TextBox2.Text.Split(CChar(vbCrLf))
        For index As Integer = 0 To Sym.Length() - 1
            Sym(index) = Sym(index).Trim()
        Next
        For Each temp As TaskManager.dis In D
            Dim check As Boolean = True
            For Each tempSym As String In Sym
                If temp.sym.Contains(tempSym.ToLower().Trim()) <> True Then
                    check = False
                End If
            Next
            If check = True Then
                dis.Add(temp)
            End If
        Next
        If dis.Count > 1 Then
            loadList(Sym)
        ElseIf dis.Count = 1 Then
            loadDoc(dis(0).type, dis(0).name)
        End If
    End Sub
    Public Sub loadList(ByVal Sym() As String)
        Panel1.Visible = False
        Panel2.Visible = True
        Table1.Rows.Clear()
        For Each temp As TaskManager.dis In dis
            Dim RB As RadioButton
            Dim SM As String = ""
            For Each tSY As String In temp.sym
                If Sym.Contains(tSY.Trim().ToLower()) <> True Then
                    SM += tSY + " ,"
                End If
            Next
            Dim row As TableRow = New TableRow
            RB = New RadioButton
            RB.GroupName = "A"
            Dim rCell As TableCell = New TableCell()
            rCell.Controls.Add(RB)
            Dim sCell As TableCell = New TableCell()
            If SM.Length > 0 Then
                sCell.Text = SM
            Else
                sCell.Text = "None"
            End If

            sCell.HorizontalAlign = HorizontalAlign.Left
            row.Cells.Add(rCell)
            row.Cells.Add(sCell)
            Table1.Rows.Add(row)
        Next
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim index As Int32 = 0
        For Each row As TableRow In Table1.Rows
            Dim tCell As TableCell = row.Cells(0)
            Dim RD As RadioButton = tCell.Controls(0)
            If RD.Checked Then
                loadDoc(dis(index).type, dis(index).name)
            End If
            index += 1
        Next
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Panel1.Visible = True
            Panel2.Visible = False
            Panel3.Visible = False
        Else

            If Panel3.Visible = False Then
                getSym()
            Else
                loadDoc(Label4.Text, Label5.Text)
            End If

           
        End If


    End Sub
    Public Sub loadDoc(ByVal type As String, ByVal dise As String)
        Label4.Text = type
        Label5.Text = dise
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = True
        Label3.Text = "The Predicted Disease Is " + dise

        Dim det As List(Of List(Of String)) = ts.getDoctor()
        Dim ids As Integer = 0
        For Each temp As List(Of String) In det
            If temp(3).Contains(type) <> True Then
                Continue For
            End If
            Dim RBD As RadioButton = New RadioButton
            RBD.GroupName = "B"
            ids = ids + 1
            Dim tbrow As TableRow = New TableRow()
            Dim cellRAD As TableCell = New TableCell()
            cellRAD.Controls.Add(RBD)
            Dim celluser As TableCell = New TableCell()
            celluser.Text = temp(0)

            Dim cellName = New TableCell()
            cellName.Text = temp(1)
            Dim cellCon = New TableCell()
            cellCon.Text = temp(2)
            Dim cellSp = New TableCell()
            cellSp.Text = temp(3)
            If ids Mod 2 = 0 Then
                tbrow.BackColor = System.Drawing.Color.LightBlue
            Else
                tbrow.BackColor = System.Drawing.Color.White
            End If
            tbrow.Cells.Add(cellRAD)
            tbrow.Cells.Add(celluser)
            tbrow.Cells.Add(cellName)
            tbrow.Cells.Add(cellCon)
            tbrow.Cells.Add(cellSp)
            Table2.Rows.Add(tbrow)
        Next
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim index As Int32 = 0
        For Each row As TableRow In Table2.Rows
            If index = 0 Then
                index += 1
                Continue For
            End If
            Dim tCell As TableCell = row.Cells(0)
            Dim RD As RadioButton = tCell.Controls(0)
            If RD.Checked Then
                Session("doc") = row.Cells(1).Text
                Response.Redirect("pAppointment.aspx")
            End If
            index += 1
        Next
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim index As Int32 = 0
        For Each row As TableRow In Table2.Rows
            If index = 0 Then
                index += 1
                Continue For
            End If
            Dim tCell As TableCell = row.Cells(0)
            Dim RD As RadioButton = tCell.Controls(0)
            If RD.Checked Then
                Session("doc") = row.Cells(1).Text
                Response.Redirect("Consulting.aspx")
            End If
            index += 1
        Next
    End Sub
End Class
