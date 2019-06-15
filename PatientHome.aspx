<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="PatientHome.aspx.vb" Inherits="PatientHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="width:100%">

        <div style="width:60%;margin-left:15%;margin-right:15%; text-align: center;">
            <div style="width:100%">
                         <br />
                         <strong>
            <asp:Label ID="Label1" runat="server" Text="PATIENT HOME PAGE" style="font-size: xx-large; color: #FFFFFF; text-align: center;"></asp:Label>
            </strong>
                         <br />
                         <br />
            </div>
   
            <div style="width:50%;height:150px;float:left">
                <asp:Panel ID="Panel1" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                <br />
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Images/icon_surgeon_add.png" Width="100px" />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SearchDoctor.aspx" ForeColor="White">Search Doctor</asp:LinkButton>
                    </asp:Panel>
            </div>
             <div style="width:50%;height:150px;float:left">
                 <asp:Panel ID="Panel2" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                 <br />
                 <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/Images/2-1.jpg" Width="100px" />
                 <br />
                 <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/DiseasePrediction.aspx" ForeColor="White">Disease Prediction</asp:LinkButton>
                     </asp:Panel>
            </div>

            <div style="width:50%;height:150px;float:left">
                <asp:Panel ID="Panel3" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                <br />
                <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl="~/Images/Medical Appointment New.jpg" Width="100px" />
                <br />
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/ViewApp.aspx" ForeColor="White">Appointments</asp:LinkButton>
                    </asp:Panel>
            </div>
             <div style="width:50%;height:150px;float:left">
                 <asp:Panel ID="Panel4" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                 <br />
                 <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl="~/Images/multiple-forums.png" Width="100px" />
                 <br />
                 <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/ViewFeedBack.aspx" ForeColor="White">Feed Back</asp:LinkButton>
</asp:Panel>
            </div>

            <div style="width:50%;height:150px;float:left">
                <asp:Panel ID="Panel5" runat="server" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
                <br />
                <asp:Image ID="Image5" runat="server" Height="100px" ImageUrl="~/Images/profile_icon.jpg" Width="100px" />
                <br />
                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/EditPatient.aspx" ForeColor="White">Profile</asp:LinkButton>
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

