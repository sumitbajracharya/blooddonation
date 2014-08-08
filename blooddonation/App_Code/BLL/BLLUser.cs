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

    // create user from first page
    public static void CreateUser(MemberInfo _User)
    {
        string sp = "Usp_Member_Create";
        SqlConnection con = ConnectionHelper.GetConnection();
        SqlCommand cmd = new SqlCommand(sp, con);
        cmd.Parameters.Add(new SqlParameter("@firstname", _User.FirstName));
        cmd.Parameters.Add(new SqlParameter("@lastname", _User.LastName));
        cmd.Parameters.Add(new SqlParameter("@username", _User.UserName));
        cmd.Parameters.Add(new SqlParameter("@bloodgroupid", _User.BloodGroupId));
        cmd.Parameters.Add(new SqlParameter("@mobilenumber", _User.MobileNo));
        cmd.Parameters.Add(new SqlParameter("@email", _User.Email));
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }


    // create user from second regestration page page
    public static void CreateUser2(MemberInfo _User)
    {
        string sp = "Usp_Member_CreateUpdate";
        SqlConnection con = ConnectionHelper.GetConnection();
        SqlCommand cmd = new SqlCommand(sp, con);
        cmd.Parameters.Add(new SqlParameter("@username", _User.UserName));
        cmd.Parameters.Add(new SqlParameter("@PermanentAddress", _User.PermanentAddress));
        cmd.Parameters.Add(new SqlParameter("@DOB", _User.DOB));
        cmd.Parameters.Add(new SqlParameter("@PhoneNumber", _User.PhoneNo));
        cmd.Parameters.Add(new SqlParameter("@CurrentAddress", _User.CurrentAddress));
        cmd.Parameters.Add(new SqlParameter("@Gender", _User.Gender));
        cmd.Parameters.Add(new SqlParameter("@LastDonationDate", _User.LastDonationDate));
        cmd.Parameters.Add(new SqlParameter("@BestTime", _User.BestTime));
        cmd.Parameters.Add(new SqlParameter("@BloodDonationCardSnapshots", _User.BloodDonationCardSnapshot));
        cmd.Parameters.Add(new SqlParameter("@ProfilePicture", _User.ProfilePicture));
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }


    // get all users Info
    public static List<MemberInfo> GetAllMembers()
    {
        using (SqlConnection con = ConnectionHelper.GetConnection())
        {
            string Sp = "Usp_get_DonersByLnBG";
            SqlCommand cmd = new SqlCommand(Sp, con);
            List<MemberInfo> lstmembers = new List<MemberInfo>();
            using (SqlDataReader _reader = cmd.ExecuteReader())
            {
                while (_reader.Read())
                {
                    lstmembers.Add(new MemberInfo
                    {
                        MemberId = int.Parse(_reader["DonarID"].ToString()),
                        FirstName = _reader["FirstName"].ToString(),
                        LastName = _reader["LastName"].ToString(),
                        UserName = _reader["UserName"].ToString(),
                        PermanentAddress = _reader[""].ToString(),
                        CurrentAddress = int.Parse(_reader["CurrentAddress"].ToString()),
                        DOB = Convert.ToDateTime(_reader["DOB"]),
                        BloodGroupId = int.Parse(_reader["BloodGroupID"].ToString()),
                        Gender = _reader["Gender"].ToString(),
                        LastDonationDate = Convert.ToDateTime(_reader["LastDonationDate"]),
                        BestTime = _reader["BestTime"].ToString(),
                        MobileNo = _reader["MobileNumber"].ToString(),
                        PhoneNo = _reader["PhoneNumber"].ToString(),
                        Email = _reader["Email"].ToString(),
                        BloodDonationCardSnapshot = _reader["BloodDonationCardSnapshots"].ToString(),
                        DonorStatus = bool.Parse(_reader["DonorStatus"].ToString()),
                        AccountStatus = bool.Parse(_reader["AccountStatus"].ToString()),
                        RoleId = bool.Parse(_reader["RoleID"].ToString()),
                        ProfilePicture = _reader["ProfilePicture"].ToString(),
                    });
                }
            }
            return (lstmembers);
        }        
    }


    //get users by Location and blood Group
    public static List<MemberInfo> GetDonarByLocationAndBloodGroup(int LocationID, int BloodGroupID )
    {
        List<MemberInfo> lstMembers = new List<MemberInfo>();
        foreach (MemberInfo _Member in GetAllMembers())
        {
            if (_Member.BloodGroupId == BloodGroupID && _Member.CurrentAddress == LocationID)
            {
                lstMembers.Add(_Member);
            }
        }
        return lstMembers;
    }

}