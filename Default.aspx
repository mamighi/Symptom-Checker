<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center"">
        <strong>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="LOGIN" style="font-size: xx-large; color: #FFFFFF;"></asp:Label>



        <br />
        <br />
        <span style="color: #FFFFFF">USER NAME</span><br />
        <asp:TextBox ID="TextBox1" runat="server" Width="207px" CssClass="form-control-static"></asp:TextBox>
        <br />
        <br />
        <span style="color: #FFFFFF">PASSWORD</span><br />
        <asp:TextBox ID="TextBox2" runat="server" Width="207px" TextMode="Password" CssClass="form-control-static"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="ERROR" Visible="False"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Sign In" CssClass="button" Width="207px" />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="RegisterPatient.aspx" ForeColor="White" CssClass="link">Register New Account</asp:LinkButton>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </strong>



    </div>


</asp:Content>
