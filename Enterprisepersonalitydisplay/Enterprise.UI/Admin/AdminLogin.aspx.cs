using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSheet.Model;
using DataSheetDAL;

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
            if (Page.IsValid)
            {
                MusicCRUD.AddAdmInfo(new AdminInfo { AdminName = Name, AdminUser = AdminName, AdminPwd = AdimAginPwd });
                Response.Write("管理员登陆成功！");
            }
            else
            {
               
            }
            
        }
    }
}