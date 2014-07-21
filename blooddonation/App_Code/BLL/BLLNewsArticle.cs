using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for NewsArticle
/// </summary>
public class BLLNewsArticle
{
	public BLLNewsArticle()
	{
		//
		// TODO: Add constructor logic here
		//
	}
  
    public static int AddNewsArticle(NewsArticleInfo _NewsArticle)
    {
        try
        {
            using (SqlConnection con = ConnectionHelper.GetConnection())
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = "Usp_NewsArticle_Add";
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@eading", _NewsArticle.Heading);
                    cmd.Parameters.AddWithValue("@description", _NewsArticle.Description);

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