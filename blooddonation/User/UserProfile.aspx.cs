using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            string name = Session["UserName"].ToString();

            string query = "select * from TblMembers where UserName=" + name;
            SqlConnection Con = ConnectionHelper.GetConnection();

            SqlCommand cmd = new SqlCommand(query, Con);
            SqlDataReader reader = cmd.ExecuteReader();

            MemberInfo _member = new MemberInfo();
        




        }
    }
}