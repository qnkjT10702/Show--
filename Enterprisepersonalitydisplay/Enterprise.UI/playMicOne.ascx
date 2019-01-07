<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="playMicOne.ascx.cs" Inherits="Enterprise.UI.playMicOne" %>
<style>
    .Song{
        border:1px solid orange;
        width:100%;
        height:40px;
        margin:0 auto;
        background-color:blanchedalmond;
        line-height:40px;
    }
    .js_song{
        font-size:14px;
        color:green;
        position: absolute;
        left: 300px;
     }
    .js_singer{
       text-decoration:none; 
       font-size:14px;
       color:green;
       margin-left:300px;
    }
    .play{
        width:30px;
        height:28px;
        background-image:url("Imgs/round44.gif");
        background-size:212%;
        background-position:-33px -35px;
        margin-left:120px;
        margin-top: 6px;
    }
    .style{
        margin-left:120px;
        font-size:18px;
        position: absolute;
        right: 454px;
    }
    .collect{
        margin-left:130px;
        font-size:30px;
        color:orange;
        margin-top: -3px;
    }
</style>
<div class="Song"> 
  <div style="display:flex;">
      <span class="js_song"></span>       <%--///跳转歌曲播放页面--%>
      <span class="js_singer"></span>                                <%--///点击跳转歌手页面--%>
      <span class="play"></span>
      <span class="style"></span>
      <span class="collect">+</span>
      </div>
  </div>