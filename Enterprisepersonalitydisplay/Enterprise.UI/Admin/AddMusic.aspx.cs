using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enterprise.UI.Admin
{
    public partial class AddMusic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //添加歌曲的页面加载事件 

        }

        protected void BtnMicSubmit_Click(object sender, EventArgs e)
        {
            string MicName =  TxtMicName.Text;
            string FileMicImg = Request.Files["FileMicImg"].FileName;
          //  string FileMicImg2 = FileMicImg.f
            //添加歌曲的页面的点击提交事件

        }
    }
}