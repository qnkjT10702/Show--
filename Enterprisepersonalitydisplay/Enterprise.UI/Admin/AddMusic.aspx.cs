using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSheetDAL;

namespace Enterprise.UI.Admin
{
    public partial class AddMusic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //添加歌曲的页面加载事件 
            //DataTable table = MusicCRUD.SelectMicStyle();
            //ListSingerId.DataSource = table.DefaultView;
            //ListSingerId.DataTextField = "StyleId";
            //ListSingerId.DataValueField = "StyleName";
            //ListSingerId.DataBind();
            //给下拉控件 绑定数据

        }

        protected void BtnMicSubmit_Click(object sender, EventArgs e)
        {
             //string MicName= TxtMicName.Text;
            /// <summary>
            /// 歌曲名
            /// </summary>
            //string MicImg = FileMicImg.FileName;
            /// <summary>
            /// 歌曲背景图
            /// </summary>
           

              /// <summary>
              /// 选择歌手
              /// </summary>
              
        }
    }
}