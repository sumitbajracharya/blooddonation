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
        try
        {
            if (Membership.GetUser(txtUsername.Text).IsApproved == true)
            {
                login();
            }
            else if (Membership.GetUser(txtUsername.Text).IsApproved == false)
            {
                lblMessage.Text = "User Not Activated";
            }
        }
        catch (System.NullReferenceException)
        {
            lblMessage.Text = "Invalid UserName";
        }
    }

    protected void login()
    {
       if (Membership.ValidateUser(txtUsername.Text, txtPassword.Text+"A!#"))
       {
           FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
           Session["UserName"] = txtUsername.Text;
           Response.Redirect("~/User/UserProfile.aspx");
       }
        else
        {
            lblMessage.Text = "Invalid Password";
        }

    }
}
