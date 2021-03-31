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
    public partial class AddCentre : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void addArticleContent()
        {
            if (DropDownList2.SelectedItem.Value == "Daycare")
            {
                SqlConnection con = new SqlConnection(strcon); //strcon is Connection String
                                                               //check if connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO daycare(Name,Address,City,Contact,Hours_start,Hours_end,Website) values(@Name,@Address,@City,@Contact,@Hours_start,@Hours_end,@Website)", con);
                cmd.Parameters.AddWithValue("@Name", name.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", address.Text.Trim());
                cmd.Parameters.AddWithValue("@City", city.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact", contact.Text);
                cmd.Parameters.AddWithValue("@Hours_start", startHours.Text.Trim());
                cmd.Parameters.AddWithValue("@Hours_end", endhours.Text.Trim());
                cmd.Parameters.AddWithValue("@Website", website.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();

            }

            else if (DropDownList2.SelectedItem.Value == "vet")
            {
                SqlConnection con = new SqlConnection(strcon); //strcon is Connection String
                                                               //check if connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO veternery(Name,Address,City,Contact,Hours_start,Hours_end,Website) values(@Name,@Address,@City,@Contact,@Hours_start,@Hours_end,@Website)", con);
                cmd.Parameters.AddWithValue("@Name", name.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", address.Text.Trim());
                cmd.Parameters.AddWithValue("@City", city.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact", contact.Text);
                cmd.Parameters.AddWithValue("@Hours_start", startHours.Text.Trim());
                cmd.Parameters.AddWithValue("@Hours_end", endhours.Text.Trim());
                cmd.Parameters.AddWithValue("@Website", website.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
            }

            else if (DropDownList2.SelectedItem.Value == "Pet Overnight")
            {
                SqlConnection con = new SqlConnection(strcon); //strcon is Connection String
                                                               //check if connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO pet_nightover(Name,Address,City,Contact,Hours_start,Hours_end,Website) values(@Name,@Address,@City,@Contact,@Hours_start,@Hours_end,@Website)", con);
                cmd.Parameters.AddWithValue("@Name", name.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", address.Text.Trim());
                cmd.Parameters.AddWithValue("@City", city.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact", contact.Text);
                cmd.Parameters.AddWithValue("@Hours_start", startHours.Text.Trim());
                cmd.Parameters.AddWithValue("@Hours_end", endhours.Text.Trim());
                cmd.Parameters.AddWithValue("@Website", website.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
            }

            Response.Write("<script>alert('Successful in adding data');</script>");
            //Response.Redirect("AdminPortal.aspx");

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            addArticleContent();
        }
    }
}