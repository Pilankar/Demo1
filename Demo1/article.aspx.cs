using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration; //for ConfigurationManager
using System.Data; //for ConnectionState
using System.Data.SqlClient; //for SqlConnection

namespace Demo1
{
    public partial class article : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //new string Title;

        protected void Page_Load(object sender, EventArgs e)
        {
            //string Title;
            //string id;

            if (!IsPostBack)
            {
                if (Request.QueryString["title"] != null)
                {
                    titlename.InnerText = Request.QueryString["title"];
                    //Title = Request.QueryString["title"];
                    //intro.InnerText = Request.QueryString["intro"];
                    //id = Request.QueryString["Id"];
                }
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT * from petNutrition where Id='" + Request.QueryString["Id"] + "' UNION SELECT * from petTraining where Id='" + Request.QueryString["Id"] + "' UNION SELECT * from petgroom where Id='" + Request.QueryString["Id"] + "';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    intro.InnerText = dt.Rows[0]["intro_para"].ToString();
                    para1.InnerText = dt.Rows[0]["para1"].ToString();
                    para2.InnerText = dt.Rows[0]["para2"].ToString();





                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }

        }
        

    }
}