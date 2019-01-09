using DataSheet.Model;
using Newtonsoft.Json;
using ServiceLogic.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Enterprise.UI
{
    /// <summary>
    /// SingerPageHan 的摘要说明
    /// </summary>
    public class SingerPageHan : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string SingerName = context.Request["SingerName"];
            //查询数据库
            List<ViewMicsuger> FindSong = Songquery_O.FindSong(SingerName);
            var st = from s in FindSong select new { MicName = s.MicName, SingerName = s.SingerName, StyleName = s.StyleName, MicId =s.MicId};
            context.Response.Write(JsonConvert.SerializeObject(st));
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