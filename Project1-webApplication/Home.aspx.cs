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
            if (!IsPostBack)
            {
                string userId = Request.QueryString["UserId"]; 
                if (!string.IsNullOrEmpty(userId))
                {
                    profileLink.HRef = "Profile.aspx?UserId=" + userId; 
                }
                else
                {
                    profileLink.HRef = "SignIn.aspx"; 
                }
            }
        }

        protected void signUpBtnContainer_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");

        }
        protected void signInBtnContainer_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");

        }
        protected void Profile_click(object sender, EventArgs e)
        {
            Response.Redirect("profile.aspx");
        }

    }
}