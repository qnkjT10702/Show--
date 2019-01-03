<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderByPage2.aspx.cs" Inherits="Enterprise.UI.OrderByPage2" %>
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
							1
							</div>
						</div>
					</li>
					<li class="item-2" style="position: absolute; width: 1920px; left: 0px; top: 0px; display: none;">
						<div class="container">
							<div class="inner">
								2
							</div>
						</div>
					</li>
					<li class="item-3" style="position: absolute; width: 1920px; left: 0px; top: 0px; display: none;">
						<div class="container">
							<div class="inner">
								3
							</div>
						</div>
					</li>
					<li class="item-4" style="position: absolute; width: 1920px; left: 0px; top: 0px; display: none;">
						<div class="container">
							<div class="inner">
							3
							</div>
						</div>
					</li>
					<li class="item-5" style="position: absolute; width: 1920px; left: 0px; top: 0px; display: none;">
						<div class="container">
							<div class="inner">
							4
							</div>
						</div>
					</li>
					<li class="item-6" style="position: absolute; width: 1920px; left: 0px; top: 0px; display: none;">
						<div class="container">
							<div class="inner">
								5
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-3.3.1.js"></script>
    <script src="scripts/jquery-1.11.1.min.js"></script>
    <script src="scripts/SuperSlide.js"></script>
    <script src="scripts/jquery-1.9.1.min.js"></script>
    <script>
         //background: url("images/0008118294621006_b.jpg"); background-repeat:no-repeat; background-size:100%;
        //$(function () {
           // $('#AppBar1').css({ backgroundColor: '#4A4A4A', color: '#fdad02' })

            //这里写Ajax
            //$.ajax({
            //    type: "post",
            //    dataType: "json",
            //    success: function (dt) {
            //        ss(dt);
            //    }
            //});

        //});
        $(".solution-more-slide").slide({
		effect: 'fold'
	    });
        //function ss(dt) {
            
        //    //
        //    let Stie = $('#micMenuApp').html();
        //    let outHtm='';
        //    console.log(Stie);
        //    for (var i = 0; i < dt.length; i++) {
        //        Mouther = Stie.replace('{{micImg}}', dt[i].MicImg).replace('{{micName}}', dt[i].MicName).replace('{{micSrc}}', dt[i].MicSRc).replace('{{SingerName}}', dt[i].SingerName);
        //        //未完
        //        outHtm += Mouther;
        //    }
        //    $('#micMenuApp').html(outHtm);
        //}
  //      $(".solution-more-slide").slide({
		//effect: 'fold'
	 //   });
  //          var mark=1; //打开
	 //   $(".clickBut").click(function(){
		//    if(mark==1){
		//	    $(".MusicCon").animate({width:"22px"},1000);
		//	    mark=0;//关闭
		//    }else{
		//	    $(".MusicCon").animate({width:"500px"},1000);
		//	    mark=1;//打开
		//    }
	 //   });

	 //   var obj_Mp3=null;
	 //   var _index=0;
  //      //点击可以点歌
  //      $("#Music ul").on('click', 'li', function () {
  //          //预约事件先把事件给ul
		//    _index=$(this).index();//获取到序列号
		//    $(this).find("img").addClass("zqq").parent().siblings('li').find("img").removeClass("zqq");//加上 class="zqq"zqq
		//    var simg=$(this).find("img").attr("src");
		//    //alert(simg);
		//    $(".butImg").attr("src",simg);
		//    var str="url("+simg+")";
		//    $("#bgimgSinger").css("background-image",str);
		//    var stxt=$(this).find("img").attr("title");
		//    $(".ImgTxt dl dd").text(stxt);
		//    var sUrl=$(this).find("img").attr("dataSrc");
		//    //创建音乐播器
		//    obj_Mp3=creatMusic(sUrl);
		//    $(".play").css("background","url(images/pause2.jpg)")
		//    obj_Mp3.play();//播放
		
	 //   });

	 //   function creatMusic(src){
	 //       var creat_Mp3=$("<audio src='"+src+"'></audio>").get(0);
		//	    $(".playBox").html("");
		//	    $(".playBox").append(creat_Mp3);
		//	    return creat_Mp3;	
	 //   };

	 //   //点击下一个向下播放
	 //   $("a.next").click(function(){
		//    _index++;  //_index+1
		//    $("#Music ul li").eq(_index).trigger('click'); //触发他的click事件
	 //   });


	 //   $("a.prev").click(function(){
		//    _index--;  //_index+1
		//    $("#Music ul li").eq(_index).trigger('click'); //触发他的click事件
	 //   });
	 //   var count =0;
	 //   $("a.play").click(function(){
		//    count++;
		//    if(count%2==0){
		//	    obj_Mp3.pause();//暂停
		//	    $(".play").css("background","url(images/player1.jpg)");
			
		//    }
		//    else{
		//	    $(".play").css("background","url(images/pause2.jpg)");
		//		    // $("#Music ul li").eq(_index).trigger('click');
		//	    obj_Mp3.play();//播放
		//    }
		
		//    $("#Music ul li").find("img").removeClass("zqq");
	 //   });
    </script>
</asp:Content>
