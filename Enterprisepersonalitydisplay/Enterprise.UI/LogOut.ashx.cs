using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace Enterprise.UI
{
    /// <summary>
    /// 用于退出登录功能
    /// </summary>
    public class LogOut : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Session["UserId"] = null;
            context.Response.Redirect("MyMusic.aspx");
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