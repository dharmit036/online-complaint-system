using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Windows;
using System.Configuration;

public partial class signin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Dharmit Saradva\Documents\Visual Studio 2013\WebSites\practical6 - Copy\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = ("insert into signup1 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + RadioButtonList1.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "')");
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Data added!!!!')</script>");
        con.Close();
      
    }


    protected void Male_CheckedChanged(object sender, EventArgs e)
    {

    }
}