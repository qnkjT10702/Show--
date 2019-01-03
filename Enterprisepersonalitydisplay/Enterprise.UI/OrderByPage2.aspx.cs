using DataSheet.Model;
using DataSheetDAL;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Enterprise.UI
{
    public partial class OrderByPage2 : System.Web.UI.Page
    {
        public ViewMicsuger view = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.RequestType == "POST")
            {


                List<ViewMicsuger> tbH = MusicCRUD.Selectorder();
                //序列化 这个集合 Json
                string JsonTb = JsonConvert.SerializeObject(tbH);
                Response.Write(JsonTb);
                Response.End();
            }
            //else
            //{

            //    Site1 OPge = Page.Master as Site1;
            //    OPge.inquire += OPgerefer;

            //}
        }
    }
}