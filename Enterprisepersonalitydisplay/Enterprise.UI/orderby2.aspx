﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="orderby2.aspx.cs" Inherits="Enterprise.UI.orderby2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/SuperSlide.js"></script>
    <script type="text/javascript">
     
            //background: url("images/0008118294621006_b.jpg"); background-repeat:no-repeat; background-size:100%;
        $(function () {
               $(".solution-more-slide").slide({
		        effect: 'fold'
                });
            $('#AppBar1').css({ backgroundColor: '#4A4A4A', color: '#fdad02' });
            //收藏的点击事件begin
               //点击可以点歌
        $("#Music ul").on('click', 'li', function () {
            //预约事件先把事件给ul
		    _index=$(this).index();//获取到序列号
		    $(this).find("img").addClass("zqq").parent().siblings('li').find("img").removeClass("zqq");//加上 class="zqq"zqq
            var simg = $(this).find("img").attr("src");
            var salt=$(this).find("img").attr("alt");
            $(".butImg").attr("src", simg);
           $(".butImg").attr("title", salt);
		    var str="url("+simg+")";
		    $("#bgimgSinger").css("background-image",str);
		    var stxt=$(this).find("img").attr("title");
		    $(".ImgTxt dl dd").text(stxt);
            var sUrl = $(this).find("img").attr("dataSrc");
             $(".btnColle").css('backgroundPosition', "-2px 70px");
		    //创建音乐播器
		    obj_Mp3=creatMusic(sUrl);
		    $(".play").css("background","url(images/pause2.jpg)")
            obj_Mp3.play();//播放
           
                $.ajax({
                        url: "PlayCount.ashx",
                    type: "post",
                    dataType: "json",
                    data: {
                        MicId:salt,
                    },
                        success: function (dt) {
                     }
                   
                });

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
            var colleCount = 0;
            //判断是点击或者取消
            var MicIdTit = 0;
            //歌曲Id

             $('.btnColle').click(function () {
                 colleCount++;
                 if (colleCount % 2) {
                    $(this).css('backgroundPosition', "220px 70px");
                     MicIdTit = $(".butImg").attr("title");
                    //歌曲ID 
                    $.ajax({
                        url: "SongCollection.ashx",
                    type: "post",
                    dataType: "json",
                    data: {
                        MicId:MicIdTit,
                    },
                        success: function (dt) {
                            if (dt.result == 0) {
                                alert("已经收藏过此歌曲！");
                            }
                            else {

                            }
                     }
                   
                });
                    
                }
                else {
                     $(this).css('backgroundPosition', "-2px 70px");
                     //alert("取消");
                }
            })
            //收藏点击事件的结束

             //下载的点击事件begin
            var colleCount = 0;
            $('.btnDownLoad').click(function () {
                colleCount++;
                if (colleCount % 2) {
                    $(this).css('backgroundPosition', "223px 66px");
                }
                else {
                     $(this).css('backgroundPosition', "-2px 66px");
                }
            })
            //下载点击事件的结束

        });

            //这里写Ajax
            $.ajax({
                type: "post",
                dataType: "json",
                success: function (dt) {
                    Example_1(dt.colle,'#micMenuApp','#PalyMusico');
                    Example_1(dt.colleHot,'#micMenuApp2','#PalyMusico2');
                    Example_1(dt.colleEurope,'#micMenuApp3','#PalyMusico3');
                    Example_1(dt.colleChinese,'#micMenuApp4','#PalyMusico4');
                    Example_1(dt.colleNew,'#micMenuApp5','#PalyMusico5');
                    Example_1(dt.colleReHan,'#micMenuApp6','#PalyMusico6');
                }
            });
        function Example_1(dt, select, PlaySelect) {
           
            let Stie = '<li class="box1"><img src="{{micImg}}" width="120px" height="120px" title="{{micName}}" dataSrc="{{micSrc}}" alt="{{Micid}}"/><span id="SingerName" style="display:none">{{SingerNameSpan}}</span></li>';
            let outHtm = '';
            
            for (var i = 0; i < dt.length; i++) {
                Mouther = Stie.replace('{{micImg}}', dt[i].MicImg).replace('{{micName}}', dt[i].MicName).replace('{{micSrc}}', dt[i].MicSRc).replace('{{SingerName}}', dt[i].SingerName).replace("{{Micid}}", dt[i].MicId).replace("{{SingerNameSpan}}", dt[i].SingerName);
                //未完
                outHtm += Mouther;
            }
            //console.log(outHtm);
            $(select).html(outHtm);
            let Stie2 = '<dl id="PalyMusico"><dt><img src="{{micImg2}}" class="butImg" title="" style=" width:90px;height:90px; "dataSrc="{{micSrc3}}"/></dt><dd>{{micImg3}}</dd></dl>';
            //获取要替换部分的html代码
            let outHtm2 = '';
            Mouther2 = Stie2.replace('{{micImg3}}', dt[0].MicName).replace('{{micImg2}}', dt[0].MicImg).replace('{{micSrc3}}', dt[0].MicSRc);
            //替换
            outHtm2 += Mouther2;
            //再赋给字符串变量
            $(PlaySelect).html(outHtm2);
            //再添加html代码
        }
       
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
        var _index = 0;
        console.log($("#Music>ul").length)
     
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="index-page">
	<div class="solution-more">
		<div class="solution-more-slide">
			<div class="container">
				<div class="hd">
					<ul>
						<li class="item-1 on">
							<i></i>
							<div class="text">
								<h3>收藏排行版</h3>
								<p>按照单曲收藏量</p>
							</div>
						</li>
						<li class="item-2">
							<i></i>
							<div class="text">
								<h3>热歌榜</h3>
								<p>按照单曲的点播量</p>
							</div>
						</li>
						<li class="item-3">
							<i></i>
							<div class="text">
								<h3>欧美排行榜</h3>
								<p>按照欧美地区单曲收藏量</p>
							</div>
						</li>
						<li class="item-4">
							<i></i>
							<div class="text">
								<h3>华语歌手排行版</h3>
								<p>按照华语歌手个人所有歌曲</p>
							</div>
						</li>
						<li class="item-5">
							<i></i>
							<div class="text">
								<h3>新歌版</h3>
								<p>按照最近一个月的新歌单曲</p>
							</div>
						</li>
						<li class="item-6">
							<i></i>
							<div class="text">
								<h3>日韩歌手排行版</h3>
								<p>按照日韩歌手个人所有歌曲</p>
							</div>
						</li>
					</ul>
				</div>
				<ul class="bd" style="position: relative; width: 1920px; height: 600px;">
					<li class="item-1" style="position: absolute; width: 1920px; left: 0px; top: 0px; display: list-item;">
						<div class="container">
							<div class="inner">
								 <div id="BgBig" style=" background-repeat:no-repeat; background-size:100%;width:1918px;height:700px; position:relative;top:-50px;">
                                      <div id="Music" style="width: 960px; height: 250px;margin: 50px auto 0px; position: relative; background-image:url(images/dsfdv.png);top: -80px; left: -510px;">
	                                        <div class="orderBang">
                                                 收藏榜单
                                                <img src="Imgs/Xin.png" style="position:absolute;top:48px;left:23px; height:170px;width:159px;">
	                                        </div>
	                                        <ul id="micMenuApp">
		                                    </ul>
                                          
                                            <img  src="Imgs/未标题-5.png" style="position:absolute;top:180px; left:345px; height:70px;"/>
                                            <img  src="Imgs/未标题-7.png" style="position:absolute;top:140px; left:101px; height:60px;"/>
                                            <img  src="Imgs/未标题-6.png" style="position:absolute;top:160px; left:540px; height:60px;"/>
                                     </div>
                                    <!--点播音乐结束-->

                                    <!--音乐播放按扭开始-->
                                    <div class="MusicCon" style="position:fixed;left:758px;">
	                                    <div id="bgimgSinger"></div>
	                                    <div class='ImgTxt'>
		                                    <dl id="PalyMusico">
			                            
		                                    </dl>
	                                    </div>
	                                    <div class="But">
		                                    <a href="#" class='prev' style="background-image:url(images/prev1.jpg); background-repeat:no-repeat"></a>
		                                    <a href="#" class='play' style="background-image:url(images/player1.jpg)"></a>
		                                    <a href="#" class='next' style="background-image:url(images/next1.jpg);background-repeat:no-repeat"></a>
	                                    </div>
                                        <input type="button" class="btnColle" />
                                        <input type="button" class="btnDownLoad" />
	                                    <div class="clickBut"><img src="images/but.png"/></div>
	                                    <div class="playBox"></div>
                                  </div>
                                </div>
							</div>
						</div>
					</li>
					<li class="item-2" style="position: absolute; width: 1920px; left: 245px; top: 0px; display: none;">
						<div class="container">
							<div class="inner">
								<div id="BgBig" style=" background-repeat:no-repeat; background-size:100%;width:1918px;height:700px; position:relative;top:-50px;">
                                      <div id="Music" style="width: 960px; height: 250px;margin: 50px auto 0px; position: relative; background-image:url(images/dsfdv.png);top: -80px; left: -590px;">
	                                        <div class="orderBang">
                                                 热门榜单
                                                <img  src="Imgs/Xin.png" style="position:absolute;top:48px;left:23px; height:170px;width:159px;"/>
	                                        </div>
	                                        <ul id="micMenuApp2">
		                                        
	                                        </ul>
                                            <img  src="Imgs/未标题-5.png" style="position:absolute;top:180px; left:345px; height:70px;"/>
                                            <img  src="Imgs/未标题-7.png" style="position:absolute;top:140px; left:101px; height:60px;"/>
                                            <img  src="Imgs/未标题-6.png" style="position:absolute;top:160px; left:540px; height:60px;"/>
                                     </div>
                                    <!--点播音乐结束-->

                                    <!--音乐播放按扭开始-->
                                    <div class="MusicCon" style="position:fixed; left:760px;">
	                                    <div id="bgimgSinger2"></div>
	                                    <div class='ImgTxt'>
		                                    <dl id="PalyMusico2">
			                            
		                                    </dl>
	                                    </div>
	                                    <div class="But">
		                                    <a href="#" class='prev' style="background-image:url(images/prev1.jpg); background-repeat:no-repeat"></a>
		                                    <a href="#" class='play' style="background-image:url(images/player1.jpg)"></a>
		                                    <a href="#" class='next' style="background-image:url(images/next1.jpg);background-repeat:no-repeat"></a>
	                                    </div>
                                        <input type="button" class="btnColle" />
                                        <input type="button" class="btnDownLoad" />
	                                    <div class="clickBut"><img src="images/but.png"/></div>
	                                    <div class="playBox"></div>
                                  </div>
                                </div>
							</div>
						</div>
					</li>
					<li class="item-3" style="position: absolute; width: 1920px; left: 0px; top: 0px; display: none;">
						<div class="container">
							<div class="inner">

								<div id="BgBig" style=" background-repeat:no-repeat; background-size:100%;width:1918px;height:700px; position:relative;top:-50px;">
                                      <div id="Music" style="width: 960px; height: 250px;margin: 50px auto 0px; position: relative; background-image:url(images/dsfdv.png);top: -80px; left: -510px;">
	                                        <div class="orderBang">
                                                 欧美榜单
                                                <img  src="Imgs/Xin.png" style="position:absolute;top:48px;left:23px; height:170px;width:159px;"/>
	                                        </div>
	                                        <ul id="micMenuApp3">
		                                       
	                                        </ul>
                                            <img  src="Imgs/未标题-5.png" style="position:absolute;top:180px; left:345px; height:70px;"/>
                                            <img  src="Imgs/未标题-7.png" style="position:absolute;top:140px; left:101px; height:60px;"/>
                                            <img  src="Imgs/未标题-6.png" style="position:absolute;top:160px; left:540px; height:60px;"/>
             
                                     </div>
                                    <!--点播音乐结束-->

                                    <!--音乐播放按扭开始-->
                                    <div class="MusicCon" runat="server" style="position:fixed;left:758px;">
	                                    <div id="bgimgSinger3"></div>
	                                    <div class='ImgTxt'>
		                                    <dl id="PalyMusico3">

		                                    </dl>
	                                    </div>
	                                    <div class="But">
		                                    <a href="#" class='prev' style="background-image:url(images/prev1.jpg); background-repeat:no-repeat"></a>
		                                    <a href="#" class='play' style="background-image:url(images/player1.jpg)"></a>
		                                    <a href="#" class='next' style="background-image:url(images/next1.jpg);background-repeat:no-repeat"></a>
	                                    </div>
                                        <input type="button" class="btnColle" />
                                        <input type="button" class="btnDownLoad" />
	                                    <div class="clickBut"><img src="images/but.png"/></div>
	                                    <div class="playBox"></div>
                                  </div>
                                </div>
							</div>
						</div>
					</li>
					<li class="item-4" style="position: absolute; width: 1920px; left: 0px; top: 0px; display: none;">
						<div class="container">
							<div class="inner">
								<div id="BgBig" style=" background-repeat:no-repeat; background-size:100%;width:1918px;height:700px; position:relative;top:-50px;">
                                      <div id="Music" style="width: 960px; height: 250px;margin: 50px auto 0px; position: relative; background-image:url(images/dsfdv.png);top: -80px; left: -590px;">
	                                        <div class="orderBang">
                                                 华语排行版
                                                <img  src="Imgs/Xin.png" style="position:absolute;top:48px;left:23px; height:170px;width:159px;"/>
	                                        </div>
	                                        <ul id="micMenuApp4">
		                                       
	                                        </ul>
                                            <img  src="Imgs/未标题-5.png" style="position:absolute;top:180px; left:345px; height:70px;"/>
                                            <img  src="Imgs/未标题-7.png" style="position:absolute;top:140px; left:101px; height:60px;"/>
                                            <img  src="Imgs/未标题-6.png" style="position:absolute;top:160px; left:540px; height:60px;"/>
                                     </div>
                                    <!--点播音乐结束-->

                                    <!--音乐播放按扭开始-->
                                    <div class="MusicCon" style="position:fixed; left:760px;">
	                                    <div id="bgimgSinger4"></div>
	                                    <div class='ImgTxt'>
		                                    <dl id="PalyMusico4">
			                                    
		                                    </dl>
	                                    </div>
	                                    <div class="But">
		                                    <a href="#" class='prev' style="background-image:url(images/prev1.jpg); background-repeat:no-repeat"></a>
		                                    <a href="#" class='play' style="background-image:url(images/player1.jpg)"></a>
		                                    <a href="#" class='next' style="background-image:url(images/next1.jpg);background-repeat:no-repeat"></a>
	                                    </div>
                                       <input type="button" class="btnColle" />
                                        <input type="button" class="btnDownLoad" />  
	                                    <div class="clickBut"><img src="images/but.png"/></div>
	                                    <div class="playBox"></div>
                                  </div>
                                </div>
							</div>
						</div>
					</li>
					<li class="item-5" style="position: absolute; width: 1920px; left: 0px; top: 0px; display: none;">
						<div class="container">
							<div class="inner">
							<div id="BgBig" style=" background-repeat:no-repeat; background-size:100%;width:1918px;height:700px; position:relative;top:-50px;">
                                      <div id="Music" style="width: 960px; height: 250px;margin: 50px auto 0px; position: relative; background-image:url(images/dsfdv.png);top: -80px; left: -590px;">
	                                        <div class="orderBang">
                                                 新歌榜单
                                                <img  src="Imgs/Xin.png" style="position:absolute;top:48px;left:23px; height:170px;width:159px;"/>
	                                        </div>
	                                        <ul id="micMenuApp5">
		                                        <li class="box1">
			                                        <img src="{{micImg}}" width='120px' height='120px' title="{{micName}}" dataSrc='{{micSrc}}' alt="{{Micid}}"/>
                                                   <%-- <a style="font-size:25px;position:relative; left:23px; font-family:华文行楷">{{SingerName}}</a>--%>
		                                        </li>  
	                                        </ul>
                                            <img  src="Imgs/未标题-5.png" style="position:absolute;top:180px; left:345px; height:70px;"/>
                                            <img  src="Imgs/未标题-7.png" style="position:absolute;top:140px; left:101px; height:60px;"/>
                                            <img  src="Imgs/未标题-6.png" style="position:absolute;top:160px; left:540px; height:60px;"/>
                                     </div>
                                    <!--点播音乐结束-->

                                    <!--音乐播放按扭开始-->
                                    <div class="MusicCon" style="position:fixed; left:760px;">
	                                    <div id="bgimgSinger5"></div>
	                                    <div class='ImgTxt'>
		                                    <dl id="PalyMusico5">
			                                   
		                                    </dl>
	                                    </div>
	                                    <div class="But">
		                                    <a href="#" class='prev' style="background-image:url(images/prev1.jpg); background-repeat:no-repeat"></a>
		                                    <a href="#" class='play' style="background-image:url(images/player1.jpg)"></a>
		                                    <a href="#" class='next' style="background-image:url(images/next1.jpg);background-repeat:no-repeat"></a>
	                                    </div>
                                       <input type="button" class="btnColle" />
                                        <input type="button" class="btnDownLoad" />
	                                    <div class="clickBut"><img src="images/but.png"/></div>
	                                    <div class="playBox"></div>
                                  </div>
                                </div>
							</div>
						</div>
					</li>
					<li class="item-6" style="position: absolute; width: 1920px; left: 0px; top: 0px; display: none;">
						<div class="container">
							<div class="inner">
								<div id="BgBig" style=" background-repeat:no-repeat; background-size:100%;width:1918px;height:700px; position:relative;top:-50px;">
                                      <div id="Music" style="width: 960px; height: 250px;margin: 50px auto 0px; position: relative; background-image:url(images/dsfdv.png);top: -80px; left: -590px;">
	                                        <div class="orderBang">
                                                 日韩榜单
                                                <img  src="Imgs/Xin.png" style="position:absolute;top:48px;left:23px; height:170px;width:159px;"/>
	                                        </div>
	                                        <ul id="micMenuApp6">
		                                        
	                                        </ul>
                                            <img  src="Imgs/未标题-5.png" style="position:absolute;top:180px; left:345px; height:70px;"/>
                                            <img  src="Imgs/未标题-7.png" style="position:absolute;top:140px; left:101px; height:60px;"/>
                                            <img  src="Imgs/未标题-6.png" style="position:absolute;top:160px; left:540px; height:60px;"/>
                                     </div>
                                    <!--点播音乐结束-->

                                    <!--音乐播放按扭开始-->
                                    <div class="MusicCon" style="position:fixed; left:760px;">
	                                    <div id="bgimgSinger6"></div>
	                                    <div class='ImgTxt'>
		                                    <dl id="PalyMusico6">
			                                  
		                                    </dl>
	                                    </div>
	                                    <div class="But">
		                                    <a href="#" class='prev' style="background-image:url(images/prev1.jpg); background-repeat:no-repeat"></a>
		                                    <a href="#" class='play' style="background-image:url(images/player1.jpg)"></a>
		                                    <a href="#" class='next' style="background-image:url(images/next1.jpg);background-repeat:no-repeat"></a>
	                                    </div>
                                       <input type="button" class="btnColle" />
                                       <input type="button" class="btnDownLoad" />
	                                    <div class="clickBut"><img src="images/but.png"/></div>
	                                    <div class="playBox"></div>
                                  </div>
                                </div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
</asp:Content>