﻿using System;
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
    public partial class adminprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from admin_table where username='" + username.Text.Trim() + "' AND password='" + password.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Successful login');</script>");
                        Session["username"] = dr.GetValue(0).ToString();
                        Session["fullname"] = dr.GetValue(2).ToString();
                        Session["role"] = "admin";
                    }
                    Response.Redirect("AdminPortal.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
  
    }
}