﻿using System;
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

    public static string GetLocationByID(int id)
    {
        string Location;
        string query = "select LocationName from TblLocation where (LocationID = '"+ id +"')";
        SqlConnection con = ConnectionHelper.GetConnection();
        SqlCommand cmd = new SqlCommand(query, con);

        using (SqlDataReader _reader = cmd.ExecuteReader())
        {
           Location = _reader["LocationName"].ToString();
        }
        return Location;
    }

    public DataTable GetAllLocation1()
    {
        return ConnectionHelper.GetTable("SELECT LocationID,LocationName FROM TblLocation", null);
    }

    //get all location info
    public static List<LocationInfo> GetAllLocation()
    {
        using (SqlConnection con= ConnectionHelper.GetConnection())
        {
            string Sp="Usp_get_AllLocations";
            SqlCommand cmd = new SqlCommand(Sp,con);
            List<LocationInfo> lstlocations=new List<LocationInfo>();
            cmd.CommandType=CommandType.StoredProcedure;

            using (SqlDataReader _reader=cmd.ExecuteReader())
            {
                while (_reader.Read())
                {
                    lstlocations.Add(new LocationInfo
                    {
                        LocationId = int.Parse(_reader["LocationID"].ToString()),
                        LocationName = _reader["LocationName"].ToString(),
                        DistrictId = int.Parse(_reader["DistrictID"].ToString()),
                        DistrictName = _reader["bg.DistrictName"].ToString(),

                    });
                }
            }
            return lstlocations;
        }

    }


    // get all Location with DistrictName inplace of DistrictID
    public static DataTable GetAllLocationWithDistrictName()
    {
         DataTable DT = new DataTable();
        using (SqlConnection con = ConnectionHelper.GetConnection())
        {
            string Sp = "Usp_get_AllLocationsWithDistrictName";
            SqlCommand cmd = new SqlCommand(Sp, con);
            //List<LocationInfo> lstlocations = new List<LocationInfo>();
            cmd.CommandType = CommandType.StoredProcedure;
           
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(DT);
            //using (SqlDataReader _reader = cmd.ExecuteReader())
            //{
            //    while (_reader.Read())
            //    {
            //        lstlocations.Add(new LocationInfo
            //        {
            //            LocationId = int.Parse(_reader["LocationID"].ToString()),
            //            LocationName = _reader["LocationName"].ToString(),
            //            DistrictName = _reader["bg.DistrictName"].ToString(),

            //        });
            //    }
            }
            return DT;
        }


//Add new Location
    
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
                    cmd.CommandText = "Usp_Location_Update";
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
                    cmd.CommandText = "Usp_Location_Delete";
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

    //public static List<LocationInfo> GetAllLocationByDistrictID(int _DistrictID)
    //{
    //    using (SqlConnection con = ConnectionHelper.GetConnection())
    //    {
    //      using(SqlCommand cmd=con.CreateCommand())
    //      {
    //          cmd.CommandText = "Usp_get_AllLocations_By_DistrictID";
    //          cmd.CommandType = CommandType.StoredProcedure;

    //          cmd.Parameters.AddWithValue("@DistrictID", _DistrictID);
    //      } 
            
    //        return lstlocations;
    //    }

    //}


   
}