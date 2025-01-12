﻿using System;
using System.Collections.Generic;
using System.Configuration; //for ConfigurationManager
using System.Data; //for ConnectionState
using System.Data.SqlClient; //for SqlConnection
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo1
{
    public partial class signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //sign up button event
        protected void Submit2_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {

                Response.Write("<script>alert('User Already Exist with this Username, try other username');</script>");
            }
            else
            {
                signUpNewUser();
            }

        }

        // user defined method
    bool checkUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from user_info where username='" + username.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable(); //temp storage
                da.Fill(dt);  //dt is table data got after firing query
                if (dt.Rows.Count >= 1)  //if there are more than 1 data available with same username
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

    void signUpNewUser()
        {
            Response.Write("<script>alert('Thanks For Signing In');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon); //strcon is Connection String
                //check if connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO user_info(fullname,contact,email,address,state,city,username,password) values(@fullname,@contact,@email,@address,@state,@city,@username,@password)", con);
                cmd.Parameters.AddWithValue("@fullname", fullname.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", contact.Text.Trim());
                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                cmd.Parameters.AddWithValue("@address", address.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", city.Text.Trim());
                cmd.Parameters.AddWithValue("@username", username.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}