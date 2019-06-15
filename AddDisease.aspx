<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="AddDisease.aspx.vb" Inherits="AddDisease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="text-center">
        

        <br />
         <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="Add Disease"></asp:Label>
         <br />
        <br />
        <br />
        <span style="color: #FFFFFF"><strong>Name<br />
        </strong>
        <asp:TextBox ID="TextBox1" runat="server" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
        <br />
        <br />
        <strong>Type<br />
         <asp:DropDownList ID="DropDownList1" runat="server" Width="180px" BackColor="White" CssClass="form-control-static">
             <asp:ListItem>LUNGS</asp:ListItem>
             <asp:ListItem>CHEST</asp:ListItem>
             <asp:ListItem>LIVER</asp:ListItem>
             <asp:ListItem>GENERAL</asp:ListItem>
         </asp:DropDownList>
         <br />
        <br />
        <b><span>SYMPTOMS<br />
        (Each in new line)<br />
        <asp:TextBox ID="TextBox2" runat="server" Height="152px" TextMode="MultiLine" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="ERROR" Visible="False"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" Width="180px" CssClass="button" />
        <br />
        </span></b></strong></span>
        <br />
        

    </div>

</asp:Content>

