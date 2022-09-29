using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Admin_additem : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String fid = dm.Gen_id("select max(fid) from additem", "pid");
        int a = dm.For_Execute("insert into additem values('" + fid + "','" + txtname.Text + "','" + imgitem.ImageUrl + "','" + txtdec.Text + "','" + ddlcategory.SelectedItem.Text + "','" + txtprice.Text + "')");
        if (a > 0)
        {
            Response.Write("<script>alert('Registration successfull')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (fuditem.HasFile)
        {
            String path = "~/Admin/photo/" + fuditem.FileName;
            fuditem.SaveAs(Server.MapPath(path));
            imgitem.ImageUrl = path;
            lblmsg.Text = "";
        }
        else {
            lblmsg.Text = "Please upload Image";

        }
    }
    
}