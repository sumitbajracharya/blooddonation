using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLLocation
/// </summary>
public class BLLLocation
{
	public BLLLocation()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static int CreateLocation(LocationInfo _Location)
    {
        try
        {
            using (SqlConnection con = ConnectionHelper.GetConnection())
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = "Usp_Location_Create";
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@LocationName", _Location.LocationName);
                    cmd.Parameters.AddWithValue("@DistrictID", _Location.DistrictId);

                    return cmd.ExecuteNonQuery();
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
   
}