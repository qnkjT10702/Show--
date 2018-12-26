using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace Enterprise.UI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Request.RequestType=="POST")
            {
                var i = new object[] {
                    new {
                        id=1,
                        title= "Driving Home for Christmas",
                        singer= "Campsite Dream",
                        songUrl= "./songs/song.mp3",
                        imageUrl= "./images/songs/c.jpg"
                    },
                    new {
                        id=2,
                        title= "认真的雪",
                        singer= "薛之谦",
                        songUrl= "./songs/song.mp3",
                        imageUrl= "./images/songs/renzhendexue.jpg"
                    }
                };
                Response.Write(JsonConvert.SerializeObject(i));
                Response.End();
            }
        }
    }
}