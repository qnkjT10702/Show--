﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Enterprise.UI.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $('#AppBar4').css({ backgroundColor: '#fdad02', color: '#4A4A4A' })
            Ajax_ShowMic();

            function Ajax_ShowMic() {
                $.ajax({
                    type: 'post',
                    dataType: 'json',
                    success: function (data) {
                        Show_info(data);
                    }
                })
            }

            //显示歌曲信息的方法
            function Show_info(data) {
                console.log(data);
                for (var i = 0; i < data.length; i++) {
                    $(".micImg_img").eq(i).attr('src', data[i].MicImg);
                    $('.micName_Name').eq(i).text(data[i].MicName);
                    $('.singerName_sing').eq(i).text(data[i].SingerName);
                }
            }

            $('.songList').click(function () {
                var s = $('.songList').index($(this));
                var MicName = $('.micName_Name').eq(s).text();
                var SingerName = $('.singerName_sing').eq(s).text();
                location.href = 'Musicpaly.aspx?SongName=' + MicName + '&SingerName=' + SingerName;
            })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/htmleaf-demo.css" rel="stylesheet" />
    <link href="css/normalize.css" rel="stylesheet" />
    <link href="css/posterTvGrid.css" rel="stylesheet" />

    <style>
        #div{padding:-7px 100px;}
        .posterTvGrid .leftNav{left:7px;background:url(Imgs/1.png) no-repeat;_background:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="Imgs/slide_next_btn.png");}
        .posterTvGrid .rightNav{right:7px;background:url(Imgs/2.png) no-repeat;_background:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="Imgs/slide_next_btn.png");}

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
        .micName:hover{color:#fdad02;}
        .singerName:hover{color:#fdad02;}
        .singerName{
            color:#999999;
            margin-top:4px;
        }
        .micImg_img{
            width:90px;
            height:90px;
        }
        /*.style{color:#fdad02;}*/
    </style>
    
    <div id="div">
        <%--图片轮播代码--%>
        <div class="htmleaf-container">
		<div class="htmleaf-content">
			<div id="posterTvGrid" style="margin:40px auto 0 auto;"></div>
		</div>
	</div>

        <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/posterTvGrid.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
    <script type="text/javascript">
	var posterTvGrid = new posterTvGrid('posterTvGrid',{className: "posterTvGrid"},[
            {"img":"Imgs/round55.gif","title":"Lorem ipsum dolor sit amet","url":"http:\/\/www.htmleaf.com\/"},
			{"img":"Imgs/assassins2.jpg","title":"Lorem ipsum dolor sit amet","url":"http:\/\/www.htmleaf.com\/"},
			{"img":"Imgs/batman.jpg","title":"Lorem ipsum dolor sit amet","url":"http:\/\/www.htmleaf.com\/"},
			{"img":"Imgs/deus-ex1.jpg","title":"Lorem ipsum dolor sit amet","url":"http:\/\/www.htmleaf.com\/"},
			{"img":"Imgs/deus-ex2.jpg","title":"Lorem ipsum dolor sit amet","url":"http:\/\/www.htmleaf.com\/"},

    ] 
        ); 
    </script>

        <div style="width:1150px;margin-bottom:20px;padding:0px 100px;box-sizing:border-box;margin-left: 179px;">
            <h1>新&nbsp;&nbsp;&nbsp;&nbsp;歌&nbsp;&nbsp;&nbsp;&nbsp;首&nbsp;&nbsp;&nbsp;&nbsp;发</h1>
            <div id="recommend_in">
                <div id="songList" class="songList">
                    <div class="micImg"><asp:Image ID="micImg" runat="server" CssClass="micImg_img" /></div>
                    <div class="micName"><asp:Label ID="micName" runat="server" Text="Label" CssClass="micName_Name"></asp:Label></div>
                    <div class="singerName"><asp:Label ID="singerName" runat="server" Text="Label" CssClass="singerName_sing"></asp:Label></div>
                </div>
                <div class="songList">
                    <div class="micImg"><asp:Image ID="Image1" runat="server" CssClass="micImg_img" /></div>
                    <div class="micName"><asp:Label ID="Label1" runat="server" Text="Label" CssClass="micName_Name"></asp:Label></div>
                    <div class="singerName"><asp:Label ID="Label2" runat="server" Text="Label" CssClass="singerName_sing"></asp:Label></div>
                </div>
                <div class="songList">
                    <div class="micImg"><asp:Image ID="Image2" runat="server" CssClass="micImg_img" /></div>
                    <div class="micName"><asp:Label ID="Label3" runat="server" Text="Label" CssClass="micName_Name"></asp:Label></div>
                    <div class="singerName"><asp:Label ID="Label4" runat="server" Text="Label" CssClass="singerName_sing"></asp:Label></div>
                </div>
                <div class="songList">
                    <div class="micImg"><asp:Image ID="Image3" runat="server" CssClass="micImg_img" /></div>
                    <div class="micName"><asp:Label ID="Label5" runat="server" Text="Label" CssClass="micName_Name"></asp:Label></div>
                    <div class="singerName"><asp:Label ID="Label6" runat="server" Text="Label" CssClass="singerName_sing"></asp:Label></div>
                </div>
            </div>
        </div>
    </div>

    <%--<script src="scripts/jquery-3.3.1.min.js"></script>
    <script>
        $(function () {
            $('.micName,.singerName').hover(function () {
                $(this).toggleClass('style');
            })
            
  //      for(var i=1;i<2;i++){
  //          var styleSong = document.getElementById('recommend_in');
  //          var song = document.getElementById('songList');
  //          var newNode = song.cloneNode(true);
  //          styleSong.appendChild(newNode);
		//}
        })
    </script>--%>

</asp:Content>
