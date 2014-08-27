using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Web.Security;




public partial class MasterPage : System.Web.UI.MasterPage
{
        
    protected void Page_Load(object sender, EventArgs e)
    {
        ddl_bloodgroup.DataSource = BLLDistrict.GetAllDistrict();
        ddl_bloodgroup.DataTextField = "DistrictName";
        ddl_bloodgroup.DataBind();
        ddl_bloodgroup.Items.Insert(0, "Choose district");

        ddl_location.DataSource = BLLLocation.GetAllLocation();
        ddl_location.DataTextField = "Location";
        ddl_location.DataBind();
        ddl_location.Items.Insert(0, "Select Location");

    }

  

    protected void btn_search_Click(object sender, EventArgs e)
    {
        int BloodId = ddl_bloodgroup.SelectedIndex;
        int LocationID = ddl_location.SelectedIndex;
        Response.Redirect("DonarList.aspx?Location=" + LocationID+"&BloodGroup=" + BloodId);
    }

    
    
    

   
}

    