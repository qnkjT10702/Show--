using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSheetDAL;
using DataSheet.Model;

namespace Enterprise.UI.Admin
{
    public partial class AddMusic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListStyleId.Style.Add("width", "100px");
            ListStyleId.Style.Add("height", "100px");
            if (!IsPostBack)
            {
                DataTable tableSinger = MusicCRUD.SelectSingerInfo();
                ListSingerId.DataSource = tableSinger.DefaultView;
                ListSingerId.DataValueField = "SingerId";
                ListSingerId.DataTextField = "SingerName";
                ListSingerId.DataBind();
                //  给歌手ID下拉控件 绑定数据
           
                DataTable tableSty = MusicCRUD.SelectMicStyle();
                ListStyleId.DataSource = tableSty.DefaultView;
                ListStyleId.DataTextField = "StyleName";
                ListStyleId.DataValueField = "StyleId";
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
            string Micsqlpath = MicImageBg.ImageUrl;

            /// <summary>
            /// 图片的路径
            /// </summary>
            string MicName = TxtMicName.Text;
            /// <summary>
            /// 歌曲名
            /// </summary>

            string MicSrdm = Guid.NewGuid().ToString();
            string MicSrc = string.Format("{0}{1}", MicSrdm, FileMicSRc.FileName);
            string MicSsqlpath = Path.Combine("Musics", MicSrc);

            string MicSJuedui = Path.Combine(Server.MapPath("/"), MicSsqlpath);
            // 绝对路径
            FileMicSRc.SaveAs(MicSJuedui);
            /// <summary>
            /// 歌曲相对路径
            /// </summary>

            if (Page.IsValid)
            {
                MusicCRUD.AddMusic(new MusicInfo { MicName = MicName, MicImg = Micsqlpath, MicRegion = ListMicRegion.SelectedItem.Text, StyleId =Convert.ToInt32(ListStyleId.SelectedItem.Value), SingerId =Convert.ToInt32(ListSingerId.SelectedItem.Value), MicSRc = MicSsqlpath });
                Response.Write("添加歌曲成功！");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
           
            string Micrdm = Guid.NewGuid().ToString();
            string Micimg = string.Format("{0}{1}", Micrdm, FileMicImg.FileName);
            string Micsqlpath = Path.Combine("Imgs", Micimg);
            //相对路径
            string MicJuedui = Path.Combine(Server.MapPath("/"), Micsqlpath);
            // 绝对路径
            FileMicImg.SaveAs(MicJuedui);
            /// <summary>
            /// 歌曲背景图
            /// </summary>
            MicImageBg.ImageUrl = "/"+Micsqlpath;
        }
    }
}