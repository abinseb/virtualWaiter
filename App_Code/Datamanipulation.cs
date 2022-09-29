using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Datamanipulation
/// </summary>
public class Datamanipulation
{
    SqlConnection con;
    public Datamanipulation()
	{
       con=new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\abins\OneDrive\Documents\Visual Studio 2010\WebSites\virtualwaiter\App_Data\virtualwaiter.mdf;Integrated Security=True;User Instance=True");
    }
    public int For_Execute(string str)
    {
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        return r;
    }
    public DataSet For_Adapter(string str)
    {
        SqlDataAdapter adpt = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        con.Open();
        adpt.Fill(ds);
        con.Close();
        return ds;
    }
    public string Gen_id(string str, string frmt)
    {
        string result = "";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            if (sdr[0].ToString() == "")
            {
                result = frmt + "1000";
            }
            else
            {
                int temp = Convert.ToInt32(sdr[0].ToString().Substring(3, 4));
                temp++;
                result = frmt + temp;

            }
        }
        con.Close();
        return result;
    }
}