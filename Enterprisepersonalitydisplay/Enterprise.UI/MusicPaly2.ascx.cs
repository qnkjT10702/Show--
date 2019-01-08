using DataSheet.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Enterprise.UI
{
    public partial class MusicPaly2 : System.Web.UI.UserControl
    {
        public ViewMicsuger micsuger { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.SingerNameSty.InnerText = micsuger.SingerName;
            this.SusicNameSty.InnerText = micsuger.MicName;
            this.SingerImgs.ImageUrl = micsuger.MicImg;
            this.AudioMic.Attributes.Add("src", micsuger.MicSRc);

        }
    }
}