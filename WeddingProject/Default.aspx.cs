using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cm;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox2.Text = Request.QueryString["email"];
        }
    }
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../upinvitation/Default.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../UserIdPage/Default.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Admin/GuestList.aspx");
    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = ConfigurationManager.AppSettings["db"];
        cn = new SqlConnection(s);

        cn.Open();

        string q = "insert into Contact_wedding values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        cm = new SqlCommand(q, cn);
        cm.ExecuteNonQuery();
        Response.Write("<script lang='JavaScript'>alert('Thank You for your feedback!! we will get back to you as soon as possible.')</script>");
    }
}