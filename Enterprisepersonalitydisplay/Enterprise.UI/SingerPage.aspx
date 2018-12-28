﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SingerPage.aspx.cs" Inherits="Enterprise.UI.SingerPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $('#AppBar2').css({ backgroundColor: '#4A4A4A', color: '#fdad02' })
            $('.list-Regio>span').click(function () {
                for (var i = 0; i <= $('.list-Regio>span').length ; i++) {
                     var s = $('.list-Regio>span').index($(this));
                     $('.list-Regio>span').eq(s).css({ color: 'white', backgroundColor: "orange"});
                     $('.list-Regio>span').eq(i).css({ color: 'black', backgroundColor: "white" });
                }
            })
            $('.list-Sex>span').click(function () {
                for (var i = 0; i <= $('.list-Sex>span').length; i++) {
                    var s = $('.list-Sex>span').index($(this));
                    $('.list-Sex>span').eq(s).css({ color: 'white', backgroundColor: "orange" });
                    $('.list-Sex>span').eq(i).css({ color: 'black', backgroundColor: "white" });
                }
            })
            $('.list-Style>span').click(function () {
                for (var i = 0; i <= $('.list-Style>span').length; i++) {
                    var s = $('.list-Style>span').index($(this));
                    $('.list-Style>span').eq(s).css({ color: 'white', backgroundColor: "orange" });
                    $('.list-Style>span').eq(i).css({ color: 'black', backgroundColor: "white" });
                }
            })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        a{text-decoration: none;}

    /*背景图部分	开始*/
        #middle-img img{
	        width: 100%;
        }
        .font-1{
            width:100%;
            text-align:center;
	        font-size: 48px;
	        color: white;
            position:absolute;
            top:200px;
        }
        .font-2{
	        font-size: 25px;
	        color: #e3e3e3;
	        position:absolute;
            top:276px;
            width:100%;
            text-align:center;
        }
        /*背景图部分	结束*/


        /*歌手分类部分	开始*/
        #list{
	        width: 1200px;
	        height: 230px;
	        position: relative;
	        left: 100px;
        }
        #list span{
	        margin-left: 25px;
	        position: relative;
	        top: 35px;
	        color: black;
	        font-size: 14px;
            padding: 5px 8px;
        }
        #list span:hover{
	        color: orange;
        }
        .list-s{
	        width: 300px;
	        height: 300px;
	        background-color: #fdad02;
	        color: white;
	        padding: 5px 8px;
        }
        .list-distance{
	        margin-top: 25px;
        }
        /*歌手分类部分	结束*/


        /*歌手前十*/
        /*上半部分*/
        #ends{
	        width: 1200px;
	        height: 540px;
	        position: relative;
	        left: 100px;
	        display: flex;	 /*不换行*/
	        justify-content: space-between;	/*各行之间留有空白*/
	        flex-wrap: wrap;	/*自动换行*/
        }
        .singers{
	        width: 230px;
	        height: 250px;
	        float: left;
	        margin-top: 10px;
        }
        .singers-img{
	        width: 140px;
	        height: 140px;
	        border-radius: 50%;
	        background-color: black;
	        margin:20px auto;
        }
        .singers-font{
	        text-align: center;
	        font-size: 18px;
        }
        .singers-font{
	        color: black;
            font-size:16px;
        }
        .singers-font:hover{
	        color: #fdad02;
        }

        /*下半部分*/

        /*歌手前十结束*/
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
			<div class="singers" runat="server" >
				<div class="singers-img"  runat="server">
					<img src=""   runat="server" id="HardImg"/>
				</div>
				<div class="singers-font">歌手名称</div>
			</div>
			<div class="singers" runat="server">
				<div class="singers-img" runat="server">
					<img src="" />
				</div>
				<div class="singers-font" runat="server"><span></span></div>
			</div>
			<div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><span></span></div>
			</div>
			<div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><span></span></div>
			</div>
			<div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><span></span></div>
			</div><div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><span></span></div>
			</div><div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><span></span></div>
			</div><div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><span></span></div>
			</div>
			<div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><span></span></div>
			</div>
			<div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><span></span></div>
			</div>
		</div>

</asp:Content>
