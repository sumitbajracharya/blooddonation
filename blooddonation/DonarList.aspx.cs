using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class DonarList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["District"] != null)
        {

            int _districtid = int.Parse(Request.QueryString["District"]);
            int _Bloodgroup = int.Parse(Request.QueryString["BloodGroup"]);
            
            LoadList(_districtid, _Bloodgroup);

        }
        
    }

    protected void LoadList(int District, int BloodGroup)
    {
        try
        {
            rptrDonorList.DataSource = BLLUser.GetDonorByDistrictAndBloodGroup(District, BloodGroup);
            rptrDonorList.DataBind();
        }
        catch(Exception ex)
        {
            LblMessage.Text = ex.Message;
        }
    }
}