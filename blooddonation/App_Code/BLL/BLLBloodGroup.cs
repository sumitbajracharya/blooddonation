﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLBloodGroup
/// </summary>
public class BLLBloodGroup
{
	public BLLBloodGroup()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static int CreateBloodGroup(string _Bloodgroup)
    {
        try
        {
            using (SqlConnection con = ConnectionHelper.GetConnection())
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = "Usp_CreateBloodGroup";
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@bloodgroup",_Bloodgroup);
                   

                   return cmd.ExecuteNonQuery();
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    //Get all blood group
    public static List<BloodGroupInfo> GetAllBloodGroup()
    {
        using (SqlConnection con = ConnectionHelper.GetConnection())
        {
            string Sp = "Usp_get_AllBloodGroup";
            SqlCommand cmd = new SqlCommand(Sp, con);
            List<BloodGroupInfo> lstbloodgroup = new List<BloodGroupInfo>();
            cmd.CommandType = CommandType.StoredProcedure;

            using (SqlDataReader _reader = cmd.ExecuteReader())
            {
                while (_reader.Read())
                {
                    lstbloodgroup.Add(new BloodGroupInfo
                    {
                        BloodGroupId = int.Parse(_reader["BloodGroupId"].ToString()),
                        BloodGroup = _reader["BloodGroup"].ToString(),
                       

                    });
                }
            }
            return lstbloodgroup;
        }

    }
    // Get Blood Group Name By ID
    public static String GetBloodGroupByID(int BloodID)
    {
        BloodGroupInfo Blood = new BloodGroupInfo();
        string query = "select * from TblBloodGroup where (BloodGroupID = " + BloodID + ")";
        SqlConnection con = ConnectionHelper.GetConnection();
        SqlCommand cmd = new SqlCommand(query, con);

        using (SqlDataReader _reader = cmd.ExecuteReader())
        {
            _reader.Read();
            Blood.BloodGroupId = int.Parse(_reader["BloodGroupID"].ToString());
            Blood.BloodGroup = _reader["BloodGroup"].ToString();
        }
        return Blood.BloodGroup;
    }


}