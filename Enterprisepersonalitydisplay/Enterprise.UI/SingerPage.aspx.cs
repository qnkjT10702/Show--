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
    public partial class SingerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.RequestType=="POST")
            {
                Find();
            }
        }
        /// <summary>
        /// 根据不同值进行不同的查找 在歌手信息表中
        /// </summary>
        private void Find()
        {
            string Regiotext = Request["Regiotext"];
            string Sextext = Request["Sextext"];
            string Styletext = Request["Styletext"];
            List<ViewMicsuger> FindData = Songquery_O.RegionFind(Regiotext,Sextext, Styletext);
            var st = from s in FindData select new { HardImg = s.HardImg, SingerName= s.SingerName };
            Response.Write(JsonConvert.SerializeObject(st));
            Response.End();
            
        }


    }
}