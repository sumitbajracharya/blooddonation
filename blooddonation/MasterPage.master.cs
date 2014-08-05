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




public partial class MasterPage : System.Web.UI.MasterPage
{
        
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dataload();
        }

    }

    public void dataload()
    {
        
        using (SqlConnection con = ConnectionHelper.GetConnection())
        {
            string query = "Select BloodGroup from TblBloodGroup";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_fill");

            ddl_bloodgroup.DataSource = ds.Tables["tbl_fill"];
            ddl_bloodgroup.DataTextField = "BloodGroup";
            ddl_bloodgroup.DataBind();
            ddl_bloodgroup.Items.Insert(0,"Blood Type");

            SqlDataAdapter daa= new SqlDataAdapter("select LocationName from TblLocation",con);
            DataSet dss = new DataSet();
            daa.Fill(dss,"tbl_locationnn");
            ddl_location.DataSource = dss;
            ddl_location.DataTextField = "LocationName";
            ddl_location.DataBind();
            ddl_location.Items.Insert(0, "Choose Location");

            //gv_search.DataSource = ds;
            //gv_search.DataBind();
          
        }
   
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        int BloodId = ddl_bloodgroup.SelectedIndex;
        int LocationID = ddl_location.SelectedIndex;
        Response.Redirect("DonarList.aspx?Location=" + LocationID + "&Bloodgroup=" + BloodId);
    }
    
}

    