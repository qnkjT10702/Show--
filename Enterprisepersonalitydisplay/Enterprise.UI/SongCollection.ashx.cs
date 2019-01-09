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
            string MicId = context.Request["MicId"];
            var UserId = "1";
            if (UserId == null)
            {
                context.Response.Write(new JavaScriptSerializer().Serialize(new { result = -1 }));
                context.Response.End();
            }else
            {
                bool st = Songquery_O.SongCollection(MicId,UserId);
                context.Response.Write(new JavaScriptSerializer().Serialize(new { result = Convert.ToInt32(st) }));
                context.Response.End();
                //}else
                //{
                //    context.Response.Write(new JavaScriptSerializer().Serialize(new { result = 3 }));
                //    context.Response.End();
                //}
                
            }
            
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