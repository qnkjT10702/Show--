using DataSheet.Model;
using DataSheetDAL;
using ServiceLogic.BLL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enterprise.UI
{
    public partial class Userloing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod=="POST")
            {
               string s= Request["actionName"];
                if (s == "1")
                {
                    Unnamed_ServerClick();
                }else if(s == "2")
                {
                    Longin_btn_ServerClick();
                }
                
            }
        }

        protected void Unnamed_ServerClick()
        {
            string SigJuedui = "Imgs/1.jpg";
            string UserSex = "";
            if (form_sex_confirm_0.Checked)
            {
                 UserSex = "男";
            }else if(form_sex_confirm_1.Checked)
            {
                 UserSex = "女";
            }
            /// <summary>
            ///用户注册
            /// </summary>
            bool i= Songquery_O.AddUserInfo(new UserInfo { UserName = form_name_value.Value, UserPwd = form_pwd_value.Value, UserSex = UserSex, UserEmall = form_mail_value.Value, HeadImg = SigJuedui });
            if (i)
              {
                Label1.Style["display"] = "block";
                Label1.Text = "注册成功，赶紧去登录吧！";
            }
            else
            {
                Label1.Style["display"] = "block";
                Label1.Text = "注册失败,该用户名已被占用！";
            }
            
        }

        /// <summary>
        /// 用户登录
        /// </summary>
        protected void Longin_btn_ServerClick()
        {
            List<UserInfo> s =  Songquery_O.LoginUser(new UserInfo { UserName = form_name_value_login.Value, UserPwd = form_pwd_value_login.Value });
            if (s.Count!=0)
            {
                Session["UserId"] = s[0].UserId;
                Uri u = Request.UrlReferrer;
                string Url = u.AbsolutePath;
                if(Url== "/Userloing.aspx")
                {
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Redirect(Url);
                }
                
                
            }
            else
            {
                Label2.Style["display"] = "block";
                Label2.Text = "注册失败，用户不存在";
            }
        }
    }
}