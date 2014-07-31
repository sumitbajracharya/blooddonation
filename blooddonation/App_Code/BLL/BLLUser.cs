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
    public  static void CreateUser (MemberInfo _User)
    {
        string sp = "Usp_Member_Create";
            SqlConnection con = ConnectionHelper.GetConnection();
            SqlCommand cmd = new SqlCommand(sp, con);
            cmd.Parameters.Add(new SqlParameter("@firstname",_User.FirstName));
            cmd.Parameters.Add(new SqlParameter("@lastname",_User.LastName));
            cmd.Parameters.Add(new SqlParameter("@username",_User.UserName));
            cmd.Parameters.Add(new SqlParameter("@bloodgroupid",_User.BloodGroupId));
            cmd.Parameters.Add(new SqlParameter("@mobilenumber",_User.MobileNo));
            cmd.Parameters.Add(new SqlParameter("@email",_User.Email));
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
        SqlParameter[] param=new SqlParameter[]
        {
            
            
        };

        
      }
}