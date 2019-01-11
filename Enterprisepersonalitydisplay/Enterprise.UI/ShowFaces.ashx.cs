using DataSheet.Model;
using Newtonsoft.Json;
using ServiceLogic.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace Enterprise.UI
{
    /// <summary>
    /// ShowFaces 的摘要说明
    /// </summary>
    public class ShowFaces : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var UserId = context.Session["UserId"];
            if (UserId != null)
            {
                List<UserInfo> HoneyBunny = Songquery_O.ShowUser(UserId);
                var st = from s in HoneyBunny select new { HeadImg = s.HeadImg, UserName = s.UserName };
                context.Response.Write(JsonConvert.SerializeObject(st));
                context.Response.End();
                //UserImg.ImageUrl = HoneyBunny[0].HeadImg;
                //UserName.Text = HoneyBunny[0].UserName;
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