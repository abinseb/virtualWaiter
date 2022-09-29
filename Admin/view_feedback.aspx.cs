using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_view_feedback : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }

    }

    public void Bind()
    {
        DataSet ds = dm.For_Adapter("select *from feedback");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Gridfeedback.DataSource = ds.Tables[0];
            Gridfeedback.DataBind();
        }


    }
}