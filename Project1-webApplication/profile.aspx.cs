using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml.Linq;

namespace Project1_webApplication
{
    public partial class profile : System.Web.UI.Page
    {
        string file = "";
        string userId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)  
            {
                userId = Request.QueryString["UserId"];


                if (!string.IsNullOrEmpty(userId))
                {
                    file = HttpContext.Current.Server.MapPath("~/newSignUp.txt");
                    if (File.Exists(file))
                    {
                        var info = File.ReadAllLines(file);
                        foreach (var item in info)
                        {
                            var line = item.Split(',');
                           

                            if (line.Length > 1 && userId.Trim() == line[0].Trim()) 
                            {
                                firstName.Text = line[1].Trim();
                               lastName.Text = line[2].Trim();
                                email.Text = line[3].Trim();
                                currentPassword1.Text = line[4].Trim();

                               
                              
                                break;
                            }
                        }
                    }
                    else
                    {
                        Response.Write("File not found!<br>");
                    }
                }
                else
                {
                    //Response.Write("No UserId provided in QueryString!<br>");
                }
            }
        }



        protected void SaveChanges_Click(object sender, EventArgs e)
        {
            file = HttpContext.Current.Server.MapPath("~/newSignUp.txt");
            userId = Request.QueryString["UserId"];

            if (File.Exists(file))
            {
                string[] info = File.ReadAllLines(file);

                for (int i = 0; i < info.Length; i++)
                {
                    string[] line = info[i].Split(',');

                    if (line.Length > 1 && userId.Trim() == line[0].Trim())
                    {
                        line[1] = firstName.Text.Trim();
                        line[2] = lastName.Text.Trim();
                        line[3] = email.Text.Trim();

                       
                        if (confirm_password.Text == new_password.Text)
                        {
                            line[4] = confirm_password.Text.Trim();
                        }
                        else
                        {
                           
                            lblMessage.Text = "Password doesn't match!";
                            lblMessage.CssClass = "text-danger";
                            return; 
                        }

                 
                        info[i] = $"{line[0]},{line[1]},{line[2]},{line[3]},{line[4]},{line[5]}";
                        break;
                    }
                }

              
                using (StreamWriter writer = new StreamWriter(file, false))
                {
                    foreach (string line in info)
                    {
                        writer.WriteLine(line);
                    }
                }

                lblMessage.Text = "Edit data successful!";
                lblMessage.CssClass = "text-success";
            }
            else
            {
                lblMessage.Text = "File not found!";
                lblMessage.CssClass = "text-danger";
            }
        }

        protected void signOutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("signIn.aspx");
        }
    }
}