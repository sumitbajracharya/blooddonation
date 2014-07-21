using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLUser
/// </summary>
public class BLLUser
{
	public BLLUser()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void CreateUser (MemberInfo _User)
    {
        SqlParameter[] param=new SqlParameter[]
        {
            
            new SqlParameter("@firstname",_User.FirstName),
            new SqlParameter("@lastname",_User.LastName),
            new SqlParameter("@username",_User.UserName),
            new SqlParameter("@password",_User.Password),
            new SqlParameter("@permanentaddress",_User.PermanentAddress),
            new SqlParameter("@currentaddress",_User.CurrentAddress),
            new SqlParameter("@dob",_User.DOB),
            new SqlParameter("@bloodgroupid",_User.BloodGroupId),
            new SqlParameter("@gender",_User.Gender),
            new SqlParameter("@lastdonationdate",_User.LastDonationDate),
            new SqlParameter("@besttime",_User.BestTime),
            new SqlParameter("@mobilenumber",_User.MobileNo),
            new SqlParameter("@phonenumber",_User.PhoneNo),
            new SqlParameter("@email",_User.Email),
            new SqlParameter("@blooddonationcardsnapshot",_User.BloodDonationCardSnapshot),
            new SqlParameter("@accountstatus",_User.AccountStatus),
            new SqlParameter("@roleid",_User.RoleId),
            new SqlParameter("@profilepicture",_User.ProfilePicture)
        };

        ConnectionHelper.ExecuteProcedure("insert into TblMembers", param);
      }
}