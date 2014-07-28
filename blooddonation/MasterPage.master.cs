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
        btn_ok.Visible = false;

        if (!IsPostBack)
        {

            dataload();
        }

    }

    public void dataload()
    {
        string cs = ConfigurationManager.ConnectionStrings["BloodDonationConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            string query = "Select blood_group from tbl_bloodgroupp";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_fill");

            ddl_bloodgroup.DataSource = ds.Tables["tbl_fill"];
            ddl_bloodgroup.DataTextField = "blood_group";
            ddl_bloodgroup.DataBind();
            ddl_bloodgroup.Items.Insert(0,"Blood Type");

            SqlDataAdapter daa= new SqlDataAdapter("select Location from tbl_location",con);
            DataSet dss = new DataSet();
            daa.Fill(dss,"tbl_locationnn");
            ddl_location.DataSource = dss;
            ddl_location.DataTextField = "Location";
            ddl_location.DataBind();
            ddl_location.Items.Insert(0, "Choose Location");

            //gv_search.DataSource = ds;
            //gv_search.DataBind();
          
        }
   
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["BloodDonationConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {

           SqlCommand cmd = new SqlCommand("SELECT BloodGroup, Location, Name, Age, Sex, [Last Time Donated] FROM registered_user_table where BloodGroup=@bloodgroup and Location=@location", con);
         cmd.Parameters.AddWithValue("@bloodgroup", ddl_bloodgroup.SelectedItem.Text);
          cmd.Parameters.AddWithValue("@location",ddl_location.SelectedItem.Text);
         SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet dsss = new DataSet();
          DataTable dtt= new DataTable();
         da.Fill(dtt);

         if (dtt.Rows.Count > 0)
        {
            gv_search.DataSource = dtt;

             gv_search.DataBind();

        }
         else
         {

             lbl_msg.Text = "we couldn't found ur search items..sorry !!!";
             lbl_msg.ForeColor = System.Drawing.Color.Red;
             lbl_msg.Visible = true;
             btn_ok.Visible = true;



         }





        }
    }
    public void btn_ok_Click(object sender, EventArgs e)
    {
        dataload();
        lbl_msg.Visible = false;
        btn_ok.Visible = false;
    }
}

    