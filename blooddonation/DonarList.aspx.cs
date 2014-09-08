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

            LoadGrid(_districtid, _Bloodgroup);
            
        }
        
    }

    protected void LoadGrid(int District, int BloodGroup)
    {
        if (District ==0 && BloodGroup ==0)
        {
            try
            {
                gdvDonorList.DataSource = BLLUser.GetAllMemeberWithBloodGroupNameAndDistrictName();
                gdvDonorList.DataBind(); 
            }
            catch (Exception ex)
            {
                LblMessage.Text = ex.Message;
            }     
        }
        else if(District==0 && BloodGroup!=0)
	        {
                gdvDonorList.DataSource = BLLUser.GetDonorByBloodGroup(BloodGroup);
                gdvDonorList.DataBind(); 
	        }
        else if (District!=0 && BloodGroup ==0)
        {
            gdvDonorList.DataSource = BLLUser.GetDonorByDistrict(District);
                gdvDonorList.DataBind(); 
        }

        else
        {

        
            try
            {
                DataTable dt = BLLUser.GetDonorByDistrictAndBloodGroup(District, BloodGroup);
                gdvDonorList.DataSource = dt;
                gdvDonorList.DataBind();

                if (dt.Rows.Count > 0)
                {
                    lblCount.Text = dt.Rows.Count.ToString() + " Donors Found!!!";
                }
                else 
                {
                    lblCount.Text = "No Donors Found !!!";
                }
            }
            catch (Exception ex)
            {

                LblMessage.Text = ex.Message;
            }
        }
    }
    }
 