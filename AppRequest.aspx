<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="AppRequest.aspx.vb" Inherits="AppRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="width:70%;margin-left:15%; align-content:center">




        <br />
        <br />
         <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="Appointment Request"></asp:Label>
         <br />
        <br />
                <asp:Table ID="Table1" runat="server" BorderColor="White" BorderStyle="Outset" CellPadding="1" CellSpacing="2" GridLines="Both" HorizontalAlign="Center" Width="100%" BackColor="#33CCFF" BorderWidth="5px">
                    <asp:TableRow runat="server" Font-Bold="True" HorizontalAlign="Center">
                        <asp:TableCell runat="server"></asp:TableCell>
                        <asp:TableCell runat="server">Patient</asp:TableCell>
                        <asp:TableCell runat="server">Date Time</asp:TableCell>
                        <asp:TableCell runat="server">Status</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <asp:Button ID="Button1" runat="server"  Text="Accept" Width="150px" CssClass="button" />
            &nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" Width="150px" CssClass="button" />
        </asp:Panel>
        <br />




    </div>
</asp:Content>

