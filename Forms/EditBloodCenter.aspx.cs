using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditBloodCenter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LnkAddCenter_Click(object sender, EventArgs e)
    {
        pnlAddBloodCenter.Visible = true;
        PnlEditBloodCenter.Visible = false;
    }
    protected void LnkEditCenter_Click(object sender, EventArgs e)
    {
        pnlAddBloodCenter.Visible = false;
        PnlEditBloodCenter.Visible = true;
    }
}