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
            padding:20px 100px;
            box-sizing:border-box;
            display:flex;   /*不换行*/
            justify-content: space-between;
            flex-wrap: wrap;
        }
        #styleSong tr:nth-child(1){
            color:#999999;
        }
        #styleSong td{
            padding:12px 10px;
        }
        #styleSong td a{
            color:#4a4a4a;
        }
        #styleSong td a:hover{
            color:#fdad02;
        }
    </style>

    <div id="styleTitle">
        <span style="padding:7px 14px;color:white;background-color:#fdad02;font-size:14px;">推荐</span>
        <span style="margin-left:50px;">请选择分类风格：
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        </span>
    </div>
    <div id="styleSong">
        <table style="width:1150px;border:3px solid #4A4A4A;">
            <tr>
                <td style="width:56%;">歌曲</td>
                <td style="width:16%;">歌手</td>
                <td style="width:8%;">播放</td>
                <td style="width:10%;">风格</td>
                <td>收藏</td>
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

    <script>
        $(function () {
            $('.songName,.singerName').hover(function () {
                $(this).toggleClass('style');
            })
        })
    </script>

</asp:Content>
