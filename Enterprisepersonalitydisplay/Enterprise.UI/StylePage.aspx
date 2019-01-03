<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StylePage.aspx.cs" Inherits="Enterprise.UI.StylePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $('#AppBar3').css({ backgroundColor: '#4A4A4A',color:'#fdad02' })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        #styleTitle{
            width:100%;
            height:70px;
            padding:0px 150px;
            box-sizing:border-box;
            line-height:70px;
        }
        #styleSong{
            width:100%;
            border:1px solid red;
            padding:20px 100px;
            box-sizing:border-box;
            display:flex;   /*不换行*/
            justify-content: space-between;
            flex-wrap: wrap;
        }
        #song{
            width:220px;
            height:290px;
            background-color:#f8f8f8;
            margin-bottom:20px;
        }
        .songImg{
            width:100%;
            height:220px;
            background-color:peachpuff;
        }
        .songName{
            color:black;
            margin-top:12px;
        }
        .singerName{
            color:#999999;
        }
        .style{color:#fdad02;}
    </style>

    <div id="styleTitle">
        <span style="padding:7px 14px;color:white;background-color:#fdad02;font-size:14px;">推荐</span>
        <span style="margin-left:50px;">请选择分类风格：
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        </span>
    </div>
    <div id="styleSong">
        <div id="song">
            <div class="songImg"><asp:Image ID="songImg" runat="server" /></div>
            <div class="songName"><asp:Label ID="songName" runat="server" Text="Label"></asp:Label></div>
            <div class="singerName"><asp:Label ID="singeName" runat="server" Text="Label"></asp:Label></div>
        </div>
    </div>

    <script>
        $(function () {
            $('.songName,.singerName').hover(function () {
                $(this).toggleClass('style');
            })
        })

        for(var i=1;i<20;i++){
            var styleSong = document.getElementById('styleSong');
            var song = document.getElementById('song');
            var newNode = song.cloneNode(true);
            styleSong.appendChild(newNode);
		}
    </script>

</asp:Content>
