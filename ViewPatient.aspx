<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ViewPatient.aspx.vb" Inherits="ViewPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <div style="width:100%">
            <div style="width:70%;margin-left:15%; text-align: center;">

                <br />
         <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="View Patient"></asp:Label>
                <br />
                <br />
                <asp:Table ID="Table1" runat="server" BorderColor="White" BorderStyle="Outset" CellPadding="1" CellSpacing="2" GridLines="Both" HorizontalAlign="Center" Width="100%" BackColor="#0099CC" BorderWidth="5px">
                    <asp:TableRow runat="server" Font-Bold="True">
                        <asp:TableCell runat="server">User Name</asp:TableCell>
                        <asp:TableCell runat="server">Name</asp:TableCell>
                        <asp:TableCell runat="server">Age</asp:TableCell>
                        <asp:TableCell runat="server">Contact Number</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br />
                <br />
                <br />

            </div>
        </div>
    </div>
</asp:Content>

