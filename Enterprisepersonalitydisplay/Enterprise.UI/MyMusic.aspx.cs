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
    public partial class MyMusic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var UserId = Session["UserId"];
            if (UserId == null)
            {
                //Uri u = Request.UrlReferrer;
                //string s = u.AbsolutePath;
                Response.Redirect("Userloing.aspx");
            }
            if (Request.RequestType == "POST")
            {
                MicSearch();
            }
            ShowUser();
        }
        /// <summary>
        /// 查询用户收藏的音乐
        /// </summary>
        private void MicSearch()
        {
            var UserId = Session["UserId"];
            List<ViewMicsuger> MicInfo = Songquery_O.MicSearch(UserId);
            var st = from s in MicInfo select new { MicName = s.MicName, SingerName = s.SingerName, StyleName=s.StyleName, MicId =s.MicId};
            Response.Write(JsonConvert.SerializeObject(st));
            Response.End();
        }

        /// <summary>
        /// 显示用户头像及用户名
        /// </summary>
        private void ShowUser()
        {
            var UserId = Session["UserId"];
            List<UserInfo> ShowUserInfo = Songquery_O.ShowUser(UserId);
            UserImg.ImageUrl = ShowUserInfo[0].HeadImg;
            UserName.Text = ShowUserInfo[0].UserName;
        }
    }
}