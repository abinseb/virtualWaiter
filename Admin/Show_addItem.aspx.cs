using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Show_addItem : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = dm.For_Adapter("select distinct category from additem");
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlcategory.DataSource = ds.Tables[0];
                ddlcategory.DataTextField = "category";
                ddlcategory.DataValueField = "category";
                ddlcategory.DataBind();
            }
            else
            {
                lblmg.Text = "No Records Found";
            }
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Bind();
    }
    public void Bind()
    {
        DataSet ds = dm.For_Adapter("select * from additem where category='"+ddlcategory.SelectedItem+"'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }
        Panel1.Visible = true;
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        Bind();
    }
    protected void DataList1_UpdateCommand1(object source, DataListCommandEventArgs e)
    {
        
        

        Label lblid=(Label)e.Item.FindControl("Label1");
        TextBox txtname = (TextBox)e.Item.FindControl("txtname");
        Image imgitem = (Image)e.Item.FindControl("imgitem");
        TextBox txtdec = (TextBox)e.Item.FindControl("txtdec");
        DropDownList ddlcategory = (DropDownList)e.Item.FindControl("ddlcategory");
        TextBox txtprice = (TextBox)e.Item.FindControl("txtprice");
        FileUpload fuditem = (FileUpload)e.Item.FindControl("fuditem");
        string str="Update additem set itemname='"+txtname.Text+"',photo='"+imgitem.ImageUrl+"',description='"+txtdec.Text+"',category='"+ddlcategory.SelectedItem.Text+"',price='"+txtprice.Text+"' where fid='"+lblid.Text+"'";
        int r = dm.For_Execute(str);
        if (fuditem.HasFile)
        {
            String path = "~/Admin/photo/" + fuditem.FileName;
            fuditem.SaveAs(Server.MapPath(path));
            imgitem.ImageUrl = path;
            
        }
        
        if (r > 0)
        {
            DataList1.EditItemIndex = -1;
            Bind();
            Response.Write("<script>alert('Updated')</script>");
        }
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        Label lblid = (Label)e.Item.FindControl("Label1");
        string str="delete from additem where fid='"+lblid.Text+"'";
        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Deleted')</script>");
            Bind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        
        
       
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}