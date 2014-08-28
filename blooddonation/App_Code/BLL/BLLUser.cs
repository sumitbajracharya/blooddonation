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
        cmd.Parameters.Add(new SqlParameter("@fullname", _User.FullName));
        cmd.Parameters.Add(new SqlParameter("@bloodgroupid", _User.BloodGroupId));
        cmd.Parameters.Add(new SqlParameter("@mobilenumber", _User.MobileNo));
        cmd.Parameters.Add(new SqlParameter("@email", _User.Email));
        cmd.Parameters.Add(new SqlParameter("@currentaddress", _User.CurrentAddress));
        cmd.Parameters.Add(new SqlParameter("@currentdistrict", _User.DistrictID));
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


    // get user name from phone number
    public static string GetFullNameByNumber(string Mobile)
    {

        MemberInfo _member = new MemberInfo();

        String sp = "Usp_GetMemeberbyMobile";


        SqlConnection Con = ConnectionHelper.GetConnection();

        SqlCommand cmd = new SqlCommand(sp, Con);
        cmd.Parameters.Add(new SqlParameter("@mobile", Mobile));
        cmd.CommandType = CommandType.StoredProcedure;
        using (SqlDataReader _reader = cmd.ExecuteReader())
        {
            _reader.Read();

            _member.FullName = _reader["FullName"].ToString();
        }
        return _member.FullName;
    }

    // create user from second regestration page page
    public static void CreateUser2(MemberInfo _User)
    {
        string sp = "Usp_Member_CreateUpdate";
        SqlConnection con = ConnectionHelper.GetConnection();
        SqlCommand cmd = new SqlCommand(sp, con);
        cmd.Parameters.Add(new SqlParameter("@Email", _User.Email));
        cmd.Parameters.Add(new SqlParameter("@DOB", _User.DOB));
        cmd.Parameters.Add(new SqlParameter("@PhoneNumber", _User.PhoneNo));
        cmd.Parameters.Add(new SqlParameter("@CurrentAddress", _User.CurrentAddress));
        cmd.Parameters.Add(new SqlParameter("@Gender", _User.Gender));
        cmd.Parameters.Add(new SqlParameter("@BestTime", _User.BestTime));
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
        List<MemberInfo> lstmembers = new List<MemberInfo>();
        using (SqlConnection con = ConnectionHelper.GetConnection())
        {
            string Sp = "usp_get_allmember";
            SqlCommand cmd = new SqlCommand(Sp, con);
            cmd.CommandType = CommandType.StoredProcedure;
            using (SqlDataReader _reader = cmd.ExecuteReader())
            {
                while (_reader.Read())
                {
                    lstmembers.Add(new MemberInfo
                    {
                        MemberId = int.Parse(_reader["DonarID"].ToString()),
                        FullName = _reader["FullName"].ToString(),
                        CurrentAddress = _reader["CurrentAddress"].ToString(),
                        DOB = Convert.ToDateTime(_reader["DOB"]),
                        BloodGroupId = int.Parse(_reader["BloodGroupID"].ToString()),
                        Gender = _reader["Gender"].ToString(),
                        BestTime = _reader["BestTime"].ToString(),
                        MobileNo = _reader["MobileNumber"].ToString(),
                        PhoneNo = _reader["PhoneNumber"].ToString(),
                        Email = _reader["Email"].ToString(),
                        AccountStatus = bool.Parse(_reader["AccountStatus"].ToString()),
                        RoleId = bool.Parse(_reader["RoleID"].ToString()),
                        ProfilePicture = _reader["ProfilePicture"].ToString(),
                    });
                }
            }
        }
        return (lstmembers);
        }        
    

    public static List<MemberInfo> GetDeactiveMembers()
    {
        using (SqlConnection con = ConnectionHelper.GetConnection())
        {
            string Sp = "Usp_GetDeactiveMemeber";
            SqlCommand cmd = new SqlCommand(Sp, con);
            List<MemberInfo> lstmembers = new List<MemberInfo>();
            cmd.CommandType = CommandType.StoredProcedure;
            using (SqlDataReader _reader = cmd.ExecuteReader())
            {
                while (_reader.Read())
                {
                    lstmembers.Add(new MemberInfo
                    {
                        MemberId = int.Parse(_reader["DonarID"].ToString()),
                        FullName = _reader["FirstName"].ToString(),
                        CurrentAddress =_reader["CurrentAddress"].ToString(),
                        DOB = Convert.ToDateTime(_reader["DOB"]),
                        BloodGroupId = int.Parse(_reader["BloodGroupID"].ToString()),
                        Gender = _reader["Gender"].ToString(),
                        BestTime = _reader["BestTime"].ToString(),
                        MobileNo = _reader["MobileNumber"].ToString(),
                        PhoneNo = _reader["PhoneNumber"].ToString(),
                        Email = _reader["Email"].ToString(),
                        ProfilePicture = _reader["ProfilePicture"].ToString(),
                    });
                }
            }
            return (lstmembers);
        }
    }

    public static MemberInfo GetMemberByUserName(string Mobile)
    {

        MemberInfo _member = new MemberInfo();

        String sp = "Usp_GetMemeberbyMobile";


        SqlConnection Con = ConnectionHelper.GetConnection();

        SqlCommand cmd = new SqlCommand(sp, Con);
        cmd.Parameters.Add(new SqlParameter("@mobile", Mobile));
        cmd.CommandType = CommandType.StoredProcedure;
        using (SqlDataReader _reader = cmd.ExecuteReader())
        {
            _reader.Read();
            
            _member.MemberId = int.Parse(_reader["DonarID"].ToString());
            
            _member.FullName = _reader["FullName"].ToString();
            
            _member.CurrentAddress = _reader["CurrentAddress"].ToString();

            if (_reader["DOB"] != DBNull.Value)
            {
                _member.DOB = Convert.ToDateTime(_reader["DOB"]);
            }
            else
                _member.DOB = DateTime.Now;
            
            _member.BloodGroupId = int.Parse(_reader["BloodGroupID"].ToString());

            if (_reader["Gender"] != DBNull.Value)
                _member.Gender = _reader["Gender"].ToString();
            else
                _member.Gender = "No Information Avilable";

            if (_reader["BestTime"] != DBNull.Value)
                _member.BestTime = _reader["BestTime"].ToString();
            else
                _member.BestTime = "No Information Avilable";
            
            
            _member.MobileNo = _reader["MobileNumber"].ToString();

            if (_reader["PhoneNumber"] != DBNull.Value)
                _member.PhoneNo = _reader["PhoneNumber"].ToString();
            else
                _member.PhoneNo = "No Information Avilable";
            
            
            _member.Email = _reader["Email"].ToString();

            if (_reader["ProfilePicture"] != DBNull.Value)
                _member.ProfilePicture = _reader["ProfilePicture"].ToString();
            else
                _member.ProfilePicture = "NotAvailable.jpg";
            
        }
        return _member;
    }


    // Get user from userID
    public static MemberInfo GetMemberByUserID(int UserID)
    {


        MemberInfo _member = new MemberInfo();

        String sp = "Usp_GetMemeberbyID";


        SqlConnection Con = ConnectionHelper.GetConnection();

        SqlCommand cmd = new SqlCommand(sp, Con);
        cmd.Parameters.Add(new SqlParameter("@userid", UserID));
        cmd.CommandType = CommandType.StoredProcedure;
        using (SqlDataReader _reader = cmd.ExecuteReader())
        {
            _reader.Read();
            _member.MemberId = int.Parse(_reader["DonarID"].ToString());
            _member.FullName = _reader["FirstName"].ToString();
            _member.CurrentAddress = _reader["CurrentAddress"].ToString();
            _member.DistrictID = int.Parse(_reader["CurrentDistrict"].ToString());
            _member.DOB = Convert.ToDateTime(_reader["DOB"]);
            _member.BloodGroupId = int.Parse(_reader["BloodGroupID"].ToString());
            _member.Gender = _reader["Gender"].ToString();
            _member.BestTime = _reader["BestTime"].ToString();
            _member.MobileNo = _reader["MobileNumber"].ToString();
            _member.PhoneNo = _reader["PhoneNumber"].ToString();
            _member.Email = _reader["Email"].ToString();
            _member.RoleId = bool.Parse(_reader["RoleID"].ToString());
            _member.ProfilePicture = _reader["ProfilePicture"].ToString();
        }
        return _member;
    }


    //get all members by DistrictID and BloodGroup ID
    public static DataTable GetDonorByDistrictAndBloodGroup(int DistrictID, int BloodGroupID)
    {
        String sp = "Usp_GetMemeberbyDistrictBloodGroup";
        SqlConnection Con = ConnectionHelper.GetConnection();
        SqlCommand cmd = new SqlCommand(sp, Con);
        cmd.Parameters.Add(new SqlParameter("@DistrictID", DistrictID));
        cmd.Parameters.Add(new SqlParameter("@BloodGroup", BloodGroupID));
        cmd.CommandType = CommandType.StoredProcedure;

        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);

        return dt;
    }



    //get users by Location and blood Group
    //public static DataTable GetDonarByLocationAndBloodGroup(int LocationID, int BloodGroupID )
    //{
        
    //    String sp = "Usp_GetMemeberbyLocationBloodGroup";


    //    SqlConnection Con = ConnectionHelper.GetConnection();

    //    SqlCommand cmd = new SqlCommand(sp, Con);
    //    cmd.Parameters.Add(new SqlParameter("@Location", LocationID));
    //    cmd.Parameters.Add(new SqlParameter("@BloodGroup", BloodGroupID));
    //    cmd.CommandType = CommandType.StoredProcedure;

    //    DataTable dt = new DataTable();
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    da.Fill(dt);

       
    //    return dt;
    //}



}