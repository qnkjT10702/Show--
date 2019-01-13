using DataSheet.Model;
using ServiceLogic.BLL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enterprise.UI
{
    public partial class editorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           // string FileImgName = MusicImg.FileName;
            var UserId = Session["UserId"];
            UserInfo LookName =  Songquery_O.LookupName(UserId)[0];
            newform_name_value.Value = LookName.UserName;
            newform_mail_value.Value = LookName.UserEmall;
            var UserSex = LookName.UserSex;
            if (UserSex == "男")
            {
                newform_sex_confirm_0.Checked = true;

            }else if (UserSex == "女")
            {
                newform_sex_confirm_1.Checked = true;
            }
            if(Request.RequestType == "POST")
            {
               
                string User_sex = "";
                if (newform_sex_confirm_0.Checked)
                {
                    User_sex = "男";
                }else if (newform_sex_confirm_1.Checked)
                {
                    User_sex = "女";
                }
                var UserId_s = Session["UserId"];
                string User_Name = Request["User_Name"];
                string User_Mail = Request["User_Mail"];
                string User_OldPwd = Request["User_OldPwd"];
                string User_NewPwd = Request["User_NewPwd"];
                //存储到数据库
                bool odification = Songquery_O.ChangeInfo(UserId_s, User_Name, User_Mail, User_OldPwd, User_NewPwd, User_sex);
                Response.Write(new JavaScriptSerializer().Serialize(new { result = Convert.ToInt32(odification) }));
                Response.End();
            }
        }
    }
}