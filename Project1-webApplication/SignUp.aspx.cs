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

            // التأكد من أن الملف موجود، إذا لم يكن، سيتم إنشاؤه
            if (!File.Exists(file))
            {
                using (StreamWriter sw = File.CreateText(file)) ;
            }

            // التأكد من أن جميع الحقول مملوءة
            if (string.IsNullOrEmpty(firstName) || string.IsNullOrEmpty(lastName) || string.IsNullOrEmpty(Email) || string.IsNullOrEmpty(password) ||
                string.IsNullOrEmpty(repeat_password) || string.IsNullOrEmpty(phone))
            {
                lblMessage1.Text = "Please fill all fields!";
            }
            else
            {
                // إذا كانت كلمة المرور لا تطابق
                if (password != repeat_password)
                {
                    lblMessage1.Text = "Passwords do not match.";
                }
                else
                {
                    // توليد GUID كمعرف فريد للمستخدم
                    string userId = Guid.NewGuid().ToString();

                    // حفظ البيانات مع الـ User ID في الملف النصي
                    using (StreamWriter sw = new StreamWriter(file, true))
                    {
                        sw.WriteLine($"{userId},{firstName},{lastName},{Email},{password},{phone}");
                    }

                    // إعادة التوجيه إلى صفحة تسجيل الدخول بعد النجاح
                    Response.Redirect("SignIn.aspx");
                }
            }
        }



    }
}
