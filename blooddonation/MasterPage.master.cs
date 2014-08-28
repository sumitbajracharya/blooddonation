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
        if (!IsPostBack)
        {


            ddl_bloodgroup.DataSource = BLLBloodGroup.GetAllBloodGroup();
        ddl_bloodgroup.DataTextField = "BloodGroup";
        ddl_bloodgroup.DataValueField = "BloodGroupID";
        ddl_bloodgroup.DataBind();
        ddl_bloodgroup.Items.Insert(0, "Choose district");

        ddl_location.DataSource = BLLDistrict.GetAllDistrict();
        ddl_location.DataTextField = "DistrictName";
        ddl_location.DataValueField = "DistrictID";
        ddl_location.DataBind();
        ddl_location.Items.Insert(0, "Select District");

        }

    }

  

    protected void btn_search_Click(object sender, EventArgs e)
    {
        int BloodId = ddl_bloodgroup.SelectedIndex;
        int DistrictID = ddl_location.SelectedIndex;
        Response.Redirect("DonarList.aspx?District=" + DistrictID+"&BloodGroup=" + BloodId);
    }

    
    
    

   
}

    