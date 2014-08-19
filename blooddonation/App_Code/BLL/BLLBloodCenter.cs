using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLBloodCenter
/// </summary>
public class BLLBloodCenter
{
	public BLLBloodCenter()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static void CreateBloodCenter(BloodCenterInfo _BloodCenter)
    {

        SqlParameter[] param = new SqlParameter[]
     {
         new SqlParameter("@name",_BloodCenter.Name),
         new SqlParameter("@locationid",_BloodCenter.LocationId ),
         new SqlParameter("@phonenumber",_BloodCenter.PhoneNumber),
         new SqlParameter("@mapcoordinates",_BloodCenter.MapCoordinates),
         new SqlParameter("@image",_BloodCenter.Image),
         new SqlParameter("@details",_BloodCenter.Details)
     };
        ConnectionHelper.ExecuteProcedure("insert into TblBloodCenter", param);

    }

    public DataTable GetBloodCenterList()
    {
        return ConnectionHelper.GetTable("SELECT TblBloodCenter.Name, TblLocation.LocationName, TblBloodCenter.CenterID FROM TblLocation INNER JOIN TblBloodCenter ON TblLocation.LocationID = TblBloodCenter.LocationID order by CenterID", null);
    }

}