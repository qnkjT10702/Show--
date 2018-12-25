using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSheet.Model;
using DataSheetDAL;

namespace Enterprise.UI.Admin
{
    public partial class AddSinger : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> SingerClass = new List<string>();
                SingerClass.Add("男");
                SingerClass.Add("女");
                SingerClass.Add("组合");
                this.ListSingerClass.DataSource = SingerClass;
                this.ListSingerClass.DataBind();
                //  给歌手性别或者组合下拉控件 绑定数据
                List<string> LisSingerRegion = new List<string>();
                LisSingerRegion.Add("华语");
                LisSingerRegion.Add("日本");
                LisSingerRegion.Add("韩国");
                LisSingerRegion.Add("欧美");
                LisSingerRegion.Add("其他");
                this.ListSingerRegion.DataSource = LisSingerRegion;
                this.ListSingerRegion.DataBind();
            }
        }

        protected void BtnMicSubmit_Click(object sender, EventArgs e)
        {
            
            string SingerName = TxtSingerName.Text;
            string Sigrdm = Guid.NewGuid().ToString();
            string Sigimg = string.Format("{0}{1}", Sigrdm, FileHardImg.FileName);
            string Sigsqlpath = Path.Combine("Imgs", Sigimg);

            string SigJuedui = Path.Combine(Server.MapPath("/"), Sigsqlpath);
            // 绝对路径
            FileHardImg.SaveAs(SigJuedui);

            /// <summary>
            /// 歌手头像4
            /// </summary>
            if (IsValid)
            {
                MusicCRUD.AddSinger(new Singerinfo { SingerClass = ListSingerClass.SelectedItem.Text, SingerName = SingerName, SingerRegion = ListSingerRegion.SelectedItem.Text, HardImg = Sigsqlpath });
                Response.Write("添加歌手成功");
            }

        }
    }
}