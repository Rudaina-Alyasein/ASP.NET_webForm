using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1_webApplication
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUpBtnContainer_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");

        }
        protected void signInBtnContainer_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");

        }
    }
}