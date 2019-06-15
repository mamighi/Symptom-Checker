Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data

Public Class TaskManager
    Public Class dis
        Public name, type As String
        Public sym As List(Of String) = New List(Of String)
    End Class
    Dim SQLConn As SqlConnection = New SqlConnection("Server=tcp:ukrainairline.database.windows.net,1433;Initial Catalog=disease;Persist Security Info=False;User ID='mesh';Password='!QAZxsw2';MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
    Public Function login(ByVal us As String, ByVal pass As String) As String
        Dim cmd = New SqlCommand("SELECT [UserType] FROM [User] WHERE [UserName]='" + us + "' AND [Password]='" + pass + "'")
        Dim retVal As String = "Wrong"
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim result = cmd.ExecuteScalar()
        If result IsNot Nothing Then
            retVal = result.ToString().TrimEnd()
        End If
        SQLConn.Close()
        Return retVal
    End Function
    Public Function addUser(ByVal us As String, ByVal pas As String, ByVal typ As String) As Boolean
        Dim cmd = New SqlCommand("INSERT INTO [User] (UserName,Password,UserType) VALUES('" + us + "','" + pas + "','" + typ + "')")
        cmd.Connection = SQLConn

        SQLConn.Open()
        cmd.ExecuteNonQuery()
        SQLConn.Close()

        Return True
    End Function
    Public Function checkUser(ByVal us As String) As Boolean
        Dim cmd = New SqlCommand("SELECT * FROM [User] WHERE [UserName]='" + us + "'")
        Dim retVal As Boolean = True
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim result = cmd.ExecuteScalar()
        If result IsNot Nothing Then
            retVal = False
        End If
        SQLConn.Close()
        Return retVal
    End Function
    Public Sub addPatient(ByVal us As String, ByVal fn As String, ByVal ln As String, ByVal age As String, ByVal contactNumber As String)
        Dim cmd = New SqlCommand("INSERT INTO [Patient] (UserName,FirstName,LastName,Age,ContactNumber) VALUES('" + us + "','" + fn + "','" + ln + "','" + age + "','" + contactNumber + "')")
        cmd.Connection = SQLConn
        SQLConn.Open()
        cmd.ExecuteNonQuery()
        SQLConn.Close()
    End Sub
    Public Sub addDoctor(ByVal us As String, ByVal fn As String, ByVal ln As String, ByVal contactNumber As String, ByVal sp As String)
        Dim cmd = New SqlCommand("INSERT INTO [Doctor] (UserName,FirstName,LastName,ContactNumber,Sp) VALUES('" + us + "','" + fn + "','" + ln + "','" + contactNumber + "','" + sp + "')")
        cmd.Connection = SQLConn
        SQLConn.Open()
        cmd.ExecuteNonQuery()
        SQLConn.Close()
    End Sub
    Public Sub addDisease(ByVal name As String, ByVal type As String, ByVal sym As String)
        Dim cmd = New SqlCommand("INSERT INTO [Disease] (Name,Type,Sym) VALUES('" + name + "','" + type + "','" + sym + "')")
        cmd.Connection = SQLConn
        SQLConn.Open()
        cmd.ExecuteNonQuery()
        SQLConn.Close()
    End Sub
    Public Function getDoctor() As List(Of List(Of String))
        Dim cmd = New SqlCommand("SELECT * FROM [Doctor]")
        Dim retVal As List(Of List(Of String)) = New List(Of List(Of String))
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader
        reader = cmd.ExecuteReader()
        While (reader.Read())
            Dim temp As List(Of String) = New List(Of String)()
            temp.Add(reader.GetString(0))
            temp.Add(reader.GetString(1) + " " + reader.GetString(2))
            temp.Add(reader.GetString(3))
            temp.Add(reader.GetString(4))
            retVal.Add(temp)
        End While
        reader.Close()
        SQLConn.Close()
        Return retVal
    End Function

    Public Function getPatient() As List(Of List(Of String))
        Dim cmd = New SqlCommand("SELECT * FROM [Patient]")
        Dim retVal As List(Of List(Of String)) = New List(Of List(Of String))
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader
        reader = cmd.ExecuteReader()
        While (reader.Read())
            Dim temp As List(Of String) = New List(Of String)()
            temp.Add(reader.GetString(0))
            temp.Add(reader.GetString(1) + " " + reader.GetString(2))
            temp.Add(reader.GetString(3))
            temp.Add(reader.GetString(4))
            retVal.Add(temp)

        End While
        reader.Close()
        SQLConn.Close()
        Return retVal
    End Function
    Public Function getDisease() As List(Of List(Of String))
        Dim cmd = New SqlCommand("SELECT * FROM [Disease]")
        Dim retVal As List(Of List(Of String)) = New List(Of List(Of String))
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader
        reader = cmd.ExecuteReader()
        While (reader.Read())
            Dim temp As List(Of String) = New List(Of String)()
            temp.Add(reader.GetString(0))
            temp.Add(reader.GetString(1))
            temp.Add(reader.GetString(2))
            retVal.Add(temp)

        End While
        reader.Close()
        SQLConn.Close()
        Return retVal
    End Function
    Public Function loadPatient(ByVal userNam As String) As List(Of String)
        Dim retVal As List(Of String) = New List(Of String)
        Dim cmd = New SqlCommand("SELECT * FROM [Patient] WHERE [UserName]='" + userNam + "'")
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader
        reader = cmd.ExecuteReader()
        If reader.Read() Then
            retVal.Add(reader.GetString(1))
            retVal.Add(reader.GetString(2))
            retVal.Add(reader.GetString(3))
            retVal.Add(reader.GetString(4))
        End If
        reader.Close()
        SQLConn.Close()
        Return retVal
    End Function
    Public Function loadDoctor(ByVal userNam As String) As List(Of String)
        Dim retVal As List(Of String) = New List(Of String)
        Dim cmd = New SqlCommand("SELECT * FROM [Doctor] WHERE [UserName]='" + userNam + "'")
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader
        reader = cmd.ExecuteReader()
        If reader.Read() Then
            retVal.Add(reader.GetString(1))
            retVal.Add(reader.GetString(2))
            retVal.Add(reader.GetString(3))
            retVal.Add(reader.GetString(4))
        End If
        reader.Close()
        SQLConn.Close()
        Return retVal
    End Function
    Public Sub updatePatient(ByVal us As String, ByVal fn As String, ByVal ln As String, ByVal age As String, ByVal contactNumber As String)
        Dim cmd = New SqlCommand("UPDATE [Patient] SET FirstName='" + fn + "',LastName='" + ln + "',Age='" + age + "',contactNumber='" + contactNumber + "' WHERE UserName='" + us + "'")
        cmd.Connection = SQLConn
        SQLConn.Open()
        cmd.ExecuteNonQuery()
        SQLConn.Close()
    End Sub
    Public Sub updateDoctor(ByVal us As String, ByVal fn As String, ByVal ln As String, ByVal contactNumber As String, ByVal sp As String)
        Dim cmd = New SqlCommand("UPDATE [Doctor] SET FirstName='" + fn + "',LastName='" + ln + "',contactNumber='" + contactNumber + "',Sp='" + sp + "' WHERE UserName='" + us + "'")
        cmd.Connection = SQLConn
        SQLConn.Open()
        cmd.ExecuteNonQuery()
        SQLConn.Close()
    End Sub
    Public Function searchDoctor(ByVal search As String) As List(Of List(Of String))
        Dim retVal As List(Of List(Of String)) = New List(Of List(Of String))
        Dim cmd = New SqlCommand("SELECT * FROM [Doctor] WHERE [FirstName] LIKE '%" + search + "%' OR [LastName] LIKE '%" + search + "%' OR [Sp] LIKE '%" + search + "%' ")
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader
        reader = cmd.ExecuteReader()
        If reader.Read() Then
            Dim temp As List(Of String) = New List(Of String)
            temp.Add(reader.GetString(0))
            temp.Add(reader.GetString(1) + " " + reader.GetString(2))
            temp.Add(reader.GetString(3))
            temp.Add(reader.GetString(4))
            retVal.Add(temp)
        End If
        reader.Close()
        SQLConn.Close()
        Return retVal
    End Function
    Public Function checkAppointemt(ByVal doctor As String, ByVal dt As DateTime) As Boolean
        Dim cmd = New SqlCommand("SELECT * FROM [Appointment] WHERE [DUserName]='" + doctor + "' AND DateTime='" + dt + "'")
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        Dim retval As Boolean = True
        If reader.Read() Then
            retval = False
        End If
        reader.Close()
        SQLConn.Close()
        Return retval
    End Function
    Public Sub addAppointment(ByVal doc As String, ByVal pat As String, ByVal dt As DateTime)
        Dim cmd = New SqlCommand("INSERT INTO [Appointment] (DUserName,PUserName,DateTime,Status) VALUES('" + doc + "','" + pat + "','" + dt + "','Pending')")
        cmd.Connection = SQLConn
        SQLConn.Open()
        cmd.ExecuteNonQuery()
        SQLConn.Close()
    End Sub
    Public Sub newConsult(ByVal pat As String, ByVal doc As String, ByVal des As String)
        Dim cmd = New SqlCommand("INSERT INTO [Consult] (Puser,Duser,Des,Status) VALUES('" + pat + "','" + doc + "','" + des + "','Pending')")
        cmd.Connection = SQLConn
        SQLConn.Open()
        cmd.ExecuteNonQuery()
        SQLConn.Close()
    End Sub
    Public Function getPendingConsult(ByVal doc As String) As List(Of List(Of String))
        Dim cmd = New SqlCommand("SELECT * FROM [Consult] WHERE [Duser]='" + doc + "' And [Status]='Pending'")
        Dim retVal As List(Of List(Of String)) = New List(Of List(Of String))
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        While reader.Read()
            Dim temp As List(Of String) = New List(Of String)
            temp.Add(reader.GetInt32(0).ToString() + "")
            temp.Add(reader.GetString(1))
            temp.Add(reader.GetString(3))
            retVal.Add(temp)
        End While
        reader.Close()
        SQLConn.Close()
        Return retVal
    End Function
    Public Function getPatConsult(ByVal pat As String) As List(Of List(Of String))
        Dim cmd = New SqlCommand("SELECT * FROM [Consult] WHERE [Puser]='" + pat + "'")
        Dim retVal As List(Of List(Of String)) = New List(Of List(Of String))
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        While reader.Read()
            Dim temp As List(Of String) = New List(Of String)
            temp.Add(reader.GetInt32(0).ToString())
            temp.Add(reader.GetString(2))
            temp.Add(reader.GetString(3))
            temp.Add(reader.GetString(6))
            retVal.Add(temp)
        End While
        reader.Close()
        SQLConn.Close()
        Return retVal
    End Function
    Public Function getConsultById(ByVal id As Int32) As List(Of String)
        Dim cmd = New SqlCommand("SELECT * FROM [Consult] WHERE id='" + id.ToString() + "'")
        Dim retval As List(Of String) = New List(Of String)
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        If reader.Read() Then
            retval.Add(reader.GetString(1))
            retval.Add(reader.GetString(2))
        End If
        reader.Close()
        SQLConn.Close()
        Return retval
    End Function
    Public Function getResponseById(ByVal id As Int32) As List(Of String)
        Dim cmd = New SqlCommand("SELECT * FROM [Consult] WHERE id=" + id.ToString() + "")
        Dim retval As List(Of String) = New List(Of String)
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        If reader.Read() Then
            retval.Add(reader.GetString(1))
            retval.Add(reader.GetString(2))
            retval.Add(reader.GetString(3))
            Try
                retval.Add(reader.GetString(4))
            Catch ex As Exception
                retval.Add("-")
            End Try
            Try
                retval.Add(reader.GetString(5))
            Catch ex As Exception
                retval.Add("-")
            End Try

        End If
        reader.Close()
        SQLConn.Close()
        Return retval
    End Function
    Public Function getDocApp(ByVal doc As String) As List(Of List(Of String))
        Dim cmd = New SqlCommand("SELECT * FROM [Appointment] WHERE [DUserName]='" + doc + "'")
        Dim retval As List(Of List(Of String)) = New List(Of List(Of String))
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        While reader.Read()
            Dim temp As List(Of String) = New List(Of String)
            temp.Add(reader.GetString(1))
            temp.Add(reader.GetDateTime(2).ToString())
            temp.Add(reader.GetString(3))
            retval.Add(temp)
        End While
        SQLConn.Close()
        Return retval
    End Function
    Public Sub updateConsult(ByVal id As Int32, ByVal rec As String, ByVal per As String)
        Dim cmd = New SqlCommand("UPDATE [Consult] Set Per='" + per + "', Rec='" + rec + "', status='Responded' WHERE id='" + id.ToString() + "'")
        cmd.Connection = SQLConn
        SQLConn.Open()
        cmd.ExecuteNonQuery()
        SQLConn.Close()
    End Sub
    Public Sub updateApp(ByVal pat As String, ByVal doc As String, ByVal dt As DateTime, ByVal st As String)
        Dim cmd = New SqlCommand("UPDATE [Appointment] SET [Status]='" + st + "' WHERE [DUserName]='" + doc + "' AND [PUserName]='" + pat + "' AND DateTime='" + dt + "'")
        cmd.Connection = SQLConn
        SQLConn.Open()
        cmd.ExecuteNonQuery()
        SQLConn.Close()
    End Sub
    Public Function getPatApp(ByVal pat As String) As List(Of List(Of String))
        Dim cmd = New SqlCommand("SELECT * FROM [Appointment] WHERE [PUserName]='" + pat + "'")
        Dim retval As List(Of List(Of String)) = New List(Of List(Of String))
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader = cmd.ExecuteReader()
        While reader.Read()
            Dim temp As List(Of String) = New List(Of String)
            temp.Add(reader.GetString(0))
            temp.Add(reader.GetDateTime(2).ToString())
            temp.Add(reader.GetString(3))
            retval.Add(temp)
        End While
        SQLConn.Close()
        Return retval
    End Function


    Public Function findDis() As List(Of dis)
        Dim cmd = New SqlCommand("SELECT * FROM [Disease]")
        Dim retVal As List(Of dis) = New List(Of dis)
        cmd.Connection = SQLConn
        SQLConn.Open()
        Dim reader As SqlDataReader
        reader = cmd.ExecuteReader()
        While (reader.Read())
            Dim temp As dis = New dis()
            temp.name = reader.GetString(0)
            temp.type = reader.GetString(1)
            Dim tDis As String = reader.GetString(2)
            Dim TD() As String = tDis.Split("-")
            Dim liTD As List(Of String) = New List(Of String)
            For Each t As String In TD
                If t.Trim().Length() > 0 Then
                    liTD.Add(t.ToLower().Trim())
                End If

            Next
            temp.sym = liTD
            retVal.Add(temp)
        End While
        reader.Close()
        SQLConn.Close()
        Return retVal
    End Function

    Protected Overrides Sub Finalize()
        MyBase.Finalize()
    End Sub
End Class
