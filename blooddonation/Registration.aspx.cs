﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dataload();
           
        }
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
                lblResult.Text = "Please Enter Valid Mobile Number";
            }
            else
            {
                bool chk = true;
                try
                {
                    int.Parse(Txtmobile.Text);
                }
                catch
                {
                    lblResult.Text = "Please Enter Valid Mobile Number";
                    chk = false;
                }
                if (chk == true)
                {
                    CreateMembers();
                    CreateMembership();
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
                Response.Write("<script langauge='javascript'>windows.conform('Regesterd Succesfully!!!')</scritp>");
                lblResult.Text = "Donar Registered";
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

}