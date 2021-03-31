using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo1
{
    public partial class explore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    Response.Write("<script>alert('You dont have access. Please Register yourself or login.');</script>");
                    Response.Redirect("LoginPage.aspx");
                }
            }
            catch (Exception ex)
            {
                //
            }
        }

    }
}