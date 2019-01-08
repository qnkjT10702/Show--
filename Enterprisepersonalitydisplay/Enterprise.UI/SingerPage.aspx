<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SingerPage.aspx.cs" Inherits="Enterprise.UI.SingerPage" %>

<%@ Register Src="~/playMicOne.ascx" TagPrefix="uc1" TagName="playMicOne" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            var Stamper = '<div class="singers"><div class="singers-img"> <img src="{{HardImg}}" /> </div><div class="singers-font">{{SingerName}}</div> </div>';
            var Song = '<div class="Song"><div style="display: flex;"><span class="js_song">{{MicName}}</span><span class="js_singer">{{SingerName}}</span><span class="play"></span><span class="style">{{StyleName}}</span><span class="collect">+</span></div></div>';
            Ajax();
            $('#AppBar2').css({ backgroundColor: '#4A4A4A', color: '#fdad02' })

            $('.list-Regio>span').click(function () {
                for (var i = 0; i <= $('.list-Regio>span').length ; i++) {
                    var s = $('.list-Regio>span').index($(this));
                    $('.list-Regio>span').eq(s).css({ color: 'white', backgroundColor: "orange" });
                    $('.list-Regio>span').eq(i).css({ color: 'black', backgroundColor: "white" });
                    $('.list-Regio>span').eq(s).addClass('list-RegioSpan');
                    $('.list-Regio>span').eq(i).removeClass('list-RegioSpan');
                }
                Ajax();
            })

            $('.list-Sex>span').click(function () {
                for (var i = 0; i <= $('.list-Sex>span').length; i++) {
                    var s = $('.list-Sex>span').index($(this));
                    $('.list-Sex>span').eq(s).css({ color: 'white', backgroundColor: "orange" });
                    $('.list-Sex>span').eq(i).css({ color: 'black', backgroundColor: "white" });
                    $('.list-Sex>span').eq(s).addClass('list-SexSpan');
                    $('.list-Sex>span').eq(i).removeClass('list-SexSpan');
                }
                Ajax();
            })

            $('.list-Style>span').click(function () {
                for (var i = 0; i <= $('.list-Style>span').length; i++) {
                    var s = $('.list-Style>span').index($(this));
                    $('.list-Style>span').eq(s).css({ color: 'white', backgroundColor: "orange" });
                    $('.list-Style>span').eq(i).css({ color: 'black', backgroundColor: "white" });
                    $('.list-Style>span').eq(s).addClass('list-StyleSpan');
                    $('.list-Style>span').eq(i).removeClass('list-StyleSpan');
                }
                Ajax();
            })
            function Ajax() {

                var Regiotext = $('.list-RegioSpan').text();
                var Sextext = $('.list-SexSpan').text();
                var Styletext = $('.list-StyleSpan').text();
                if (Regiotext == "全部") {
                    Regiotext = "";
                }
                if (Sextext == "全部") {
                    Sextext = "";
                }
                if (Styletext == "全部") {
                    Styletext = "";
                }
                $.ajax({
                    type: 'post',
                    dataType: 'json',
                    data: { Regiotext: Regiotext, Sextext: Sextext, Styletext: Styletext },
                    success: function (data) {
                        Replacedata(data);
                    }
                })
            }
            //生成母版的方法
            function Replacedata(data) {
                let outStamper = '';
                for (var i = 0; i < data.length; i++) {
                    //outitem = item.replase('{{b}}', d[i].b).re;
                    //out.push(ouitem);
                    //console.log(data[i].HardImg);
                    outStamper += Stamper.replace('{{HardImg}}', data[i].HardImg).replace('{{SingerName}}', data[i].SingerName);
                }
                $('#ends').html(outStamper);
            }

            //点击歌手名字显示歌曲
            $('#ends').on('click', '.singers-font', function () {
                $('#SingerPage').css({ display: 'block' });
                var s = $('.singers-font').index($(this));
                var Fonttext = $('.singers-font').eq(s).text();
                $.ajax({
                    url: 'SingerPageHan.ashx',
                    type: 'post',
                    dataType: 'json',
                    data: { SingerName: Fonttext },
                    success: function (data) {
                        //通过母版 替换页面
                        CreateStamper(data);
                    }
                })
            })
            $('.fork').click(function () {
                $('#SingerPage').css({ display: 'none' });
            })

            //替换母版的方法
            function CreateStamper(data) {
                var Replace = "";
                for (var i = 0; i < data.length; i++) {
                    Replace += Song.replace('{{MicName}}', data[i].MicName).replace('{{SingerName}}', data[i].SingerName).replace('{{StyleName}}', data[i].StyleName);
                }
                $('#Catalog').html(Replace);
            }

            //播放功能
            $('#Catalog').on('click', '.play', function () {
               
                var s = $('.play').index($(this));
                var SongName = $('.js_song').eq(s).text();
                var SingerName = $('.js_singer').eq(s).text();
                console.log(location.href);
                location.href = 'Musicpaly.aspx?SongName=' + SongName + '&SingerName=' + SingerName;
                
            })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        a {
            text-decoration: none;
        }

        /*背景图部分	开始*/
        #middle-img img {
            width: 100%;
        }

        .font-1 {
            width: 100%;
            text-align: center;
            font-size: 48px;
            color: white;
            position: absolute;
            top: 200px;
        }

        .font-2 {
            font-size: 25px;
            color: #e3e3e3;
            position: absolute;
            top: 276px;
            width: 100%;
            text-align: center;
        }
        /*背景图部分	结束*/


        /*歌手分类部分	开始*/
        #list {
            width: 1200px;
            height: 230px;
            position: relative;
            left: 100px;
        }

            #list span {
                margin-left: 25px;
                position: relative;
                top: 35px;
                color: black;
                font-size: 14px;
                padding: 5px 8px;
            }

                #list span:hover {
                    color: orange;
                }

        .list-s {
            width: 300px;
            height: 300px;
            background-color: #fdad02;
            color: white;
            padding: 5px 8px;
        }

        .list-distance {
            margin-top: 25px;
        }
        /*歌手分类部分	1结束*/



        /*歌手前十*/
        /*上半部分*/
        #ends {
            width: 1200px;
            height: 500px;
            position: relative;
            left: 100px;
            display: flex; /*不换行*/
            flex-wrap: wrap; /*自动换行*/
        }

        .singers {
            width: 230px;
            height: 250px;
            float: left;
            margin-top: 10px;
        }

        .singers-img {
            width: 140px;
            height: 140px;
            border-radius: 50%;
            background-color: black;
            margin: 20px auto;
        }

        .singers-font {
            text-align: center;
            font-size: 18px;
        }

        .singers-font {
            color: black;
            font-size: 16px;
        }

        .singers-font:hover {
             color: #fdad02;
        }

        /*下半部分*/

        /*歌手前十结束*/
        .singers-img > img {
            width: 140px;
            height: 140px;
            border-radius: 50%;
        }
        /*改变母版页样式*/
        #end {
            position: relative;
        }

        #SingerPage {
            position: absolute;
            height: 100px;
            background-image: url(Imgs/timg1.jpg);
            z-index: 10;
            height: 983px;
            top: 389px;
            width: 100%;
            display: none;
        }

        #Catalog {
            margin-left: 20%;
            background-color: white;
            height: 983px;
            margin-right: 20%;
            overflow-y: scroll;
        }

        .fork {
            background-color: black;
            position: absolute;
            left: 1120px;
            top: 2px;
            width: 25px;
            height: 25px;
            text-align: center;
            line-height: 25px;
            border-radius: 50%;
        }

        /*歌曲样式*/
        .Song {
            border: 1px solid orange;
            width: 100%;
            height: 40px;
            margin: 0 auto;
            background-color: blanchedalmond;
            line-height: 40px;
            position:relative;
        }

        .js_song {
            font-size: 14px;
            color: #505250;
            position: absolute;
            left: 18px;
        }

        .js_singer {
            text-decoration: none;
            font-size: 14px;
            color: #515351;
            margin-left: 300px;
        }

        .play {
            width: 30px;
            height: 28px;
            background-image: url("Imgs/round44.gif");
            background-size: 212%;
            background-position: 0px -35px;
            margin-left: 120px;
            margin-top: 6px;
        }

        .style {
            margin-left: 120px;
            font-size: 14px;
            position: absolute;
            right: 146px;
        }

        .collect {
            margin-left: 284px;
            font-size: 30px;
            color: orange;
            margin-top: -3px;
        }
    </style>


    <!--背景图片部分-->
    <div id="middle-img">
        <img src="Imgs/body1.jpg" />
        <div class="font-1">你关注的歌手将展示在这里</div>
        <div class="font-2">快速起歌，想听就听</div>
    </div>
    <!--背景图片部分结束-->

    <!--歌手分类部分-->
    <div id="list">
        <!--全部-->
        <div class="list-distance list-Regio">
            <span class="list-s" style="color: white">全部</span>
            <span>内地</span>
            <span>港台</span>
            <span>欧美</span>
            <span>日本</span>
            <span>韩国</span>
            <span>其他</span>
        </div>

        <div class="list-distance list-Sex">
            <span class="list-s" style="color: white">全部</span>
            <span>男</span>
            <span>女</span>
            <span>组合</span>
        </div>

        <div class="list-distance list-Style">
            <span class="list-s" style="color: white">全部</span>
            <span>流行音乐</span>
            <span>经典老歌</span>
            <span>古风歌曲</span>
            <span>民谣</span>
            <span>说唱</span>
        </div>
        <!--全部结束-->
        <!--歌手分类部分结束-->
    </div>


    <!--歌手前十	上半部分-->
    <div id="ends">
    </div>
    <div id="SingerPage">
        <div id="Catalog">
        </div>
        <span class="fork">X</span>
    </div>
</asp:Content>
