<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="playMicOne.ascx.cs" Inherits="Enterprise.UI.playMicOne" %>
<style>
    .Song{
        border:1px solid red;
        width:1100px;
        height:100px;
        margin:0 auto;
        background-color:white;
    }
    .Musicalbum{
        width:130px;
        height:100px;
        position:absolute;
    }
    audio{
        margin:30px auto;
        width:800px;
        margin-left:150px;
    }
    #Likethepicture{
        background-image:url(images/Axin.jpg);
        position:absolute;
        left:800px;
    }
</style>
<div class="Song">
    <img src="images/A_Lin1.jpg" alt="Alternate Text"  class="Musicalbum"/>
    <audio  src="Musics\06aa5e8b-7631-4330-b8d4-811bb0343a6dA-Lin - 爱 (Live).mp3" controls="controls" autoplay="autoplay">
    </audio>
    <div id="Likethepicture">
        
    </div>
</div>