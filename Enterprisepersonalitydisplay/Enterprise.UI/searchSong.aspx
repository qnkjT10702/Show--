<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="searchSong.aspx.cs" Inherits="Enterprise.UI.searchSong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        #h2{
            margin-top:30px;
            margin-left:100px;
        }
        #tableSong{
            width:86%;
            border:3px solid #4a4a4a;
            margin:30px 100px;
        }
    </style>

    <h2 id="h2">搜索内容</h2>
    <table id="tableSong">
        <tr>
            <td style="width:46%;">歌曲</td>
            <td style="width:10%;">播放</td>
            <td style="width:24%;">歌手</td>
            <td>编辑</td>
        </tr>
        <tr>
            <td>123</td>
            <td>123</td>
            <td>123</td>
            <td>123</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
