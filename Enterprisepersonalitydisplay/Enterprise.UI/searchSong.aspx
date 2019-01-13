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
        #end{
            top: 230px;
        }
        .tableHead{
            font-size: 17px;
        }
    </style>

    <h2 id="h2">搜索内容<span style="margin-left:80%;" class="backtrack">返回</span></h2>
    <table id="tableSong">
        
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            var Sing = '<tr><td class="MicName">{{MicName}}</td><td  class="bofa">播放</td><td class="SingerName">{{SingerName}}</td></tr>';
            Ajax();
            function Ajax() {
                $.ajax({
                    type: 'post',
                    dataType: 'json',
                    success: function (data) {
                        Show(data);
                    }
                })
            }
            //替换母版
            function Show(data) {
                var SongInfo_replace = "";
                for (var i = 0; i < data.length; i++) {
                    SongInfo_replace += Sing.replace('{{MicName}}', data[i].MicName).replace('{{SingerName}}',data[i].SingerName);
                }
                $('#tableSong').html('<tr class="tableHead"><td style="width:46%;">歌曲</td><td style="width:10%;">播放</td><td style="width:24%;">歌手</td></tr>'+SongInfo_replace);
            }

            //返回
            $('.backtrack').click(function () {
                location.href = "HomePage.aspx";
            })

            //播放功能
            $('#tableSong').on('click', '.bofa', function () {
                var s = $('.bofa').index($(this));
                var MicName = $('.MicName').eq(s).text();
                var SingerName = $('.SingerName').eq(s).text();
                location.href = 'Musicpaly.aspx?SongName=' + MicName + '&SingerName=' + SingerName;
            })
        })
    </script>
</asp:Content>
