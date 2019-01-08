using ServiceLogic.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Enterprise.UI
{
    /// <summary>
    /// 用于歌曲收藏功能
    /// </summary>
    public class SongCollection : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string MicName = context.Request["MicName"];
            string SingerName = context.Request["SingerName"];
            var UserId = context.Session["UserId"];
            bool st = Songquery_O.SongCollection(MicName, SingerName, UserId);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}