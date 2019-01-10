<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StylePage.aspx.cs" Inherits="Enterprise.UI.StylePage" %>

<%@ Register Src="~/MusicPaly2.ascx" TagPrefix="uc1" TagName="MusicPaly2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery.min.js"></script>
     <script src="scripts/jquery-3.3.1.js"></script>
    <script src="js/feature.presenter.1.5.min.js"></script>
    <script>
        
        $(function () {
            $('#AppBar3').css({ backgroundColor: '#4A4A4A', color: '#fdad02' });
        })
           var options = {
	        circle_radius: 120,
	        normal_feature_size: 100,
	        highlighted_feature_size: 150,
	        top_margin: 100,
	        bottom_margin: 50,
	        spacing: 40,
	        min_padding: 50,
	        heading_font_size: 24,
	        description_font_size: 10,
	        type: 'image'
        };

        var fp = new FeaturePresenter($("#test-element"), settings, options);
        fp.createPresenter();
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        #styleTitle{
            width:100%;
            height:70px;
            padding:0px 150px;
            box-sizing:border-box;
            line-height:70px;
        }
        #styleSong{
            width:100%;
            height:700px;
            padding:20px 100px;
            box-sizing:border-box;
            display:flex;   /*不换行*/
            justify-content: space-between;
            flex-wrap: wrap;
            background-image:url("../Imgs/lx6.jpg");
            background-size:100% 550px;
        }
        #styleSong tr:nth-child(1){
            color:#999999;
        }
        #styleSong td{
            padding:12px 10px;
        }
        #styleSong td a{
            color:#4a4a4a;
        }
        #styleSong td a:hover{
            color:#fdad02;
        }
        .btnCollestSty {
            width: 44px;
            height: 50px;
            background-image: url("../Imgs/Collect1.png");
            background-size:89px;
            background-position:-2px 70px;
            position: relative;
            left: 530px;
            top: -5px;
            border-color:transparent;
            background-color:transparent;
        }
        .btnDownLoadSty {
            width: 44px;
            height: 50px;
            background-image: url("../Imgs/DownLoad.png");
            background-size: 89px;
            background-position: -2px 66px;
            position: relative;
            left: 612px;
            top: -5px;
            border-color:transparent;
            background-color:transparent;
        }
            .bgpaly{
                    background-image: url("Imgs/播放.png");
                    width: 60px;
                    height: 60px;
                    background-size: 100%;
                    position: absolute;
                    top: 24px;
                    left: 377px;
        }
            
    </style>

    <div id="styleTitle">
        <span style="padding:7px 14px;color:white;background-color:#fdad02;font-size:14px;">推荐</span>
 <%--       <span style="margin-left:50px;">请选择分类风格：
          
           <select id="ListMciStyle">
              <option value ="volvo">古风歌曲</option>
              <option value ="saab">经典老歌</option>
              <option value="opel">流行音乐</option>
              <option value="audi">说唱</option>
               <option value=""></option>
           </select>
       </span>--%>
       
       
    </div>
    <div id="test-element" style="position: absolute;left:-21px;top:242px;width:538px;height:837px;"></div>

    <div id="styleSong">
        <div id="MicControlBox">
        <%--动态替换代码begin--%>
       
        <%--动态替换代码end--%>
        </div>
        <div id="PagingBox">
            <label style="position:relative;top:430px;left:-803px; font-size:20px;">跳转至：</label>
            <input type="text"  id="DropNum" style=" font-size:30px; height:30px;width:144px; border:black solid 1px; background-color:antiquewhite; position:absolute;left:628px;top:629px;" />
            <div id="Go"  style=" position:absolute; top:630px; left:792px; border:black solid 1px; background-color:black; color:white; border:solid 3px #fdad02 ;border-radius:50%; height:30px;width:30px; font-size:16px;line-height:27px; text-align:center; font-weight:bold;">Go</div>
             <div id="Top" style=" position:relative; top:403px; left:-875px; border:black solid 1px; height:30px;width:30px; font-size:30px;line-height:25px; text-align:center; font-weight:bold;"><</div>
            <div id="Bttomm" style=" position:relative; top:373px; left:-468px; border:black solid 1px; height:30px;width:30px; font-size:30px;line-height:25px; text-align:center; font-weight:bold;">></div>
            <div id="PositionPage" style="position:absolute;top:636px;left:343px;">

            <label style="position:relative;top:388px;left:-642px; font-size:20px;">跳转至：</label>
            <input type="text"  id="DropNum" style=" font-size:30px; height:30px;width:130px; border:black solid 1px; background-color:antiquewhite; position:absolute;left:683px;top:589px;" />
            <div id="Go"  style=" position:absolute; top:589px; left:822px; border:black solid 1px; background-color:black; color:white; border-radius:50%; height:30px;width:30px; font-size:18px;line-height:27px; text-align:center; font-weight:bold;">Go</div>
             <div id="Top" style=" position:relative; top:403px; left:-564px; border:black solid 1px; height:30px;width:30px; font-size:30px;line-height:25px; text-align:center; font-weight:bold;"><</div>
            <div id="Bttomm" style=" position:relative; top:373px; left:-392px; border:black solid 1px; height:30px;width:30px; font-size:30px;line-height:25px; text-align:center; font-weight:bold;">></div>
            <div id="PositionPage" style="position:absolute;top:636px;left:727px;">
                <span id="Now" style="font-size:25px; color:orange"></span>
                <span id="Now2" style="font-size:25px; color:antiquewhite;font-weight:bold;">/</span>
                <span id="CountNum" style="font-size:20px;"></span>
            </div>            
        </div>
    </div>

    <script>
        var settings = [ 
	        {image: 'Imgs/古风.jpg', heading: '古风歌曲', description: ''}, 
	        {image: 'Imgs/timg-211.jpeg', heading: '经典老歌', description: ''}, 
	        {image: 'Imgs/民谣.jpg', heading: '民谣', description: ''}, 
	        {image: 'Imgs/liux.jpg', heading: '流行音乐', description: ''},
	        {image: 'Imgs/timg-7.gif', heading: '说唱', description: ''}
        ];
        var Stie = ' <div class="bigBox" style=" position: relative; left:651px; margin-bottom: 20px; border:1px black solid; height:110px;width:742px; background-color:antiquewhite;"><a href="#" class="bgpaly"></a> <div runat="server" id="SingerNameSty" style="position:relative;top:26px; color:chocolate;left:133px; font-size:25px;">{{SingerName}}</div><div  id="SusicNameSty" style="position:relative;top:38px;left:131px; font-size:21px;">{{MicName}}</div><input type="button" class="btnCollestSty" /><input type="button" class="btnDownLoadSty" /><div id="SingerImg" style=" position:relative;left:0px;top:0px;"><img id="SingerImgs" title="{{MicId}}" src="{{MicImg}}" style="position:relative;top:-86px;left:0px; height:110px; width:110px"/></div></div>';
        $(function () {
            var s;
            var index = 1;//表示当前 第几页 默认 第一页
            var PageCount = 0;//总共页数
            $('.songName,.singerName').hover(function () {
                $(this).toggleClass('style');
            });
            //$('#ListMciStyle').change(function () {
            //    Load();
            //});
            $(".feature-presenter>img").click(function(){
		         s=$(".feature-presenter-text-heading").text();  
                Load();
	            });
            function Load() {
                 //第一步 得到  你选择的是什么‘文本’
                var option = s;
                //写ajax
                //得到数据 -- 
                $.ajax({
                    type: "post",
                    dataType: "json",
                    data: { 
                        styName: option,
                        index: index,
                        //当前第几页
                    },
                    success: function (data) {
                        // 写一个方法动态创建页码
                        StyMic(data.Stydata);
                        CreateCountPage(data);
                        //当前第几页
                    }
                });
     
            }
            function StyMic(data) {
                let outHtm = '';
                    console.log(Stie);
                for (var i = 0; i < data.length; i++) {
                    Mouther = Stie.replace('{{MicSRc}}', data[i].MicSRc).replace('{{SingerName}}', data[i].SingerName).replace('{{MicName}}', data[i].MicName).replace('{{MicImg}}', data[i].MicImg).replace("{{MicId}}", data[i].MicId);
                    outHtm += Mouther;
                }
                $('#MicControlBox').html(outHtm);
            }   

            function CreateCountPage(data)
            {
                PageCount = data.ct;
               //显示当前页数/总页数
                     $("#Now").text(index);
                    $("#CountNum").text(PageCount);
            }
            $("#Top").click(function () {
               
                    if (index >1) {
                        index--;
                    }
                Load(); 
            });
            $("#Bttomm").click(function () {
               
                if (index< PageCount) {
                    index++;
                }
                Load();
            });

            $("#Go").click(function () {
                var PageIndx = $("#DropNum").val();
                if (PageIndx <= PageCount) {
                    index = PageIndx;
                }
                Load();
            });
             var colleCount = 0;
            $("#MicControlBox").on('click', ".btnCollestSty", function () {
                colleCount++;
                if (colleCount % 2) {
                    $(this).css('backgroundPosition', "220px 70px");
                    var MicIdTit = $(this).siblings("#SingerImg").children("#SingerImgs").attr("title");
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
                }
                 
            });
             $("#MicControlBox").on('click', $(".bgpaly"), function () {
               
                $(".bgpaly").click(function () {
                   //var MicIdTit = $(this).siblings("#SingerImg").children("#SingerImgs").attr("title");
                });
                
                
            });
        });

       
    </script>

</asp:Content>
