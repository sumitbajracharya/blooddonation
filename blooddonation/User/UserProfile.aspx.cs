using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            string name = Session["UserName"].ToString();

            MemberInfo Member = BLLUser.GetMemberByUserName(name);

            ImgProfilePicture.ImageUrl = string.Format("../Assets/Images/UserImage/ProfilePicture/" + Member.ProfilePicture);
            lblName.Text = string.Format(Member.FullName);
           
            lblBestTime.Text = Member.BestTime;
            lblBloodGroup.Text = BLLBloodGroup.GetBloodGroupByID(Member.BloodGroupId);
            if(Member.DOB.Date==DateTime.Now.Date)
                lblDOB.Text = "Not Avilable";
            else
                lblDOB.Text = (Member.DOB).ToString();
            lblGender.Text= Member.Gender;
            LblMobile.Text = Member.MobileNo;
            lblEmail.Text = Member.Email;
            lblPhone.Text = Member.PhoneNo;
        }
    }
}