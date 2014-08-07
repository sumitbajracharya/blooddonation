using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Registration_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        MemberInfo _member = new MemberInfo();
        _member.PermanentAddress = txtPermanentAddress.Text;
        _member.CurrentAddress = txtCurrentAddress.Text;
        _member.BestTime = ddlBestTimeToContact.SelectedValue;
        _member.DOB=;
        _member.LastDonationDate=;
        _member.MobileNo= txtPhoneNumber.Text;
        _member.ProfilePicture= fuProfilePicture.FileName;
        fuProfilePicture.PostedFile.SaveAs(Server.MapPath("../Assets/Images/users/" + _member.ProfilePicture));
         _member.BloodDonationCardSnapshot= fuBloodGroupCard.FileName; 
         fuBloodGroupCard.PostedFile.SaveAs(Server.MapPath("../Assets/Images/Cards/" + _member.BloodDonationCardSnapshot));



        BLLUser.CreateUser2(_member);
    }
}