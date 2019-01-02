<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="playMicOne.ascx.cs" Inherits="Enterprise.UI.playMicOne" %>
<style>
    .Song{
       border:1px solid red;
       position:absolute;
       top:900px;
       height:200px;
       width:2000px;
    }
    .MusicPictures{
        position:absolute;
        left:380px;
        top:850px;
        width:120px;
        height:100px;
    }
    audio{
       position:absolute;
       top:900px;
       left:800px;
    }

</style>
<div class="Song">
    <audio  src="Musics\06aa5e8b-7631-4330-b8d4-811bb0343a6dA-Lin - 爱 (Live).mp3" controls="controls" autoplay="autoplay" style="width:1000px;">
    </audio>
    <img class="MusicPictures" src="images\AlIn2.jpg" alt="Alternate Text" />
</div>