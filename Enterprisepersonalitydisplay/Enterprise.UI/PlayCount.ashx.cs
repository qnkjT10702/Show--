using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataSheet.Model;
using DataSheetDAL;

namespace Enterprise.UI
{
    /// <summary>
    /// PlayCount 的摘要说明
    /// </summary>
    public class PlayCount : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
          string MicId=context.Request["MicId"].ToString();
           int MicIdConvert = 0;
            if (MicId != "")
            {
                MicIdConvert+= Convert.ToInt32(MicId);
                MusicCRUD.AddpalyCount(new MusicInfo { MicId=MicIdConvert});
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