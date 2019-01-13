using DataSheet.Model;
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
    public partial class searchSong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.RequestType == "POST")
            {
                string textName = Request["text"];
                List<ViewMicsuger> Show = Songquery_O.query(textName);
                var st = from s in Show select new { MicName = s.MicName, SingerName = s.SingerName};
                Response.Write(JsonConvert.SerializeObject(st));
                Response.End();
            } 
        }
    }
}