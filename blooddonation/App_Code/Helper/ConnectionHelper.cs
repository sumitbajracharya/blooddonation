using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ConnectionHelper
/// </summary>
public class ConnectionHelper
{
	public ConnectionHelper()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["BloodDonorConnectionString"].ConnectionString;
    }

    public static SqlConnection GetConnection()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = GetConnectionString();
        con.Open();
        return con;
    }

}