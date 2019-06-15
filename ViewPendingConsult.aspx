<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ViewPendingConsult.aspx.vb" Inherits="ViewPendingConsult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="width:70%;margin-left:15%">



        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <br />
            <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="Pending Consults"></asp:Label>
            <br />
            <br />
            <asp:Table ID="Table1" runat="server" BorderColor="Black" BorderStyle="Inset" CellPadding="1" CellSpacing="2" GridLines="Both" HorizontalAlign="Center" Width="100%" BackColor="#00CCFF">
                <asp:TableRow runat="server" Font-Bold="True">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">ID</asp:TableCell>
                    <asp:TableCell runat="server">Patient</asp:TableCell>
                    <asp:TableCell runat="server">Problem</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <br />
            <span style="color: #3366CC"><strong><span style="color: #336699">
            <asp:Button ID="Button2" runat="server" Text="Response"  Width="180px" CssClass="button" />
            </span></strong></span>
        </asp:Panel>



        <br />
                <br />



    </div>

</asp:Content>

