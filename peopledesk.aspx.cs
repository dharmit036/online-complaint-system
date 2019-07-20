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

public partial class peopledesk : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Dharmit Saradva\Documents\Visual Studio 2013\WebSites\practical6 - Copy\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        con.Open();
        string str=("select * from signup1");
        SqlCommand cmd=new SqlCommand(str,con);
        SqlDataReader read = cmd.ExecuteReader();
        GridView1.DataSource = read;
        GridView1.DataBind();
        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        string str=("update signup1 set city='"+TextBox2.Text+"',name='"+TextBox3.Text+"' where mobile='"+TextBox1.Text+ "'");
        SqlCommand cmd=new SqlCommand(str,con);
        cmd.ExecuteNonQuery();
        Response.Write("Update successfully!!!!");
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        string str=("delete from signup1 where mobile='" + TextBox1.Text + "'");
        SqlCommand cmd = new SqlCommand(str,con); 
        cmd.ExecuteNonQuery();
        Response.Write("Deleted successfully!!!!");
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        String str = ("select * from signup1 where mobile='" + TextBox1.Text + "'");
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "signup1");
        DataTable dt = ds.Tables[0];
        con.Close();
        TextBox2.Text = dt.Rows[0]["city"].ToString();
        TextBox3.Text = dt.Rows[0]["name"].ToString();
    }
}