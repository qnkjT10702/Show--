using DataSheet.Model;
using ServiceLogic.BLL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSheetDAL;
using System.Data;
using Newtonsoft.Json;


namespace Enterprise.UI
{
    public partial class OrderPage : System.Web.UI.Page
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
            else
            {

                Site1 OPge = Page.Master as Site1;
                OPge.inquire += OPgerefer;
                
            }
           

        }
        private void OPgerefer(string condition)
        {
            //查询数据库  带条件
            List<ViewMicsuger> table = Songquery_O.query(condition);
            //拿到数据
            //展示在页面
        }
    }
}