<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="AddDoctor.aspx.vb" Inherits="AddDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <div class="text-center">


         <br />
         <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="Add Doctor"></asp:Label>
         <br />
         <br />
         <span style="color: #FFFFFF"><strong>UserName<br />
         </strong>
         <asp:TextBox ID="TextBox1" runat="server" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
         <br />
         <br />
         <strong>Password<br />
         <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
         <br />
         </strong></span>
         <br />
         <span style="color: #FFFFFF"><strong>First Name</strong></span><br />
         <span style="color: #FFFFFF">
         <asp:TextBox ID="TextBox3" runat="server" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
         <br />
         <br />
         <strong>Last Name</strong><br />
         <asp:TextBox ID="TextBox4" runat="server" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
         <br />
         <br />
         <strong>Specialization</strong><br />
         <asp:DropDownList ID="DropDownList1" runat="server" Width="180px" BackColor="White" CssClass="form-control-static">
             <asp:ListItem>LUNGS</asp:ListItem>
             <asp:ListItem>CHEST</asp:ListItem>
             <asp:ListItem>LIVER</asp:ListItem>
             <asp:ListItem></asp:ListItem>
         </asp:DropDownList>
         <br />
         <br />
         <strong>Contact Number</strong><br />
         <asp:TextBox ID="TextBox5" runat="server" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
         </span>
         <br />
         <br />
        <strong>
        <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="ERROR" Visible="False"></asp:Label>
        </strong>



         <br />
        <strong>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" Width="180px" CssClass="button"  />
        </strong>



         <br />
         <br />


     </div>
</asp:Content>

