using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo1
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("explore.aspx#nav-daycare-tab"); 
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("explore.aspx#nav-health-tab");
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("explore.aspx#nav-overnight-tab");
        }

        protected void ad_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.adoptapet.com/");
        }
    }
}