<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SingerPage.aspx.cs" Inherits="Enterprise.UI.SingerPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $('#AppBar2').css({ backgroundColor: '#4A4A4A',color:'#fdad02' })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        a{text-decoration: none;}

    /*背景图部分	开始*/
        #middle-img img{
	        width: 100%;
	        height: 400px;	
        }
        .font-1{
            width:100%;
            text-align:center;
	        font-size: 55px;
	        color: white;
            position:absolute;
            top:230px;
        }
        .font-2{
	        font-size: 25px;
	        color: #e3e3e3;
	        position:absolute;
            top:320px;
            width:100%;
            text-align:center;
        }
        /*背景图部分	结束*/


        /*歌手分类部分	开始*/
        #list{
	        width: 1200px;
	        height: 230px;
	        position: relative;
	        left: 270px;
        }
        #list a{
	        margin-left: 25px;
	        position: relative;
	        top: 35px;
	        color: black;
	        font-size: 14px;
        }
        #list a:hover{
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
	        left: 280px;
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
        .singers-font a{
	        color: black;
        }
        .singers a:hover{
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
			<!--热门-->
			<a href="" class="list-s" style="color: white">热门</a>
			<a href="">A</a>
			<a href="">B</a>
			<a href="">C</a>
			<a href="">D</a>
			<a href="">E</a>
			<a href="">F</a>
			<a href="">G</a>
			<a href="">H</a>
			<a href="">I</a>
			<a href="">J</a>
			<a href="">K</a>
			<a href="">L</a>
			<a href="">M</a>
			<a href="">N</a>
			<a href="">O</a>
			<a href="">P</a>
			<a href="">Q</a>
			<a href="">R</a>
			<a href="">S</a>
			<a href="">T</a>
			<a href="">U</a>
			<a href="">V</a>
			<a href="">W</a>
			<a href="">S</a>
			<a href="">Y</a>
			<a href="">Z</a>
			<a href="">#</a>
			<!--热门结束-->
			
			<!--全部-->
			<div class="list-distance">
			<a href="" class="list-s" style="color: white">全部</a>
			<a href="">内地</a>
			<a href="">港台</a>
			<a href="">欧美</a>
			<a href="">日本</a>
			<a href="">韩国</a>
			<a href="">其他</a>
			</div>
			
			<div class="list-distance">
			<a href="" class="list-s" style="color: white">全部</a>
			<a href="">男</a>
			<a href="">女</a>
			<a href="">组合</a>
			</div>
			
			<div class="list-distance">
			<a href="" class="list-s" style="color: white">全部</a>
			<a href="">流行</a>
			<a href="">嘻哈</a>
			<a href="">摇滚</a>
			<a href="">电子</a>
			<a href="">民谣</a>
			<a href="">R&B</a>
			<a href="">民歌</a>
			<a href="">轻音乐</a>
			<a href="">爵士</a>
			<a href="">古典</a>
			<a href="">乡村</a>
			<a href="">蓝调</a>
			</div>
			<!--全部结束-->
			<!--歌手分类部分结束-->	
		</div>
		
		
		<!--歌手前十	上半部分-->
		<div id="ends">
			<div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><a href=""></a></div>
			</div>
			<div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><a href=""></a></div>
			</div>
			<div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><a href=""></a></div>
			</div>
			<div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><a href=""></a></div>
			</div>
			<div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><a href=""></a></div>
			</div><div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><a href=""></a></div>
			</div><div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><a href=""></a></div>
			</div><div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><a href=""></a></div>
			</div>
			<div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><a href=""></a></div>
			</div>
			<div class="singers">
				<div class="singers-img">
					<img src="" />
				</div>
				<div class="singers-font"><a href=""></a></div>
			</div>
		</div>
		<!--歌手前十结束-->
		
		
		<!--歌手前十	下半部分-->
			
			
		<!--歌手前十结束-->

</asp:Content>
