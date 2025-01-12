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
    public partial class LoginPage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //user login
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //string Password = Page.Request.Form["_password"].ToString();
                SqlCommand cmd = new SqlCommand("select * from user_info where username COLLATE SQL_Latin1_General_CP1_CS_AS like '" + username.Text.Trim() + "' AND password COLLATE SQL_Latin1_General_CP1_CS_AS like '" + password.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Successful Login');</script>");
                        Session["username"] = dr.GetValue(6).ToString();
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                    }
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                    //Console.WriteLine(Password);
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex+"');</script>");
                //Console.WriteLine(ex);
                
            }
        }

    }
}