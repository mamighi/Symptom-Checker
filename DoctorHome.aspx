<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="DoctorHome.aspx.vb" Inherits="DoctorHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="width:100%">

        <div style="width:60%;margin-left:15%;margin-right:15%; text-align: center;">
            <div style="width:100%">
                         <strong>
                         <br />
            <asp:Label ID="Label1" runat="server" Text="DOCTOR HOME PAGE" style="font-size: xx-large; color: #FFFFFF; text-align: center;"></asp:Label>
                         <br />
                         <br />
            </strong>
                         <br />
            </div>
   
            <div style="width:50%;height:150px;float:left; border:thick; border-color:white">
                <asp:Panel ID="Panel1" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                <br />
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Images/Medical Appointment New.jpg" Width="100px" CssClass="form-control-static" />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/AppRequest.aspx" ForeColor="White">Appointment Requests</asp:LinkButton>
                </asp:Panel>
            </div>
             <div style="width:50%;height:150px;float:left">
                 <asp:Panel ID="Panel2" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                 <br />
                 <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/Images/note_book_add.png" Width="100px" />
                 <br />
                 <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/DAppointment.aspx" ForeColor="White">New appointement</asp:LinkButton>
</asp:Panel>
            </div>

            <div style="width:50%;height:150px;float:left">
                <asp:Panel ID="Panel3" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                <br />
                <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl="~/Images/imagecare-icon-doctor.png" Width="100px" />
                <br />
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/ViewPendingConsult.aspx" ForeColor="White">Pending Consult</asp:LinkButton>
                </asp:Panel>
            </div>
             <div style="width:50%;height:150px;float:left">
                 <asp:Panel ID="Panel4" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                 <br />
                <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl="~/Images/profile_icon.jpg" Width="100px" />
                 <br />
                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/EditDoctor.aspx" ForeColor="White">Profile Detail</asp:LinkButton>

                 <br />
</asp:Panel>
            </div>

            <div style="width:50%;height:150px;float:left">

                <br />
                <br />

            </div>
             <div style="width:50%;height:150px;float:left">

                 <br />
                 <br />
                 <br />

            </div>

        </div>
    </div>
</asp:Content>

