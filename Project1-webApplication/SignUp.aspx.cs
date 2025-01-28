using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1_webApplication
{
    public partial class SignUp1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SignUp_btn_Click(object sender, EventArgs e)
        {
            string firstName = firstName1.Text;
            string lastName = lastName1.Text;
            string Email = email.Text;
            string password = password1.Text;
            string repeat_password = repeat_password1.Text;
            string phone = phone1.Text;

            string file = Server.MapPath("newSignUp.txt");

            // التحقق من وجود الملف وإذا لم يكن موجودًا، يتم إنشاؤه
            if (!File.Exists(file))
            {
                using (StreamWriter sw = File.CreateText(file)) ;
            }

            // التحقق من الفيلدات
            if (string.IsNullOrEmpty(firstName) || string.IsNullOrEmpty(lastName) || string.IsNullOrEmpty(Email) || string.IsNullOrEmpty(password) ||
                string.IsNullOrEmpty(repeat_password) || string.IsNullOrEmpty(phone))
            {
                lblMessage1.Text = "Please fill all fields!";
            }
            else
            {
                // إذا كانت الفيلدات مكتملة نبدأ في المعالجة
                using (StreamWriter sw = new StreamWriter(file, true))
                {
                    if (password != repeat_password)
                    {
                        lblMessage1.Text = "Passwords do not match.";
                    }
                    else
                    {
                        sw.WriteLine($"{firstName},{lastName},{Email},{password},{phone}");
                       
                        Response.Redirect("SignIn.aspx");
                    }
                }
            }
        }

    }
}
