using DataSheet.Model;
using ServiceLogic.BLL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enterprise.UI
{
    public partial class OrderPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Site1 OPge = Page.Master as Site1;
            OPge.inquire += OPgerefer;

        }
        private void OPgerefer(string condition)
        {
            //查询数据库  带条件
            List<ArrayList> table = Songquery_O.query(condition);
            //拿到数据
            //展示在页面
        }
    }
}