using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;



public partial class GuestAdd_Default : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cm;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label2.Text = Request.QueryString["userid"].ToString();
            //TextBox5.Text = "";

        }
    }

    protected void connectdb()
    {
        string s = ConfigurationManager.AppSettings["db"];
        cn = new SqlConnection(s);
        cn.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        connectdb();
        string k = "select max(id)+1 from guestlist_wedding";
        cm = new SqlCommand(k,cn);


        string q = "insert into guestlist_wedding values('" + cm.ExecuteScalar().ToString() + "','" + Label2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        
        cm = new SqlCommand(q,cn);
        cm.ExecuteNonQuery();
        TextBox5.Text = "Successfully Added";
        TextBox5.Enabled = false;
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../RegisterWed/Default.aspx");
    }
}