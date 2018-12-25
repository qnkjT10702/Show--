using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
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
            if (!IsPostBack)
            {
                DataTable tableSinger = MusicCRUD.SelectSingerInfo();
                ListSingerId.DataSource = tableSinger.DefaultView;
                //ListSingerId.DataTextField = "SingerId";
                ListSingerId.DataValueField = "SingerName";
                ListSingerId.DataBind();
                //  给歌手ID下拉控件 绑定数据

                DataTable tableSty = MusicCRUD.SelectMicStyle();
                ListStyleId.DataSource = tableSty.DefaultView;
                //ListSingerId.DataTextField = "StyleId";
                ListStyleId.DataValueField = "StyleName";
                ListStyleId.DataBind();
                //  给歌曲风格下拉控件 绑定数据
                List<string> listBoxMicReg = new List<string>();
                listBoxMicReg.Add("华语");
                listBoxMicReg.Add("日本");
                listBoxMicReg.Add("韩国");
                listBoxMicReg.Add("欧美");
                listBoxMicReg.Add("其他");
               
                this.ListMicRegion.DataSource = listBoxMicReg;
                this.ListMicRegion.DataBind();
            }
          
            //添加歌曲的页面加载事件
        }

        protected void BtnMicSubmit_Click(object sender, EventArgs e)
        {
             string MicName= TxtMicName.Text;
            /// <summary>
            /// 歌曲名
            /// </summary>
      
           
            string Micrdm = Guid.NewGuid().ToString();
            string Micimg = string.Format("{0}{1}", Micrdm, FileMicImg.FileName);
            string Micsqlpath = Path.Combine("Imgs", Micimg);

            string MicJuedui = Path.Combine(Server.MapPath("/"), Micsqlpath);
            // 绝对路径
            FileMicImg.SaveAs(MicJuedui);

            /// <summary>
            /// 歌曲背景图
            /// </summary>
            string MicPalyCount=TxtMicPlayCount.Text;
            /// <summary>
            /// 播放次数
            /// </summary>
           string MicSingerTime= TxtMicSignTime.Text;
            /// <summary>
            /// 歌曲上架时间
            /// </summary>
           string  TxtCollectCount.Text;
        }
    }
}