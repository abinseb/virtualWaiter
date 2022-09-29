using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_order_product : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select * from additem where itemname='" + Request.QueryString["itemname"] + "'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblid.Text = ds.Tables[0].Rows[0][0].ToString();
            lblname.Text = ds.Tables[0].Rows[0][1].ToString();
            lbldesc.Text = ds.Tables[0].Rows[0][3].ToString();
            lblprice.Text = ds.Tables[0].Rows[0][5].ToString();

        }
        ds = dm.For_Adapter("select * from additem where itemname='" + Request.QueryString["itemname"] + "'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }
        
    }
}