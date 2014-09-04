using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Registration : System.Web.UI.Page
{
    int result, sum;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dataload();
        }
        setquestion();
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (TxtFirstName.Text == "" || txtLocation.Text == "" || TxtEmail.Text == "" || Txtmobile.Text == "" || txtCaptcha.Text == "" || ddl_bloodgroup.SelectedIndex == 0 || ddl_district.SelectedIndex == 0)
        {
            lblResult.Text = "Please fill all information";
        }
        else
        {
            if (Txtmobile.Text.Length != 10)
            {
                lblResult.Text = "Please Enter Mobile Number";
            }
            else
            {
                bool chk = true;
                char[] numb= (Txtmobile.Text).ToCharArray(); 
                int i=0;
                foreach (char a in numb)
                {
                    if (numb[i] != '0' && numb[i] != '1' && numb[i] != '2' && numb[i] != '3' && numb[i] != '4' && numb[i] != '5' && numb[i] != '6' && numb[i] != '7' && numb[i] != '8' && numb[i] != '9')
                    {
                        chk = false;
                        lblResult.Text = "Mobile Number not valid";
                    }
                }
                if (chk == true)
                {
                    if (result != int.Parse(txtCaptcha.Text))
                    {
                        lblResult.Text = "Incorrect Calculation Value";
                    }
                    else
                    {
                        CreateMembership();
                    }
                }

            }
        }

        
    }
    public void dataload()
    {
        ddl_bloodgroup.DataSource = BLLBloodGroup.GetAllBloodGroup();
        ddl_bloodgroup.DataTextField = "BloodGroup";
        ddl_bloodgroup.DataValueField= "BloodGroupID";
        ddl_bloodgroup.DataBind();
        ddl_bloodgroup.Items.Insert(0, "Blood Type");


        ddl_district.DataSource = BLLDistrict.GetAllDistrict();
        ddl_district.DataTextField = "DistrictName";
        ddl_district.DataValueField = "DistrictID";
        ddl_district.DataBind();
        ddl_district.Items.Insert(0, "Choose District");

        //ddl_location.DataSource = BloodGroupAndLocation.Location();
        //ddl_location.DataTextField = "LocationName";
        //ddl_location.DataBind();
        //ddl_location.Items.Insert(0, "Choose Location");

        //gv_search.DataSource = ds;
        //gv_search.DataBind();
        
    }

    protected void CreateMembership()
    {
        MembershipCreateStatus _status;

        var user = Membership.CreateUser(Txtmobile.Text,"RaktadataA1!" + "A!#", TxtEmail.Text, null, null, true, out _status);
        switch (_status)
        {
            case MembershipCreateStatus.Success:

                Roles.AddUserToRole(Txtmobile.Text, "Members");
                CreateMembers();
                Session["UserName"] = Txtmobile.Text;
                pnlRegister.Visible = false;
                pnlsuccesful.Visible = true;
                break;
            case MembershipCreateStatus.DuplicateUserName:
                lblResult.Text = "The Mobile Number already Registered";
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

    protected void CreateMembers()
    {
        MemberInfo _member = new MemberInfo();
        _member.FullName = TxtFirstName.Text;
        _member.MobileNo = Txtmobile.Text;
        _member.Email = TxtEmail.Text;
        _member.CurrentAddress = txtLocation.Text;
        _member.BloodGroupId = int.Parse(ddl_bloodgroup.SelectedItem.Value);
        _member.DistrictID = int.Parse(ddl_district.SelectedItem.Value);

        BLLUser.CreateUser(_member);
    }

    protected void setquestion()
    {
        Random rnd = new Random();
        int numb1 = rnd.Next(1, 10);
        int numb2 = rnd.Next(1, numb1);
        int Calc = rnd.Next(1, 3);
        if (Calc == 1)
        {
            lblCaptcha.Text=string.Format("what is the Result of {0} + {1} = ", numb1, numb2);
            result = numb1 + numb2;
        }
        else
        {
            lblCaptcha.Text = string.Format("what is the Result of {0} - {1} = ", numb1, numb2);
            result = numb1 - numb2;
        }
    }

    

}