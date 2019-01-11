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
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.RequestType == "POST")
            {
                List<ViewMicsuger> Show_Song = MusicCRUD.SelectNewMic();
                var st = from s in Show_Song select new { MicImg = s.MicImg, MicName = s.MicName, MicId = s.MicId, SingerName=s.SingerName };
                Response.Write(JsonConvert.SerializeObject(st));
                Response.End();
            }
        }
        
    }
}