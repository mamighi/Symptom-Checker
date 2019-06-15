<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Response.aspx.vb" Inherits="Response" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script src="http://cdn.peerjs.com/0.3/peer.js"></script>
      <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>

  
  <script>
      var peer = new Peer('123gdfgdfggd', { key: 'ofpnaacsrbwklnmi' });
      peer.on('open', function (id) {
          console.log('My peer ID is: ' + id);
      });
      navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia;
      // PeerJS object
      navigator.getUserMedia({ video: true, audio: false }, function (stream) {
          var videoElement = document.getElementById("my-video");
          videoElement.src = URL.createObjectURL(stream);
          videoElement.setAttribute("autoplay", true);
      },function (err) {
          console.log('Failed to get local stream', err);
      });
      navigator.getUserMedia({ video: true, audio: true }, function (stream2) {
          var id = '<%= Session("ConID").ToString()%>';
          var common=false;
          
              var call = peer.call(id, stream2);
              call.on('stream', function (remoteStream) {
                  var videoElement = document.getElementById("their-video");
                  videoElement.src = URL.createObjectURL(remoteStream);
                  videoElement.setAttribute("autoplay", true);
              });
          
      }, function (err) {
          alert('Failed to get local stream', err);
      });
  </script>
    <div style="width:70%; margin-left:15%">


        <div style="height:400px; width:100%;  text-align:center;">
            <asp:Panel ID="Panel2" runat="server" BorderStyle="Outset" BorderWidth="10px" BorderColor="white">
                <asp:Label ID="Label3" runat="server" Text="YOU CAN VIDEO CALL WITH PATIENT IF HE OR SHE IS ONLINE " style="font-weight: 700; font-size: large; color: #FFFF00"></asp:Label>
        <div style="height:250px; width:100%;">
            <video style="background:url(../Images/now-loading.gif) no-repeat center; height:100%; width:100%;float:left;  text-align:center;" id="their-video" autoplay></video>
        </div>               
         <div style="height:100px; width:100%;">
         <video style="height:100%; width:50%;float:left; text-align:center;"  id="my-video" muted="true" autoplay></video>
             </div>
                </asp:Panel>
      </div>

        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" BorderStyle="Outset" BorderWidth="10px" BorderColor="white">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="Response"></asp:Label>
            <br />
            <br />
            <span style="color: #FFFFFF"><strong>Patient<br /></strong>
            <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Solid" ReadOnly="True" Width="180px"></asp:TextBox>
            <br />
            <br />
                <div style="width:100%; height:200px;">
                    <div style="width:33%;height:100%; float:left">
                         <strong>Problem</strong><br /> <br />
            <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Solid" Height="133px" ReadOnly="True" TextMode="MultiLine" Width="180px"></asp:TextBox>
            
                    </div>
                    <div style="width:33%;height:100%; float:left">
                         <strong>Recommendation</strong><br /> <br />
            <asp:TextBox ID="TextBox3" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Solid" Height="133px" TextMode="MultiLine" Width="180px"></asp:TextBox>
            
                    </div>
                    <div style="width:34%;height:100%; float:left">
                         <strong>Prescription</strong><br /> <br />
            <asp:TextBox ID="TextBox4" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Solid" Height="133px" TextMode="MultiLine" Width="180px"></asp:TextBox>
            
                    </div>

                </div>
          
            <span style="color: #336699"><b><span>
            <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="ERROR" Visible="False"></asp:Label>
            </span></b></span>
            <br />
            <span style="color: #336699">
            <asp:Button ID="Button2" runat="server" Text="Submit" Font-Bold="True" Width="180px" CssClass="button" />
            </span></span>
        </asp:Panel>
        <br />


    </div>
</asp:Content>

