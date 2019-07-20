using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class PR11 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Dharmit Saradva\Documents\Visual Studio 2013\WebSites\practical6 - Copy\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
//        con.Open();
        string str = "select * from pr11";
        SqlDataAdapter ad = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        DropDownList2.DataSource = dt;
        DropDownList2.DataTextField = "size";
        DropDownList2.DataValueField = "category";
        DropDownList2.DataBind();
  //      con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}