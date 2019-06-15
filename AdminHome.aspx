<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="AdminHome.aspx.vb" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="width:100%">

        <div style="width:60%;margin-left:15%;margin-right:15%; text-align: center;">
            <div style="width:100%">
                         <strong>
                         <br />
            <asp:Label ID="Label1" runat="server" Text="ADMIN HOME PAGE" style="font-size: xx-large; color: #FFFFFF; text-align: center;"></asp:Label>
            </strong>
                         <br />
            </div>
   
            <div style="width:50%;height:150px;float:left">
                <asp:Panel ID="Panel1" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                <br />
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Images/icon_surgeon_add.png" Width="100px" />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/AddDoctor.aspx" ForeColor="White">Add Doctor</asp:LinkButton>
                     </asp:Panel>
            </div>
             <div style="width:50%;height:150px;float:left">
                 <asp:Panel ID="Panel2" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                 <br />
                 <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/Images/2-1.jpg" Width="100px" />
                 <br />
                 <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/AddDisease.aspx" ForeColor="White">Add Disease</asp:LinkButton>
                      </asp:Panel>
            </div>

            <div style="width:50%;height:150px;float:left">
                <asp:Panel ID="Panel3" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                <br />
                <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl="~/Images/doctor_icon.jpg" Width="100px" />
                <br />
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/ViewDoctor.aspx" ForeColor="White">View Doctor</asp:LinkButton>
                     </asp:Panel>
            </div>
             <div style="width:50%;height:150px;float:left">
                 <asp:Panel ID="Panel4" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                 <br />
                 <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl="~/Images/disease_icon_400x400.jpg" Width="100px" />
                 <br />
                 <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/ViewDisease.aspx" ForeColor="White">View disease</asp:LinkButton>
 </asp:Panel>
            </div>

            <div style="width:50%;height:150px;float:left">
                <asp:Panel ID="Panel5" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                <br />
                <asp:Image ID="Image5" runat="server" Height="100px" ImageUrl="~/Images/Icons-Land-Medical-People-Patient-Male.ico" Width="100px" />
                <br />
                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/ViewPatient.aspx" ForeColor="White">View patient</asp:LinkButton>
                     </asp:Panel>
            </div>
             <div style="width:50%;height:150px;float:left">

                 <br />
                 <br />
                 <br />

            </div>

        </div>
    </div>
</asp:Content>

