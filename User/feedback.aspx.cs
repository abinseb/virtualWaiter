using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_feedback : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnfsubmit_Click(object sender, EventArgs e)
    {
        String feedbackid = dm.Gen_id("select max(feedbackid) from feedback", "FID");
        int r = dm.For_Execute("insert into feedback values('" + feedbackid + "','" + txtitemname.Text + "','" +txtfeedback.Text+"','" + txttablename.Text+ "')");
        if (r > 0)
        {
            Response.Write("<script>alert('feedback registration successfull')</script>");
        }
    }
}