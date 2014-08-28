using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLDistrict
/// </summary>
public class BLLDistrict
{
	public BLLDistrict()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    // get all district Info
    public static List<DistrictInfo> GetAllDistrict()
    {
        using (SqlConnection con = ConnectionHelper.GetConnection())
        {
            string Sp = "Usp_get_AllDistricts";
            SqlCommand cmd = new SqlCommand(Sp, con);
            List<DistrictInfo> lstdistricts = new List<DistrictInfo>();
            cmd.CommandType = CommandType.StoredProcedure;
            
            using (SqlDataReader _reader = cmd.ExecuteReader())
            {
                while (_reader.Read())
                {
                    lstdistricts.Add(new DistrictInfo
                    {
                        DistrictId = int.Parse(_reader["DistrictID"].ToString()),
                        DistrictName = _reader["DistrictName"].ToString(),
                        
                    });
                }
            }
            return lstdistricts;
        }
       
    }

}