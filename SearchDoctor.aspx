<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="SearchDoctor.aspx.vb" Inherits="SearchDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <div>
        <div style="width:100%">
            <div style="width:70%;margin-left:15%; text-align: center;">

                <br />
         <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="Search Doctor"></asp:Label>
                <br />
                <br />
                <span style="color: #FFFFFF"><strong>Name,Specialization<br />
                </strong>
                <asp:TextBox ID="TextBox1" runat="server" Width="180px" CssClass="form-control-static"></asp:TextBox>
                <br />
                <br />
                </span>
                <asp:Button ID="Button1" runat="server" Text="Search" CssClass="button" />
                <br />
                <br />
                <asp:Table ID="Table1" runat="server" BorderColor="White" BorderStyle="Outset" CellPadding="1" CellSpacing="2" GridLines="Both" HorizontalAlign="Center" Width="100%" BorderWidth="5px">
                    <asp:TableRow runat="server" Font-Bold="True" BackColor="#00CCFF">
                        <asp:TableCell runat="server">No.</asp:TableCell>
                        <asp:TableCell runat="server">User Name</asp:TableCell>
                        <asp:TableCell runat="server">Name</asp:TableCell>
                        <asp:TableCell runat="server">Contact Number</asp:TableCell>
                        <asp:TableCell runat="server">Specialization</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br />
                <br />
                <span style="color: #336699"><strong>
                <br />
                <asp:Button ID="Button2" runat="server" Text="Make Appointment" CssClass="button"  />
                &nbsp;<asp:Button ID="Button3" runat="server" Text="Make Consultation" CssClass="button" />
                </strong></span>
                <br />
                <br />

            </div>
        </div>
    </div>
</asp:Content>

