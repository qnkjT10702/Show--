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
    public partial class MyMusic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var UserId ="1";
            if (UserId == null)
            {
                //Uri u = Request.UrlReferrer;
                //string s = u.AbsolutePath;
                Response.Redirect("Userloing.aspx");
            }
            if (Request.RequestType == "POST")
            {
                MicSearch();
            }
        }
        private void MicSearch()
        {
            var UserId = "1";
            List<ViewMicsuger> MicInfo = Songquery_O.MicSearch(UserId);
            var st = from s in MicInfo select new { MicName = s.MicName, SingerName = s.SingerName, StyleName=s.StyleName };
            Response.Write(JsonConvert.SerializeObject(st));
            Response.End();
        }
    }
}