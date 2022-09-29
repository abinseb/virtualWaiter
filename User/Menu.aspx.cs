using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class User_Menu : System.Web.UI.Page
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
        DataSet ds1 = dm.For_Adapter("select Top 5 * from additem where category='Lunch' ");
        if (ds1.Tables[0].Rows.Count > 0)
        {
            DataList2.DataSource = ds1.Tables[0];
            DataList2.DataBind();
        }
        DataSet ds3 = dm.For_Adapter("select Top 5 * from additem where category='Breakfast' ");
        if (ds3.Tables[0].Rows.Count > 0)
        {
            DataList3.DataSource = ds3.Tables[0];
            DataList3.DataBind();
        }
        
        DataSet ds2 = dm.For_Adapter("select Top 5 * from additem where category='Dinner' ");
        if (ds2.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds2.Tables[0];
            DataList1.DataBind();
        }
        
    }
    protected void btnorder_Click(object sender, EventArgs e)
    {

    }
    protected void btnbuy_Command(object sender, CommandEventArgs e)
    {

        if (e.CommandName == "buy")
        {
            Response.Redirect("~/User/demo2.aspx?itemname=" + e.CommandArgument.ToString());
        }
        Bind();
    }
    protected void buyitem(object source, DataListCommandEventArgs e)
    {

    }
    protected void btnbuy_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

    }
}