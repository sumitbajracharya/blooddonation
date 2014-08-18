using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditBloodCenter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void dataload()
    {
        ddlLocation1.DataSource = BloodGroupAndLocation.Location();
        ddlLocation1.DataTextField = "LocationName";
        ddlLocation1.DataBind();
        ddlLocation1.Items.Insert(0, "Choose Location");

        //gv_search.DataSource = ds;
        //gv_search.DataBind();
    }
}