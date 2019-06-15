<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="PAppointment.aspx.vb" Inherits="PAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="text-center">
        <div style="width:30%;margin-left:35%">
        <br />
         <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="New Appoitment"></asp:Label>
         <br />
        <br />
        <span style="color: #FFFFFF"><strong>DOCTOR<br />
            <asp:Label ID="Label3" runat="server" Text="Label" BorderColor="#003366" BorderStyle="Inset" BorderWidth="2px"></asp:Label>
        <br />
        <br />
        Date<br />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="100%">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
            <br />
            Time<br />
        <asp:DropDownList ID="DropDownList2" runat="server" Width="180px" CssClass="form-control-static">
            <asp:ListItem>8:00</asp:ListItem>
            <asp:ListItem>8:30</asp:ListItem>
            <asp:ListItem>9:00</asp:ListItem>
            <asp:ListItem>9:30</asp:ListItem>
            <asp:ListItem>10:00</asp:ListItem>
            <asp:ListItem>10:30</asp:ListItem>
            <asp:ListItem>11:00</asp:ListItem>
            <asp:ListItem>11:30</asp:ListItem>
            <asp:ListItem>12:00</asp:ListItem>
            <asp:ListItem>12:30</asp:ListItem>
            <asp:ListItem>13:00</asp:ListItem>
            <asp:ListItem>13:30</asp:ListItem>
            <asp:ListItem>14:00</asp:ListItem>
            <asp:ListItem>14:30</asp:ListItem>
            <asp:ListItem>15:00</asp:ListItem>
            <asp:ListItem>15:30</asp:ListItem>
            <asp:ListItem>16:00</asp:ListItem>
            <asp:ListItem>16:30</asp:ListItem>
            <asp:ListItem>17:00</asp:ListItem>
            <asp:ListItem>17:30</asp:ListItem>
            <asp:ListItem>18:00</asp:ListItem>
            <asp:ListItem>18:30</asp:ListItem>
            <asp:ListItem>19:00</asp:ListItem>
        </asp:DropDownList>
            <br />
            <br />
        <b><span>
        <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="ERROR" Visible="False"></asp:Label>
        </span></b>
            <br />
        <b><span>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" Width="180px" CssClass="button" />
        </span></b>
            <br />
        </strong></span>

    </div>
        </div>
</asp:Content>

