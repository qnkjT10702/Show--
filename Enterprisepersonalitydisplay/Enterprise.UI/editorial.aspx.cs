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
    public partial class editorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var UserId = Session["UserId"];
            List<UserInfo> LookName =  Songquery_O.LookupName(UserId);
            newform_name_value.Value = LookName[0].UserName;
            newform_mail_value.Value = LookName[0].UserEmall;
            var UserSex = LookName[0].UserSex;
            if (UserSex == "男")
            {
                newform_sex_confirm_0.Checked = true;
            }else if (UserSex == "女")
            {
                newform_sex_confirm_1.Checked = true;
            }
            if(Request.RequestType == "POST")
            {

            }
        }
    }
}