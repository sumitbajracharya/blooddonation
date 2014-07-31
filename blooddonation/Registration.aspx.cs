﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Registration : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        MembershipCreateStatus _status;

        var user = Membership.CreateUser(TxtUserName.Text, TxtPassword.Text,TxtEmail.Text, null, null, false, out _status);
        switch (_status)
        {
            case MembershipCreateStatus.Success:

                Roles.AddUserToRole(TxtUserName.Text, "Members");
                CreateMembers();
                lblResult.Text = "User CreatedUser Succesfully Created";
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

    protected void CreateMembers()
    {
        MemberInfo _member = new MemberInfo();
        _member.FirstName = TxtFirstName.Text;
        _member.LastName = TxtLastName.Text;
        _member.MobileNo = Txtmobile.Text;
        _member.Email = TxtEmail.Text;
        _member.BloodGroupId = Ddlbloodgroup.SelectedIndex;
        _member.UserName = TxtUserName.Text;

        BLLUser.CreateUser(_member);

    }
}