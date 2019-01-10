using DataSheet.Model;
using DataSheetDAL;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enterprise.UI
{
    public partial class StylePage : System.Web.UI.Page
    {
       
        // public  List<ViewMicsuger> comdesLs = MusicCRUD.SelectMicStyle("民谣");
        protected void Page_Load(object sender, EventArgs e)
        {
          
            //用户Id

            if (Request.RequestType == "POST")
            {
                int  UserId =Convert.ToInt32(Session["UserId"]);
                //当前登录用户Id
                List<int> ListMicid = MusicCRUD.UserMidColle(UserId);
                //当前登录用户所收藏的歌曲Id

                string StyName = Request["styName"];
                int index = 1;//int.Parse(Request["index"]);
                List<ViewMicsuger> Stytb = MusicCRUD.SelectMicStyle(StyName);
                int count;
                //一共多少条
                List<ViewMicsuger> Stytb2 = MusicCRUD.SelectStyMusic(index, 3, "MicId", out count, $"StyleName='{StyName}'");
                //根据前台传过来的data 

                string JsonStyTb = JsonConvert.SerializeObject(new { idx = index, ct = count, Stydata = Stytb2,UserMid= ListMicid });
                //序列化
                Response.Write(JsonStyTb);
                Response.End();
                // /前台 要展示的歌曲  1,3,5,7,13,46
                // 你收藏过的 歌曲id 4,6,90,7
            }
        }
 
    }
}