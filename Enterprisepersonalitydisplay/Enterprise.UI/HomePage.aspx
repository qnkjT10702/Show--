<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Enterprise.UI.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $('#AppBar4').css({ backgroundColor: '#fdad02', color: '#4A4A4A' })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        #div{padding:0px 100px;}
        #pictureRot{
            width:1150px;
            height:400px;
            border:1px solid red;
            position:relative;
        }
        h1{
            color:#4A4A4A;
            text-align:center;
            padding:20px 0px;
        }
        #recommend_in{
            width:100%;
            display:flex;   /*不换行*/
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .songList{
            width:360px;
            height:90px;
            background-color:#f8f8f8;
            margin-bottom:10px;
        }
        .micImg{
            width:90px;
            height:90px;
            background-color:bisque;
            float:left;
            margin-right:20px;
        }
        .micName{
            color:#000000;
            margin-top:21px;
        }
        .singerName{
            color:#999999;
            margin-top:4px;
        }
        .style{color:#fdad02;}
    </style>

    <div id="div">
        <div id="pictureRot">
            <%--图片轮播代码--%>
        </div>
        <div style="width:1150px;margin-bottom:20px;">
            <h1>新&nbsp;&nbsp;&nbsp;&nbsp;歌&nbsp;&nbsp;&nbsp;&nbsp;首&nbsp;&nbsp;&nbsp;&nbsp;发</h1>
            <div id="recommend_in">
                <div class="songList">
                    <div class="micImg"><asp:Image ID="micImg" runat="server" /></div>
                    <div class="micName"><asp:Label ID="micName" runat="server" Text="Label"></asp:Label></div>
                    <div class="singerName"><asp:Label ID="singerName" runat="server" Text="Label"></asp:Label></div>
                </div>
            </div>
        </div>
    </div>

    <script src="scripts/jquery-3.3.1.min.js"></script>
    <script>
        $(function () {
            $('.micName,.singerName').hover(function () {
                $(this).toggleClass('style');
            })
            for (var i = 0; i < length; i++) {

            }
        })
    </script>

</asp:Content>
