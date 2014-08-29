using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Web.Security;




public partial class MasterPage : System.Web.UI.MasterPage
{
        
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindsearch();
            bindregister();

       }

    }

  

    protected void btn_search_Click(object sender, EventArgs e)
    {
        int BloodId = ddl_bloodgroup.SelectedIndex;
        int DistrictID = ddl_location.SelectedIndex;
        if (BloodId != 0 && DistrictID != 0)
        {
            
            Response.Redirect("DonarList.aspx?District=" + DistrictID + "&BloodGroup=" + BloodId);
        }
        else
        {
            Response.Redirect("DonarList.aspx?District=" + 0 + "&BloodGroup=" + 0);
        }
        
        
        
       
        
    }

    public void bindsearch()
    {
        ddl_bloodgroup.DataSource = BLLBloodGroup.GetAllBloodGroup();
        ddl_bloodgroup.DataTextField = "BloodGroup";
        ddl_bloodgroup.DataValueField = "BloodGroupID";
        ddl_bloodgroup.DataBind();
        ddl_bloodgroup.Items.Insert(0, "--Choose Blood Group--");

        ddl_location.DataSource = BLLDistrict.GetAllDistrict();
        ddl_location.DataTextField = "DistrictName";
        ddl_location.DataValueField = "DistrictID";
        ddl_location.DataBind();
        ddl_location.Items.Insert(0, "--Choose District--");
    }

    //Log in starts
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
        
        if (Membership.ValidateUser(txtUsername.Text, txtPassword.Text + "A!#"))
        {
            FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
            Session["UserName"] = txtUsername.Text;
            //lblScuccessLin.Text = "Logined";
            Response.Redirect("~/User/UserProfile.aspx");
        }
        else
        {
            lblMessage.Text = "Invalid Password";
        }

    }





    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        MembershipCreateStatus _status;

        var user = Membership.CreateUser(Txtmobile.Text, TxtPasswordSignUp.Text + "A!#", TxtEmail.Text, null, null, true, out _status);
        switch (_status)
        {
            case MembershipCreateStatus.Success:

                Roles.AddUserToRole(Txtmobile.Text, "Members");
                CreateMembers();
                Session["UserName"] = Txtmobile.Text;
                Response.Redirect("~/User/Registration_2.aspx");
                break;
            case MembershipCreateStatus.DuplicateUserName:
                lblResult.Text = "The username already exists";
                break;
            case MembershipCreateStatus.InvalidEmail:
                lblResult.Text = "The email entered is invalid";
                break;
            case MembershipCreateStatus.DuplicateEmail:
                lblResult.Text = "The email is already in use";
                break;
            case MembershipCreateStatus.InvalidPassword:
                lblResult.Text = "The pasword must contain atleast 6 words, one Capital Letter and one Character";
                break;
            default:
                lblResult.Text = "Some error occured";
                break;
        }
    }

    //created member in member table
    protected void CreateMembers()
    {
        MemberInfo _member = new MemberInfo();
        _member.FullName = TxtFirstName.Text;
        _member.MobileNo = Txtmobile.Text;
        _member.Email = TxtEmail.Text;
        _member.CurrentAddress = txtLocation.Text;
        _member.BloodGroupId = int.Parse(ddl_bloodgroupREG.SelectedItem.Value);
        _member.DistrictID = int.Parse(ddl_districtREG.SelectedItem.Value);

        BLLUser.CreateUser(_member);
    }

    //register data bind
    public void bindregister()
    {
        ddl_bloodgroupREG.DataSource = BLLBloodGroup.GetAllBloodGroup();
        ddl_bloodgroupREG.DataTextField = "BloodGroup";
        ddl_bloodgroupREG.DataValueField = "BloodGroupID";
        ddl_bloodgroupREG.DataBind();
        ddl_bloodgroupREG.Items.Insert(0, "--Choose Blood Group--");

        
        ddl_districtREG.DataSource = BLLDistrict.GetAllDistrict();
        ddl_districtREG.DataTextField = "DistrictName";
        ddl_districtREG.DataValueField = "DistrictID";
        ddl_districtREG.DataBind();
        ddl_districtREG.Items.Insert(0, "--Choose District--");

        

    }


   
}

    