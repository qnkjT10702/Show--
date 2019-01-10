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
    /// 移出收藏
    /// </summary>
    public class DeleteCollection_MyMusic : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string MicId = context.Request["MicId"];
            var UserId = "1";
            bool ss = Songquery_O.DeleteCollection(MicId, UserId);
            context.Response.Write(new JavaScriptSerializer().Serialize(new { result = Convert.ToInt32(ss) }));
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