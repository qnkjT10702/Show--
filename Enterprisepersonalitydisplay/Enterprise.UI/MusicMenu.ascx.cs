using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSheet.Model;

namespace Enterprise.UI
{
    public partial class MusicMenu : System.Web.UI.UserControl
    {
        public MusicInfo info { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.micImg.Src = info.MicImg;
            //歌曲图片

            this.MusicPlayDisc.Style.Add("background-image",info.MicImg);
            //要带上url("")
            this.MicName.InnerText = info.MicName;
            this.SingerName.InnerText=info

        }
    }
}