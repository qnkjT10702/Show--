<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyMusic.aspx.cs" Inherits="Enterprise.UI.MyMusic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $('#AppBar5').css({ backgroundColor: '#fdad02', color: '#4A4A4A' })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        #MyMusic{
            width:100%;
            height:240px;
            background-image:url("Imgs/backImg4.jpg");
            background-size:44%;
            opacity:0.7;
        }
        #MyInfo{
            width:100%;
            height:140px;
            position:absolute;
            top:166px;
            text-align:center;
        }
        #UImg{
            width:106px;
            height:106px;
            border-radius:50%;
            border:3px solid white;
            margin:0px auto;
        }
        #UName{
            text-align:center;
            font-size:28px;
            color:#333333;
            margin-top:10px;
        }
        #myLove{
            width:100%;
            padding:20px 100px;
        }
        h2{
            color:#333333;
        }
        #likeSong{
            margin-top:20px;
        }
        #likeSong tr:nth-child(1){
            color:#999999;
        }
        #likeSong td{
            padding:12px 10px;
        }
        #likeSong td a{
            color:#4a4a4a;
        }
        #likeSong td a:hover{
            color:#fdad02;
        }
    </style>

    <div id="MyMusic"></div>
    <div id="MyInfo">
        <div id="UImg"><asp:Image ID="UserImg" runat="server" /></div>
        <div id="UName"><asp:Label ID="UserName" runat="server" Text="Label"></asp:Label></div>
        <div style="margin-top:10px;"><a href="editorial.aspx">编辑资料</a></div>
    </div>
    <div id="myLove">
        <h2><span>我的收藏</span></h2>
        <div id="likeSong">
          <table style="width:1150px;border:3px solid #4A4A4A;">
            <tr>
                <td style="width:56%;">歌曲</td>
                <td style="width:16%;">歌手</td>
                <td style="width:10%;">风格</td>
                <td>编辑</td>
            </tr>
            <tr>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
            </tr>
            <tr>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
            </tr>
            <tr>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
            </tr>
            <tr>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
            </tr>
            <tr>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
                <td><a href="">123</a></td>
            </tr>
          </table>
        </div>
    </div>

</asp:Content>
