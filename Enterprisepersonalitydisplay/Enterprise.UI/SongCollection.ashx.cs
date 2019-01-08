using ServiceLogic.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.SessionState;

namespace Enterprise.UI
{
    /// <summary>
    /// 用于歌曲收藏功能
    /// </summary>
    public class SongCollection : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string MicName = context.Request["MicName"];
            string SingerName = context.Request["SingerName"];
            var UserId = context.Session["UserId"];
            bool st =Songquery_O.SongCollection(MicName, SingerName, UserId);
            context.Response.Write(new JavaScriptSerializer().Serialize(new { result = st }));
            context.Response.End();
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