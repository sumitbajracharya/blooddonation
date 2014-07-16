using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_BloodCenterDetails : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Id"]!=null)
        {
            int id = int.Parse(Request.QueryString["Id"]);
            //create bloodcenter object
            //query with blood center id
            //replace label text with data from database
        }
    }
}