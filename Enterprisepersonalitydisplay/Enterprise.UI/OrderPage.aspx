<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="Enterprise.UI.OrderPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-3.3.1.js"></script>
    <script src="scripts/jquery-1.11.1.min.js"></script>
    <script>
         //background: url("images/0008118294621006_b.jpg"); background-repeat:no-repeat; background-size:100%;
        $(function () {
           // $('#AppBar1').css({ backgroundColor: '#4A4A4A', color: '#fdad02' })

            //这里写Ajax
            $.ajax({
                type: "post",
                dataType: "json",
                success: function (dt) {
                    ss(dt);
                }
            });

        });
        function ss(dt) {
            
            //
            let Stie = $('#micMenuApp').html();
            let outHtm = '';
               console.log(Stie);
            
            for (var i = 0; i < dt.length; i++) {
                Mouther = Stie.replace('{{micImg}}', dt[i].MicImg).replace('{{micName}}', dt[i].MicName).replace('{{micSrc}}', dt[i].MicSRc).replace('{{SingerName}}', dt[i].SingerName);
                //未完
                outHtm += Mouther;
            }
            $('#micMenuApp').html(outHtm);

            let Stie2 = $('#PalyMusico').html();
            //获取要替换部分的html代码
                let outHtm2 = '';
            console.log(Stie2);
            console.log(dt.MicName);
            Mouther2 = Stie2.replace('{{micImg3}}', dt[0].MicName).replace('{{micImg2}}', dt[0].MicImg).replace('{{micSrc3}}', dt[0].MicSRc);
            //替换
            outHtm2 += Mouther2;
            //再赋给字符串变量
            $('#PalyMusico').html(outHtm2);
            //再添加html代码
        }
         

            var mark=1; //打开
	    $(".clickBut").click(function(){
		    if(mark==1){
			    $(".MusicCon").animate({width:"22px"},1000);
			    mark=0;//关闭
		    }else{
			    $(".MusicCon").animate({width:"500px"},1000);
			    mark=1;//打开
		    }
	    });

	    var obj_Mp3=null;
	    var _index=0;
        //点击可以点歌
        $("#Music ul").on('click', 'li', function () {
            //预约事件先把事件给ul
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
    <div id="BgBig" style=" background-image: url(images/0008118294621006_b.jpg); background-repeat:no-repeat; background-size:100%;width:1918px;height:700px; position:relative;top:-50px;">
           <div id="Music" style="width: 960px; height: 250px;margin: 50px auto 0px; position: relative; background-image:url(images/dsfdv.png);top: 100px;
left: -72px;">
	            <div id="orderBang">
                    收藏榜单
                    <img  src="Imgs/Xin.png" style="position:absolute;top:48px;left:23px; height:170px;width:159px;">
	            </div>
	            <ul id="micMenuApp">
		            <li class="box1">
			            <img src="{{micImg}}" width='120px' height='120px' title="{{micName}}" dataSrc='{{micSrc}}'/>
                       <%-- <a style="font-size:25px;position:relative; left:23px; font-family:华文行楷">{{SingerName}}</a>--%>
		            </li>  
	            </ul>
                <img  src="Imgs/未标题-5.png" style="position:absolute;top:186px; left:323px; height:121px;width:85px;"/>
                 <img  src="Imgs/未标题-7.png" style="position:absolute;top:148px; left:79px; height:121px;width:85px;"/>
                 <img  src="Imgs/未标题-6.png" style="position:absolute;top:181px; left:514px; height:121px;width:85px;"/>
             
            </div>
            <!--点播音乐结束-->

            <!--音乐播放按扭开始-->
            <div class="MusicCon">
	            <div id="bgimgSinger"></div>
	            <div class='ImgTxt'>
		            <dl id="PalyMusico">
			            <dt>
                            <%--<img src="images/Exo1.jpg"  class="butImg"/>--%>
                            <img src="{{micImg2}}" class="butImg" style=" width:90px;height:90px; " dataSrc='{{micSrc3}}'/>
			            </dt>
			            <dd>{{micImg3}}</dd>
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
