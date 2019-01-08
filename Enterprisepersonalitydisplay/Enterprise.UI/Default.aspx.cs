using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSheetDAL;
using DataSheet.Model;


namespace Enterprise.UI
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<ViewMicsuger> comdesLs = MusicCRUD.SelectMicinfo();
            foreach (ViewMicsuger comde in comdesLs)
            {
                MusicPaly2 shop = (MusicPaly2)this.Panel1.TemplateControl.LoadControl("/MusicPaly2.ascx");

                this.Panel1.Controls.Add(shop);
                //添加控件
                shop.micsuger = comde;

            }
        }
    }
}