using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1_webApplication
{
    public partial class SignIn : System.Web.UI.Page
    {
        private const string adminEmail = "rudaina@example.com";
        private const string adminPassword = "rudaina123";
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void Login_btn_Click(object sender, EventArgs e)
        {
            string Email = Email3.Text;
            string password = password3.Text;

            if (string.IsNullOrEmpty(Email) || string.IsNullOrEmpty(password))
            {
                lblLoginMessage2.Text = "Please fill in both fields.";
                return;
            }


            if (Email == adminEmail && password == adminPassword)
            {
                lblLoginMessage2.Text = "Admin login successful!";
                Response.Redirect("AdminPage.aspx");
                return;
            }


            string file = Server.MapPath("newSignUp.txt");
            bool loginSuccessful = false;
            string userID = "";

            foreach (var line in File.ReadLines(file))
            {
                var parts = line.Split(',');
                if (parts.Length == 6)
                {
                     userID = parts[0];
                    string storedEmail = parts[3];
                    string storedPassword = parts[4];


                    if (storedEmail == Email && storedPassword == password)
                    {
                        loginSuccessful = true;
                        break;
                    }
                }
            }

            if (loginSuccessful)
            {

             
                Response.Redirect($"home.aspx?UserId={userID}");

            }

            else
            {
                lblLoginMessage2.Text = "Invalid username or password.";
            }

        }

    }
}