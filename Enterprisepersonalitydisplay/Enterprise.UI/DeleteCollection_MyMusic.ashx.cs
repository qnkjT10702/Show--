using ServiceLogic.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace Enterprise.UI
{
    /// <summary>
    /// 移出收藏
    /// </summary>
    public class DeleteCollection_MyMusic : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string MicName = context.Request["MicName"];
            string SingerName = context.Request["SingerName"];
            var UserId = context.Session["UserId"];
            bool ss = Songquery_O.DeleteCollection(MicName, SingerName, UserId);
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