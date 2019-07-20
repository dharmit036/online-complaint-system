using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows;
public partial class firpage1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Dharmit Saradva\Documents\Visual Studio 2013\WebSites\practical6 - Copy\App_Data\Database.mdf;Integrated Security=True");
     protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.Open();
        string str = ("insert into firtable1 values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')");
        SqlCommand cmd1 = new SqlCommand(str, con);
        cmd1.ExecuteNonQuery();
        Response.Write("<script>alert('Data added successfully')</script>");
        con.Close();
    }
  
}