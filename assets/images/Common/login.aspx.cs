using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Common_login : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from employee_regtbl where email='" + txtuserid.Text + "' and password='" + txtpassword.Text + "'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["EmpID"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Redirect("~/Staff/Home.aspx");
        }
        else
        {
            str = "select * from admintbl where email='" + txtuserid.Text + "' and password='" + txtpassword.Text + "'";
            ds = dm.For_Adapter(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                Response.Redirect("~/Admin/Home.aspx");
            }

            else
            {
                lib.Text = "Invalid Email or Password";
            }

        }
       

    }
}