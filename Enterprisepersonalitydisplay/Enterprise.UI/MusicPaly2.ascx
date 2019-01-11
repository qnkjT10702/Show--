<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MusicPaly2.ascx.cs" Inherits="Enterprise.UI.MusicPaly2" %>
<div id="bigBox" style="border:1px black solid; height:110px;width:1000px; background-color:antiquewhite;">
    <div runat="server" id="SingerNameSty" style="position:relative;top:26px; color:chocolate;left:133px; font-size:25px;">鹿晗</div>
    <div runat="server" id="SusicNameSty" style="position:relative;top:38px;left:131px; font-size:21px;">爱上未来的你</div>
     <input type="button" class="btnCollestSty" />
     <input type="button" class="btnDownLoadSty" />
    <audio runat="server" id="AudioMic" controls="controls" src="" style="width:500px; background-color:transparent;position:relative;left:250px;top:-2px;"></audio>
    <div id="SingerImg" runat="server" style=" position:relative;left:0px;top:0px;">
        <asp:Image ID="SingerImgs" runat="server" src="../Imgs/38d88ab1-4fcd-4f19-9d2c-28a707c66bf3Kim Taylor.jpg" Height="110px" Width="110px" style="position:relative;top:-96px;left:0px;"/>
    </div>
</div>