<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ViewApp.aspx.vb" Inherits="ViewApp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="width:70%;margin-left:15%">




        <br />
        <br />
         <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="Appointments"></asp:Label>
         <br />
        <br />
                <asp:Table ID="Table1" runat="server" BorderColor="White" BorderStyle="Inset" CellPadding="1" CellSpacing="2" GridLines="Both" HorizontalAlign="Center" Width="100%" BackColor="#00CCFF" BorderWidth="5px">
                    <asp:TableRow runat="server" Font-Bold="True" HorizontalAlign="Center">
                        <asp:TableCell runat="server">Doctor</asp:TableCell>
                        <asp:TableCell runat="server">Date Time</asp:TableCell>
                        <asp:TableCell runat="server">Status</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br />
        <br />
        <br />
&nbsp;<br />
        <br />




    </div>
</asp:Content>

