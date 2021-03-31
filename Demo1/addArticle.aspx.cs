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
    public partial class addArticle : System.Web.UI.Page
    { 
        static int n = 0;

        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('" + title.Text.Trim() + DropDownList2.SelectedItem.Value + content.Text.Trim() + TextBox1.Text.Trim() + TextBox2.Text.Trim() + "');</script>");

            /*str = TextBox1.Text.Trim() + "" + TextBox2.Text.Trim();

            //Response.Write("<script>alert('" + str  +"');</script>");
            view.InnerText = str;*/

            addArticleContent();

        }

        void addArticleContent()
        {
            if (DropDownList2.SelectedItem.Value == "Pet Grooming")
            {
                SqlConnection con = new SqlConnection(strcon); //strcon is Connection String
                                                               //check if connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO petgroom(title,intro_para,para1,para2) values(@title,@intro_para,@para1,@para2)", con);
                cmd.Parameters.AddWithValue("@title", title.Text.Trim());
                cmd.Parameters.AddWithValue("@intro_para", content.Text.Trim());
                cmd.Parameters.AddWithValue("@para1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@para2", TextBox2.Text);
                cmd.ExecuteNonQuery();
                con.Close();

            }

            else if (DropDownList2.SelectedItem.Value == "Nutrition")
            {
                SqlConnection con = new SqlConnection(strcon); //strcon is Connection String
                                                               //check if connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO petNutrition(title,intro_para,para1,para2) values(@title,@intro_para,@para1,@para2)", con);
                cmd.Parameters.AddWithValue("@title", title.Text.Trim());
                cmd.Parameters.AddWithValue("@intro_para", content.Text.Trim());
                cmd.Parameters.AddWithValue("@para1", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@para2", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
            }

            else if (DropDownList2.SelectedItem.Value == "Pet Training")
            {
                SqlConnection con = new SqlConnection(strcon); //strcon is Connection String
                                                               //check if connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO petTraining(title,intro_para,para1,para2) values(@title,@intro_para,@para1,@para2)", con);
                cmd.Parameters.AddWithValue("@title", title.Text.Trim());
                cmd.Parameters.AddWithValue("@intro_para", content.Text.Trim());
                cmd.Parameters.AddWithValue("@para1", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@para2", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
            }

            Response.Write("<script>alert('Successful in adding data');</script>");
            //Response.Redirect("AdminPortal.aspx");
           
        }

        protected void AddContent_Click(object sender, EventArgs e)
        {
            if (n == 0)
            {
                TextBox1.Visible = true;
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
            if (n == 1)
            {
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                TextBox2.Text = "";
            }
            n++;
            if (n == 2)
                n = 0;

        }

    }
}