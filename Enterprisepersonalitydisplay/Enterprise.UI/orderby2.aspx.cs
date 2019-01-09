using DataSheet.Model;
using DataSheetDAL;
using Newtonsoft.Json;
using ServiceLogic.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enterprise.UI
{
    public partial class orderby2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.RequestType == "POST")
            {
                int  StyName = Convert.ToInt32(Request["MicId"]);
                List<ViewMicsuger> tbH = MusicCRUD.Selectorder();
                //收藏榜
                List<ViewMicsuger> tbNewMic = MusicCRUD.Selectorder();
                //新歌榜
                List<ViewMicsuger> tbEuropeMic = MusicCRUD.SelectEuropeMic();
                //欧美榜
                List<ViewMicsuger> tbHotMic = MusicCRUD.SelectHotMic();
                //热歌榜
                List<ViewMicsuger> tbChineseMic = MusicCRUD.SelectChineseMic();
                //华语榜
                List<ViewMicsuger> tbReHanMic = MusicCRUD.SelectReHanMic();
                //日韩版
                var obj = new { colle= tbH,colleNew=tbNewMic,colleEurope=tbEuropeMic,colleHot=tbHotMic,colleChinese=tbChineseMic,colleReHan=tbReHanMic};
                
                string JsonTbNew = JsonConvert.SerializeObject(obj);
                //序列化
                Response.Write(JsonTbNew);
                Response.End();
            }
            else
            {
                Site1 OPge = Page.Master as Site1;
                OPge.inquire += OPgerefer;
            }
        }
        private void OPgerefer(string condition)
        {
            //查询数据库  带条件
            List<ViewMicsuger> table = Songquery_O.query(condition);
            //拿到数据
            //展示在页面
        }

        protected void btnColle_Click(object sender, EventArgs e)
        {

        }

        //protected void btnColle_Click(object sender, EventArgs e)
        //{
        //    //收藏的点击事件
        //    btnColle.Style.Add("background-position","220px 70px");
        //}
    }
}