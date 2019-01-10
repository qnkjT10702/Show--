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
                    //给票证 （int1（固定的为1），string（通过票证的对象真实姓名），DataTime（设置给票证的时间）
                    //，Datatime(设置票证的过期的时间)， ?，传一个唯一标识就是对应数据库表的Id）

                    HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket));
                    //cookie("cookie名字"，"给cookie的值")---对应给的参数FormsAuthentication.FormsCookieName,
                    //放票证（不过票证的类型不是string 类型所有要通过Encrypted（“Ticket(票证)”）来加密装换）


                    cookie.Expires = DateTime.Now.AddDays(1);
                    //设置cookie的过期时间 设置为明天也就是现在时间再往后用AddDays()方法加一天

                    Response.Cookies.Add(cookie);
                    //再把cookie  用Response响应给服务器 存到浏览器
                    Response.Redirect("/Admin/HomePage.aspx");

                    //再响应给服务器一个需要权限的页面
                    //去创建一个cookie来存储这个票证，以便于去权限的页面的母版去验证票证
                }



            }
        }
    }
}