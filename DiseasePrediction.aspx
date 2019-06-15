<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="DiseasePrediction.aspx.vb" Inherits="DiseasePrediction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="align-content:center">
        <asp:Panel ID="Panel4" runat="server" HorizontalAlign="Center">
            <br />
            <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large; text-align: center;" Text="Disease Prediction"></asp:Label>
        </asp:Panel>
         <asp:Label ID="Label4" runat="server" Text="Label" Visible="False" style="color: #FFFFFF"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False" style="color: #FFFFFF"></asp:Label>
         <br />
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
        <br />
        <b><span style="color: #FFFFFF"><strong>SYMPTOMS<br /> (Each in new line)<br />
        <asp:TextBox ID="TextBox2" runat="server" Height="152px" TextMode="MultiLine" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="ERROR" Visible="False"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" Width="180px" CssClass="button" />
        </strong></span></b>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center">
        <br />
        <span style="color: #3366CC"><strong>Which of below symptoms do you have?<br />
        <br />
        </strong>
        <asp:Table ID="Table1" runat="server" ForeColor="White" HorizontalAlign="Center" ClientIDMode="Static" ViewStateMode="Enabled" Font-Bold="True" Font-Size="Medium">
        </asp:Table>
        <br />
        <b><span style="color: #336699"><strong>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Submit" Width="180px" UseSubmitBehavior="False" CssClass="button"  />
        </strong></span></b></span>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" HorizontalAlign="Center">
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Label" BorderColor="Red" BorderStyle="Solid"></asp:Label>
        <br />
        <br />
        <asp:Table ID="Table2" runat="server" BorderColor="White" BorderStyle="Outset" CellPadding="1" CellSpacing="2" GridLines="Both" HorizontalAlign="Center" Width="70%" ClientIDMode="AutoID" ValidateRequestMode="Enabled" ViewStateMode="Enabled" BorderWidth="5px">
            <asp:TableRow runat="server" BackColor="#00CCFF" Font-Bold="True">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">User Name</asp:TableCell>
                <asp:TableCell runat="server">Name</asp:TableCell>
                <asp:TableCell runat="server">Contact Number</asp:TableCell>
                <asp:TableCell runat="server">Specialization</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <span style="color: #336699"><strong>
        <br />
        <asp:Button ID="Button3" runat="server" Text="Make Appointment" ClientIDMode="AutoID" UseSubmitBehavior="False" CssClass="button" />
        &nbsp;<asp:Button ID="Button4" runat="server"  Text="Make Consultation" CssClass="button" />
        </strong></span>
        <br />
        <br />
    </asp:Panel>
    <br />
    </div>
</asp:Content>

