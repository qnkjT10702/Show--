﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyMusic.aspx.cs" Inherits="Enterprise.UI.MyMusic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            var SongInfo = '<tr><td class="MicName">{{MicName}}</td><td class="SingerName">{{SingerName}}</td><td class="StyleName">{{StyleName}}</td><td class="ShiftOut">移出收藏</td><td class="Micid_my">{{MicId}}</td></tr>';
            $('#AppBar5').css({ backgroundColor: '#fdad02', color: '#4A4A4A' });
            AJAX();
            function AJAX() {
                $.ajax({
                    type: 'post',
                    dataType: 'json',
                    success: function (data) {
                        MicInfo(data);
                    }
                })
            }

            //替换母版的方法
            function MicInfo(data) {
                var SongInfo_replace = "";
                for (var i = 0; i < data.length; i++) {
                    SongInfo_replace += SongInfo.replace('{{MicName}}', data[i].MicName).replace('{{SingerName}}', data[i].SingerName).replace('{{StyleName}}', data[i].StyleName).replace('{{MicId}}', data[i].MicId);
                }
                $('#Songlike').html(SongInfo_replace);
            }

            //点击歌曲名播放功能
            $('#Songlike').on('click', '.MicName', function () {
                var s = $('.MicName').index($(this));
                var MicName = $('.MicName').eq(s).text();
                var SingerName = $('.SingerName').eq(s).text();
                location.href = 'Musicpaly.aspx?SongName=' + MicName + '&SingerName=' + SingerName;
            })

            //更改用户收藏表
            $('#Songlike').on('click', '.ShiftOut', function () {
                var s = $('.ShiftOut').index($(this));
                var MicId = $('.Micid_my').eq(s).text();
                $.ajax({
                    url: 'DeleteCollection_MyMusic.ashx',
                    type: 'post',
                    dataType: 'json',
                    data: { MicId: MicId },
                    success: function (data) {
                        Reminder(data);
                    }
                })
            })

            //弹出提示
            function Reminder(data) {
                if (data.result == 0) {
                    alert("哎呀！操作失败(╥╯^╰╥)");
                } else if (data.result == 1) {
                    alert("移出成功(oﾟ▽ﾟ)o  ");
                    AJAX();
                }
            }

            //退出登录功能
            $('#out').click(function () {
                $.ajax({
                    url: "LogOut.ashx",
                    type: 'post',
                    dataType: 'json',
                    success: function (data) {
                        if (data.result == -1) {
                            Show_sdf();
                        }
                        
                    }
                })
                
            })
            //刷新页面
            function Show_sdf() {
                console.log('s');
                location.href="/MyMusic.aspx";
                
                
            }
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        #MyMusic {
            width: 100%;
            height: 240px;
            background-image: url("Imgs/backImg4.jpg");
            background-size: 44%;
            opacity: 0.7;
        }

        #MyInfo {
            width: 100%;
            height: 140px;
            position: absolute;
            top: 166px;
            text-align: center;
        }
        #end{
            top:4px;
        }
        #UImg {
            width: 106px;
            height: 106px;
            border-radius: 50%;
            border: 3px solid white;
            margin: 0px auto;
        }

        #UName {
            text-align: center;
            font-size: 28px;
            color: #333333;
            margin-top: 10px;
        }

        #myLove {
            width: 100%;
            padding: 20px 188px;
        }

        h2 {
            color: #333333;
        }

        #likeSong {
            margin-top: 20px;
        }

            #likeSong td {
                padding: 12px 10px;
            }

        #out:hover {
            cursor: pointer;
        }

        .MicName {
            width: 56%;
        }

            .MicName:hover {
                color: aqua;
            }

        .SingerName {
            width: 16%;
            color: burlywood;
        }

        .StyleName {
            width: 10%;
            color: burlywood;
        }

        .ShiftOut:hover {
            color: orange;
        }

        .Micid_my {
            position: absolute;
            display: none;
        }

        #Songlike {
            position: relative;
        }

        #UImg>img {
            border-radius: 50%;
            width: 106px;
            height: 106px;
            margin: -3px -3px;
        }
    </style>

    <div id="MyMusic"></div>
    <div id="MyInfo">
        <div id="UImg">
            <asp:Image ID="UserImg" runat="server" /></div>
        <div id="UName">
            <asp:Label ID="UserName" runat="server" Text="Label"></asp:Label></div>
        <div style="margin-top: 10px;"><a href="editorial.aspx">编辑资料</a>,<span id="out">退出登录</span></div>
    </div>
    <div id="myLove">
        <h2><span>我的收藏</span></h2>
        <div id="likeSong">
            <table style="width: 1150px; border: 3px solid #4A4A4A;" id="Songlike">
            </table>
        </div>
    </div>

</asp:Content>
