using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Login_Click(object sender, EventArgs e)
    {
     
            if (Membership.ValidateUser(txtUsername.Text, txtPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
                Session["UserName"] = txtUsername.Text;
              Response.Redirect("/user/UserProfile.aspx");
           }
        
    }
}