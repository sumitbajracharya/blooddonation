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

   

    // get all district Info
    public static List<LocationInfo> GetAllLocation()
    {
        using (SqlConnection con = ConnectionHelper.GetConnection())
        {
            string Sp = "Usp_get_AllLocations";
            SqlCommand cmd = new SqlCommand(Sp, con);
            List<LocationInfo> lstlocations = new List<LocationInfo>();
            cmd.CommandType = CommandType.StoredProcedure;

            using (SqlDataReader _reader = cmd.ExecuteReader())
            {
                while (_reader.Read())
                {
                    lstlocations.Add(new LocationInfo
                    {
                        LocationId = int.Parse(_reader["LocationID"].ToString()),
                        LocationName = _reader["LocationName"].ToString(),
                        DistrictId = int.Parse(_reader["DistrictID"].ToString()),

                    });
                }
            }
            return lstlocations;
        }

    }

    //get location by district id
    public static List<LocationInfo> GetLocationByDistrictID(int DistrictID)
    {
        List<LocationInfo> lstLocation = new List<LocationInfo>();
        foreach (LocationInfo _Location in BLLLocation.GetAllLocation())
        {
            if (_Location.DistrictId == DistrictID)
            {
                lstLocation.Add(_Location);
            }
        }
        return lstLocation;
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

    public static int UpdateLocation(LocationInfo _Location)
    {
        try
        {
            using (SqlConnection con = ConnectionHelper.GetConnection())
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = "Usp_Location_Update";//stored procedure banako chaina
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@LocationName", _Location.LocationName);//melako chaina
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

    public static int DeleteLocation(LocationInfo _Location)
    {
        try
        {
            using (SqlConnection con = ConnectionHelper.GetConnection())
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = "Usp_Location_Delete";//stored procedure banako chaina
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@LocationName", _Location.LocationName); //mela ko chaina
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