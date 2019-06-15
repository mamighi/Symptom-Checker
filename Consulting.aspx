<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Consulting.aspx.vb" Inherits="Consulting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div>
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <br />
            <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="Consulting"></asp:Label>
            <br />
            <br />
            <span style="color: #FFFFFF"><strong>Doctor</strong></span><br />
            <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Solid" ReadOnly="True" Width="180px" CssClass="form-control-static"></asp:TextBox>
            <br />
            <br />
            <span style="color: #FFFFFF"><strong>Please Describe Your Problem</strong></span><br />
            <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Solid" Height="123px" TextMode="MultiLine" Width="180px" CssClass="form-control-static"></asp:TextBox>
            <br />
            <br />
            <span style="color: #336699"><strong><b><span>
            <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="ERROR" Visible="False"></asp:Label>
            </span></b></strong></span>
            <br />
            <span style="color: #336699"><strong><b><span>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" Width="180px" CssClass="button" />
            </span></b></strong></span>
        </asp:Panel>
        <br />
        <br />

    </div>



     



    

</asp:Content>

