<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ViewResponse.aspx.vb" Inherits="ViewResponse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<script src="http://cdn.peerjs.com/0.3/peer.js"></script>
  <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
  
  <script>
      var id = '<%= Session("ConID").ToString()%>';
      var peer = new Peer(id, { key: 'ofpnaacsrbwklnmi' });
      // Compatibility shim

      peer.on('open', function (id) {
          console.log('My peer ID is: ' + id);
      });
      navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia;
      // PeerJS object
      navigator.getUserMedia({ video: true, audio: false }, function (stream) {
          var videoElement = document.getElementById("my-video");
          videoElement.src = URL.createObjectURL(stream);
          videoElement.setAttribute("autoplay", true);
      }, function (err) {
          console.log('Failed to get local stream', err);
      });
      peer.on('call', function (call) {
          navigator.getUserMedia({ video: true, audio: true }, function (stream) {
              call.answer(stream); // Answer the call with an A/V stream.
              call.on('stream', function (remoteStream) {
                  var videoElement = document.getElementById("their-video");
                  videoElement.src = URL.createObjectURL(remoteStream);
                  videoElement.setAttribute("autoplay", true);
              });
          }, function (err) {
              alert('Failed to get local stream'+ err);
          });
      });


     

  </script>
        
    <div style="width:70%; margin-left:15%">
  

        <div style="height:400px; width:100%;  text-align:center;">
            <asp:Panel ID="Panel2" runat="server" BorderStyle="Outset" BorderWidth="10px" BorderColor="white">
                <asp:Label ID="Label3" runat="server" Text="YOU CAN VIDEO CALL WITH DOCTOR IF HE OR SHE IS ONLINE " style="font-weight: 700; font-size: large; color: #FFFF00"></asp:Label>
        <div style="height:250px; width:100%;">
            <video style="background:url(../Images/now-loading.gif) no-repeat center; height:100%; width:100%;float:left;  text-align:center;" id="their-video" autoplay></video>
        </div>               
         <div style="height:100px; width:100%;">
         <video style="height:100%; width:50%;float:left; text-align:center;"  id="my-video" muted="true" autoplay></video>
             </div>
                </asp:Panel>
      </div>
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" BorderColor="White" BorderStyle="Outset" BorderWidth="10px">
            <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="Doctor Response"></asp:Label>
            <br />
            <br />
            <span style="color: #FFFFFF"><strong>Doctor<br />
            <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Solid" ReadOnly="True" Width="180px"></asp:TextBox>
            <br />
            <br />
                <div style="width:100%; height:200px;">
                    <div style="width:33%;height:100%; float:left">
                         Problem<br />
            <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Solid" Height="133px" ReadOnly="True" TextMode="MultiLine" Width="180px"></asp:TextBox>
            

                    </div>
                    <div style="width:33%;height:100%; float:left">
                        Recommendation<br />
            <asp:TextBox ID="TextBox3" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Solid" Height="133px" TextMode="MultiLine" Width="180px" ReadOnly="True"></asp:TextBox>
            

                    </div>
                    <div style="width:34%;height:100%; float:left">
                        Prescription<br />
            <asp:TextBox ID="TextBox4" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Solid" Height="133px" TextMode="MultiLine" Width="180px" ReadOnly="True"></asp:TextBox>
            

                    </div>
                 </div>
         
            <span style="color: #336699">
                <asp:Button ID="Button1" runat="server" Text="Save" Width="180px" CssClass="button" />
            <asp:Button ID="Button2" runat="server" Text="Back" Width="180px" CssClass="button" />
            </span></strong></span>
        </asp:Panel>
        <br />
         <span style="color: #3366CC"><strong><span style="color: #336699">
                <br />
        </span>
                </strong></span>


    </div>
</asp:Content>

