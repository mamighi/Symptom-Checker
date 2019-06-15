<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ViewFeedBack.aspx.vb" Inherits="ViewFeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="width:70%; margin-left:15%">


        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <br />
            <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="Feed Back"></asp:Label>
            <br />
            <br />
            <asp:Table ID="Table1" runat="server" BorderColor="White" BorderStyle="Outset" CellPadding="1" CellSpacing="2" GridLines="Both" HorizontalAlign="Center" Width="100%" BackColor="#00CCFF" BorderWidth="5px">
                <asp:TableRow runat="server" Font-Bold="True">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">ID</asp:TableCell>
                    <asp:TableCell runat="server">Doctor</asp:TableCell>
                    <asp:TableCell runat="server">Problem</asp:TableCell>
                    <asp:TableCell runat="server">Status</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <br />
            <strong>
            <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="ERROR" Visible="False"></asp:Label>
            </strong>
            <br />
            <span style="color: #3366CC"><strong><span style="color: #336699">
            <asp:Button ID="Button2" runat="server" Text="Check Response" Width="180px" CssClass="button" />
            </span></strong></span>
        </asp:Panel>


        <br />
         <span style="color: #3366CC"><strong>
                <span style="color: #336699">
                <br />
        </span>
                </strong></span>


    </div>
</asp:Content>

