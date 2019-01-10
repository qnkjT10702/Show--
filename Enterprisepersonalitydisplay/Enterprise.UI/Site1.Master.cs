using DataSheet.Model;
using ServiceLogic.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enterprise.UI
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        
        public event Action<string> inquire;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.HttpMethod == "POST")
            {
                var UserId = Session["UserId"];
                if (UserId !=null)
                {
                    loginOK.Style["display"] = "block";
                    LoginEnroll.Style["display"] = "none";
                    List<UserInfo> HoneyBunny = Songquery_O.ShowUser(UserId);
                    UserImg.ImageUrl = HoneyBunny[0].HeadImg;
                    UserName.Text = HoneyBunny[0].UserName;
                }
            }
        }

        protected void searchBut_Click(object sender, EventArgs e)
        {
            if (inquire!= null)
            {
                inquire.Invoke(searchBox.Text);
            }

        }

        /// <summary>
        /// 显示用户头像并且显示名字 通过用户id
        /// </summary>
        /// <param name=""></param>
        private void DisplayUser()
        {
           
        }
    }
}