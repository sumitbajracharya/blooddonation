using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditLocation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //dropedown of district connected with database
        ddlDistrict.DataSource = BLLDistrict.GetAllDistrict();
        ddlDistrict.DataTextField = "DistrictName";
        ddlDistrict.DataBind();
        ddlDistrict.Items.Insert(0, "Choose district");

        gdvLocation.DataSource = BLLLocation.GetAllLocation();
        
        gdvLocation.DataBind();

       
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        LocationInfo _location = new LocationInfo();
        _location.LocationName = txtLocationName.Text;
        _location.DistrictId = ddlDistrict.SelectedIndex;
       
        try
        {
            int Result = BLLLocation.CreateLocation(_location);
            if (Result == 1)
            {
                lblMessage.Text = "location has been successfully added ";
            }

        }
        catch (Exception ex)
        {

            lblMessage.Text = ex.Message;
        }
    }
}