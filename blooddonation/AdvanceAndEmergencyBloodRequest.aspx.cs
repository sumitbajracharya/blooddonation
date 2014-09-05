using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdvanceAndEmergencyBloodRequest : System.Web.UI.Page
{
    AdvanceRequestInfo _AdvanceRequest = new AdvanceRequestInfo();
    EmergencyBloodRequest _EmergencyRequest = new EmergencyBloodRequest();
    protected void Page_Load(object sender, EventArgs e)
    {

        using (SqlConnection con = ConnectionHelper.GetConnection())
        {
            

            

            ddlLocationA.DataSource = BloodGroupAndLocation.Location();
            ddlLocationA.DataTextField = "LocationName";
            ddlLocationA.DataBind();
            ddlLocationA.Items.Insert(0, "Select Location");

            ddlLocationE.DataSource = BloodGroupAndLocation.Location();
            ddlLocationE.DataTextField = "LocationName";
            ddlLocationE.DataBind();
            ddlLocationE.Items.Insert(0, "Select Location");
            ddlLocationE.DataValueField = "LocationID";

            

            ddlBloodGroupA.DataSource = BloodGroupAndLocation.BloodGroup();
            ddlBloodGroupA.DataTextField = "BloodGroup";
            
            ddlBloodGroupA.DataBind();
            ddlBloodGroupA.Items.Insert(0, "Select Blood Group");

            ddlBloodgroupE.DataSource = BloodGroupAndLocation.BloodGroup();
            ddlBloodgroupE.DataTextField = "BloodGroup";
            
            ddlBloodgroupE.DataBind();
            ddlBloodgroupE.Items.Insert(0, "Select Blood Group");
            
            
        }


    }
    protected void btnSubmitA_Click(object sender, EventArgs e)
    {
       

        _AdvanceRequest.SeekerName= txtFullNameA.Text;
        _AdvanceRequest.HospitalName = txtHospitalNameA.Text;
        _AdvanceRequest.HospitalPaper = fupImageA.FileName;
        _AdvanceRequest.LocationId = ddlLocationA.SelectedIndex;
        _AdvanceRequest.BloodGroupId = ddlBloodGroupA.SelectedIndex;

        

        _AdvanceRequest.Message = txtMessageA.Text;
        _AdvanceRequest.PhoneNo = txtPhoneNoA.Text;
        _AdvanceRequest.PatientName = txtPatientNameA.Text;
        _AdvanceRequest.Purpose = txtPurposeA.Text;
        _AdvanceRequest.Quantity = Convert.ToInt32(txtQuantityA.Text);
        _AdvanceRequest.Time = DateTime.Now;
        _AdvanceRequest.Date = Convert.ToDateTime(txtDateA.Text.ToString());
        _AdvanceRequest.Age = Convert.ToInt32(txtAgeA.Text);

        BLLAdvanceBloodRequest.AddAdvanceBloodRequest(_AdvanceRequest);
    }
    protected void btnCancelA_Click(object sender, EventArgs e)
    {

    }
    protected void btnSubmitE_Click(object sender, EventArgs e)
    {
        

        _EmergencyRequest.FullName = txtFullNameE.Text;
        _EmergencyRequest.Age = Convert.ToInt32(txtAgeE.Text);
        _EmergencyRequest.LocationId = ddlLocationE.SelectedIndex.ToString();
        //_EmergencyRequest.BloodGroupId = ddlBloodgroupE.SelectedIndex;

        _AdvanceRequest.BloodGroupId = Convert.ToInt32(ddlBloodgroupE.Items.FindByText("BloodGroup"));

        _EmergencyRequest.PhoneNo = txtPhoneNumberE.Text;
        _EmergencyRequest.Message = txtMessageE.Text;
        _EmergencyRequest.DistrictId =ddlDistrictE.SelectedIndex;

        
            BLLEmergencyBloodRequest.AddEmergencyBloodRequest(_EmergencyRequest);
     
        
        

       
    }
    protected void btnCancelE_Click(object sender, EventArgs e)
    {
        
    }
    public void Clear()
    {
       
<<<<<<< HEAD
=======
        //AdvanceBloodRequest.AddAdvanceBloodRequest(_AdvanceRequest);
>>>>>>> 9f15e3ff93823269908a07090e37c9d5b37ef104
    }
}