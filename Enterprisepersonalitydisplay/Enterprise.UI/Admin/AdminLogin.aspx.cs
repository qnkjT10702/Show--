using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSheet.Model;
using DataSheetDAL;
using Newtonsoft.Json;

namespace Enterprise.UI.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtAdminPwd.Attributes.Add("type", "password");
            TxtAginPwd.Attributes.Add("type", "password");

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string Name = TxtName.Text;
            //管理员真实姓名
            string AdminName = TxtAdminName.Text;
            //管理员昵称
            string AdminPwd = TxtAdminPwd.Text;
            //密码
            string AdimAginPwd = TxtAginPwd.Text;
            //确认密码

            //点击提交事件
           List<AdminInfo> admins= MusicCRUD.AddAdmInfo(new AdminInfo { AdminName = Name, AdminUser = AdminName, AdminPwd = AdimAginPwd });
            if (Page.IsValid)
            {
                if (admins.Count>0)
                {
                   
                    string AdName = JsonConvert.SerializeObject(admins[0].AdminName);
                    string AdminId = JsonConvert.SerializeObject(admins[0].AdminId);

                    //把集合里面的stuInfoId那一列给用JsonConvert(序列化数据转换类里面的)一个方法Serializeobject("这里面放要序列化的对象")
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, AdName, DateTime.Now, DateTime.Now.AddDays(1), true, AdminId);
       
                    HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket));
                    cookie.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(cookie);
                    Response.Redirect("/Admin/HomePage.aspx");

                }



            }
        }
    }
}