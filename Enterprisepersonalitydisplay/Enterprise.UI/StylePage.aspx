<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StylePage.aspx.cs" Inherits="Enterprise.UI.StylePage" %>

<%@ Register Src="~/MusicPaly2.ascx" TagPrefix="uc1" TagName="MusicPaly2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $('#AppBar3').css({ backgroundColor: '#4A4A4A',color:'#fdad02' })
        })
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
            height:550px;
            padding:20px 100px;
            box-sizing:border-box;
            display:flex;   /*不换行*/
            justify-content: space-between;
            flex-wrap: wrap;
            border:1px solid blue;
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
            left: 873px;
            top: -17px;
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
            left: 897px;
            top: -21px;
            border-color:transparent;
            background-color:transparent;
        }
            .btnDownLoadSty:hover {
                background-position: 223px 66px;
            }
            .btnCollestSty:hover {
                background-position: 220px 70px;
            }
    </style>

    <div id="styleTitle">
        <span style="padding:7px 14px;color:white;background-color:#fdad02;font-size:14px;">推荐</span>
        <span style="margin-left:50px;">请选择分类风格：
            <%--<asp:DropDownList ID="ListMciStyle" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ListMciStyle_SelectedIndexChanged"></asp:DropDownList>--%>
           <select id="ListMciStyle">
              <option value ="volvo">古风歌曲</option>
              <option value ="saab">经典老歌</option>
              <option value="opel">流行歌曲</option>
              <option value="audi">说唱</option>
           </select>
       </span>
       
       
    </div>
    <div id="styleSong">
        <div id="MicControlBox">
        <%--动态替换代码begin--%>
       
        <%--动态替换代码end--%>
        </div>
        <div id="PagingBox">
            <label style="position:relative;top:388px;left:-642px; font-size:20px;">跳转至：</label>
            <input type="text"  id="DropNum" style=" font-size:30px; height:30px;width:144px; border:black solid 1px; background-color:antiquewhite; position:absolute;left:676px;top:589px;" />
            <div id="Go"  style=" position:absolute; top:589px; left:847px; border:black solid 1px; background-color:black; color:white; border-radius:50%; height:30px;width:30px; font-size:18px;line-height:27px; text-align:center; font-weight:bold;">Go</div>
             <div id="Top" style=" position:relative; top:403px; left:-560px; border:black solid 1px; height:30px;width:30px; font-size:30px;line-height:25px; text-align:center; font-weight:bold;"><</div>
            <div id="Bttomm" style=" position:relative; top:373px; left:-400px; border:black solid 1px; height:30px;width:30px; font-size:30px;line-height:25px; text-align:center; font-weight:bold;">></div>
            <div id="PositionPage" style="position:absolute;top:636px;left:727px;">
                <span id="Now" style="font-size:25px; color:orange"></span>
                <span id="Now2" style="font-size:25px; color:antiquewhite;font-weight:bold;">/</span>
                <span id="CountNum" style="font-size:20px;"></span>
            </div>            
        </div>
    </div>

    <script>
        var Stie = ' <div id="bigBox" style="border:1px black solid; height:110px;width:1000px; background-color:antiquewhite;"> <div runat="server" id="SingerNameSty" style="position:relative;top:26px; color:chocolate;left:133px; font-size:25px;">{{SingerName}}</div><div  id="SusicNameSty" style="position:relative;top:38px;left:131px; font-size:21px;">{{MicName}}</div><input type="button" class="btnCollestSty" /><input type="button" class="btnDownLoadSty" /><audio  id="AudioMic" controls="controls" src="{{MicSRc}}" style="width:500px; background-color:transparent;position:relative;left:250px;top:-2px;"></audio><div id="SingerImg" style=" position:relative;left:0px;top:0px;"><img id="SingerImgs" src="{{MicImg}}" style="position:relative;top:-96px;left:0px; height:110px; width:110px"/></div></div>';
        $(function () {
            var index = 1;//表示当前 第几页 默认 第一页
            var PageCount = 0;//总共页数
            $('.songName,.singerName').hover(function () {
                $(this).toggleClass('style');
            });
            $('#ListMciStyle').change(function () {
                Load();
            });
            function Load() {
                 //第一步 得到  你选择的是什么‘文本’
                var option = $("#ListMciStyle option:selected").text();

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
                    Mouther = Stie.replace('{{MicSRc}}', data[i].MicSRc).replace('{{SingerName}}', data[i].SingerName).replace('{{MicName}}', data[i].MicName).replace('{{MicImg}}', data[i].MicImg);
                    //未完
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

           

        });

       
    </script>

</asp:Content>
