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
            //Imagehead.ImageUrl = info.MicImg;
            //rmusic.InnerText = info.MicName;
        }
    }
}