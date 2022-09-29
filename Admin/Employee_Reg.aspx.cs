using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Employee_Reg : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string EmpID = dm.Gen_id("select max(EmpID) from employee_regtbl", "EMP");
        int r=dm.For_Execute("insert into employee_regtbl values('"+EmpID+"','"+txtfirstname.Text+"','"+txtlastname.Text+"','"+rdogender.SelectedItem.Text+"','"+' '+"','"+txtplace.Text+"','"+' '+"','"+' '+"','"+' '+"','"+txtpin.Text+"','"+txtmobno.Text+"','"+txtemail.Text+"','"+ddlbloodgrp.SelectedItem.Text+"','"+txtpassword.Text+"')");
        if (r > 0)
        {
            Response.Write("<script>alert('Registration successfull')</script>");
        }
    }
}