<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="playMicOne.ascx.cs" Inherits="Enterprise.UI.playMicOne" %>
<style>
    .Song{
        border:1px solid orange;
        width:1100px;
        height:40px;
        margin:0 auto;
        background-color:blanchedalmond;
        line-height:40px;
    }
    .js_song{
        text-decoration:none;
        font-size:20px;
        margin-top:-5px;
        color:green;
     }
    .singer{
       text-decoration:none; 
       font-size:20px;
       color:green;
       margin-left:300px;
    }
    .play{
        width:38px;
        height:38px;
        background-image:url("Imgs/round44.gif");
        background-size:225%;
        background-position:-47px -47px;
        margin-left:120px;
    }
    .style{
        margin-left:120px;
        font-size:18px;
    }
    .collect{
        margin-left:130px;
        font-size:30px;
        color:orange;
    }
</style>
<div class="Song"> 
  <div style="display:flex;">
      <a href="#" class="js_song" title="说爱你(Cover 沈以诚)">说爱你(Cover 沈以诚)</a>       <%--///跳转歌曲播放页面--%>
      <a href="#" class="singer" title="Ssssperm">Ssssperm</a>                                <%--///点击跳转歌手页面--%>
      <a href="#"><div class="play"></div></a>
      <span class="style">流行音乐</span>
      <span class="collect">+</span>
      </div>
  </div>