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
            if (Request.RequestType == "POST")
            {
                string StyName = Request["styName"];
                int index = int.Parse(Request["index"]);
                List<ViewMicsuger> Stytb = MusicCRUD.SelectMicStyle(StyName);
                int count;
                //一共多少条
                List<ViewMicsuger> Stytb2 = MusicCRUD.SelectStyMusic(index, 3, "MicId", out count, $"StyleName='{StyName}'");
                //根据前台传过来的data 

                string JsonStyTb = JsonConvert.SerializeObject(new { idx = index, ct = count, Stydata = Stytb2 });
                //序列化
                Response.Write(JsonStyTb);
                Response.End();
            }
        }
 
    }
}