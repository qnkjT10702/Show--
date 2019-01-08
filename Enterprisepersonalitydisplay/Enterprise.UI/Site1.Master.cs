using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enterprise.UI
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        
        public event Action<string> inquire;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void searchBut_Click(object sender, EventArgs e)
        {
            if (inquire!= null)
            {
                inquire.Invoke(searchBox.Text);
            }
        }
    }
}