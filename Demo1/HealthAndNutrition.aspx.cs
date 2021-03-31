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
    public partial class HealthAndNutrition : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon); //strcon is Connection String
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[petNutrition]", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            RepArticle.DataSource = dt;
            RepArticle.DataBind();
            con.Close();
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("PetTraining.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("HealthAndNutrition.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("blogs.aspx");
        }

        
    }
}