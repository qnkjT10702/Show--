<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="Enterprise.UI.OrderPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-3.3.1.js"></script>
    <script src="scripts/jquery-1.11.1.min.js"></script>
    <script>
         //background: url("images/0008118294621006_b.jpg"); background-repeat:no-repeat; background-size:100%;
        $(function () {
            $('#AppBar1').css({ backgroundColor: '#4A4A4A',color:'#fdad02' })
        })
            var mark=1; //打开
	    $(".clickBut").click(function(){
		    if(mark==1){
			    $(".MusicCon").animate({width:"22px"},1000);
			    mark=0;//关闭
		    }else{
			    $(".MusicCon").animate({width:"700px"},1000);
			    mark=1;//打开
		    }
	    });

	    var obj_Mp3=null;
	    var _index=0;
	    //点击可以点歌
	    $("#Music ul li").click(function(){
		    _index=$(this).index();//获取到序列号
		    $(this).find("img").addClass("zqq").parent().siblings('li').find("img").removeClass("zqq");//加上 class="zqq"zqq
		    var simg=$(this).find("img").attr("src");
		    //alert(simg);
		    $(".butImg").attr("src",simg);
		    var str="url("+simg+")";
		    $("#bgimgSinger").css("background-image",str);
		    var stxt=$(this).find("img").attr("title");
		    $(".ImgTxt dl dd").text(stxt);
		    var sUrl=$(this).find("img").attr("dataSrc");
		    //创建音乐播器
		    obj_Mp3=creatMusic(sUrl);
		    $(".play").css("background","url(images/pause2.jpg)")
		    obj_Mp3.play();//播放
		
	    });

	    function creatMusic(src){
	        var creat_Mp3=$("<audio src='"+src+"'></audio>").get(0);
			    $(".playBox").html("");
			    $(".playBox").append(creat_Mp3);
			    return creat_Mp3;	
	    };

	    //点击下一个向下播放
	    $("a.next").click(function(){
		    _index++;  //_index+1
		    $("#Music ul li").eq(_index).trigger('click'); //触发他的click事件
	    });


	    $("a.prev").click(function(){
		    _index--;  //_index+1
		    $("#Music ul li").eq(_index).trigger('click'); //触发他的click事件
	    });
	    var count =0;
	    $("a.play").click(function(){
		    count++;
		    if(count%2==0){
			    obj_Mp3.pause();//暂停
			    $(".play").css("background","url(images/player1.jpg)");
			
		    }
		    else{
			    $(".play").css("background","url(images/pause2.jpg)");
				    // $("#Music ul li").eq(_index).trigger('click');
			    obj_Mp3.play();//播放
		    }
		
		    $("#Music ul li").find("img").removeClass("zqq");
	    });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="BgBig" style=" background-image: url(images/0008118294621006_b.jpg); background-repeat:no-repeat; background-size:100%;width:1400px;height:700px; position:relative;top:-50px;">
           <div id="Music" style="width: 960px; height: 250px;margin: 50px auto 0px; position: relative; background-image:url(images/dsfdv.png);top: 100px;
left: -72px;">
	            <div id="orderBang">收藏榜单</div>
	            <ul>
		            <li class="box1">
			            <img runat="server" src="images/Exo2.jpg" width='100' height='100' title="我的答案"
			            dataSrc='Musics/EXO - MY ANSWER (我的答案).mp3'/>
                        <a style="font-size:25px;position:relative; left:23px;">Exo</a>
		            </li>
		            <li class="box2">
			            <img  runat="server" src="images/风格.jpg" width='80' height='80' title="爱上未来的你" dataSrc='Musics/鹿晗 - 爱上未来的你 (Live).mp3'/>
                         <a style="font-size:25px">鹿晗</a>
		            </li>
		            <li class="box3">
			            <img runat="server" src="images/AlIn2.jpg" width='120' height='120' title="爱上你等于爱上寂寞" dataSrc='Musics/uuu.mp3' />
                         <a style="font-size:25px">A-Lin</a>
		            </li>
		            <li class="box4">
			            <img runat="server" src="images/Mei.jpg" width='110' height='110' title="Love Story" dataSrc='Musics/Taylor Swift - Love Story.mp3' />
                        <a style="font-size:25px">Taylor Swift</a>
		            </li>
	            </ul>
            </div>
            <!--点播音乐结束-->

            <!--音乐播放按扭开始-->
            <div class="MusicCon">
	            <div id="bgimgSinger"></div>
	            <div class='ImgTxt'>
		            <dl>
			            <dt><img src="images/Exo1.jpg" style=" width:90px;height:90px;" class="butImg"/></dt>
			            <dd>我的答案</dd>
		            </dl>
	            </div>
	            <div class="But">
		            <a href="#" class='prev' style="background-image:url(images/prev1.jpg); background-repeat:no-repeat"></a>
		            <a href="#" class='play' style="background-image:url(images/player1.jpg)"></a>
		            <a href="#" class='next' style="background-image:url(images/next1.jpg);background-repeat:no-repeat"></a>
	            </div>

	            <div class="clickBut"><img src="images/but.png"/></div>

	            <div class="playBox"></div>
          </div>
    </div>
 
<!--音乐播放按扭结束-->
</asp:Content>
