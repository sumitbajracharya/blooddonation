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
        MembershipCreateStatus _status;

        var user = Membership.CreateUser(Txtmobile.Text, TxtPassword.Text, TxtEmail.Text, null, null, false, out _status);
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
    public void dataload()
    {
        ddl_bloodgroup.DataSource = BloodGroupAndLocation.BloodGroup();
        ddl_bloodgroup.DataTextField = "BloodGroup";
        ddl_bloodgroup.DataBind();
        ddl_bloodgroup.Items.Insert(0, "Blood Type");


        ddl_location.DataSource = BLLLocation.GetAllLocation();
        ddl_location.DataTextField = "LocationName";
        ddl_location.DataBind();
        ddl_location.Items.Insert(0, "Choose Location");

        //ddl_location.DataSource = BloodGroupAndLocation.Location();
        //ddl_location.DataTextField = "LocationName";
        //ddl_location.DataBind();
        //ddl_location.Items.Insert(0, "Choose Location");

        //gv_search.DataSource = ds;
        //gv_search.DataBind();
    }

    protected void CreateMembers()
    {
        MemberInfo _member = new MemberInfo();
        _member.FullName = TxtFirstName.Text;
        _member.MobileNo = Txtmobile.Text;
        _member.Email = TxtEmail.Text;
        _member.BloodGroupId = ddl_bloodgroup.SelectedIndex;
        _member.CurrentAddress = ddl_location.SelectedIndex;


        BLLUser.CreateUser(_member);

    }
}