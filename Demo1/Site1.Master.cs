using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try{
                if (Session["role"].Equals(""))
                {
                    UserLogin.Visible = true; // user login link button
                    SignUp.Visible = true; // sign up link button

                    Logout.Visible = false; // logout link button
                    UserProfile.Visible = false; // hello user link button


                    AdminLogin.Visible = true; // admin login link button
                    AdminPortal.Visible = false; // admin portal link button



                }
                else if (Session["role"].Equals("user"))
                {
                    UserLogin.Visible = false; // user login link button
                    SignUp.Visible = false; // sign up link button

                    Logout.Visible = true; // logout link button
                    UserProfile.Visible = true; // hello user link button
                    UserProfile.Text = "Hello " + Session["username"].ToString();


                    AdminLogin.Visible = true; // admin login link button
                    AdminPortal.Visible = false; // admin portal link button

                }
                else if (Session["role"].Equals("admin"))
                {
                    UserLogin.Visible = false; // user login link button
                    SignUp.Visible = false; // sign up link button

                    Logout.Visible = true; // logout link button
                    UserProfile.Visible = true; // hello user link button
                    UserProfile.Text = "Hello Admin";


                    AdminLogin.Visible = false; // admin login link button
                    AdminPortal.Visible = true; // admin portal link button
                }
            }
            catch (Exception ex)
            {
                //
            }

        }

        protected void AdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminprofile.aspx");
        }
        protected void AdminPortal_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPortal.aspx");
        }
        protected void UserLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";

            UserLogin.Visible = true; // user login link button
            SignUp.Visible = true; // sign up link button

            Logout.Visible = false; // logout link button
            UserProfile.Visible = false; // hello user link button

            AdminLogin.Visible = true; // admin login link button
            AdminPortal.Visible = false; // admin portal link button

            Response.Redirect("homepage.aspx");
        }

        protected void UserProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

    }
}