using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class UserIdPage_Default : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cm;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
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
        string q = "select * from wedding_regdb where pname='" + TextBox1.Text + "' and userid='" + TextBox2.Text + "'";
        cm = new SqlCommand(q, cn);
        dr = cm.ExecuteReader();
        if (dr.Read())
        {
            
            Response.Redirect("../GuestAdd/Default.aspx?name=" + TextBox1.Text + "&userid=" + TextBox2.Text);
            
        }

        else
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            Response.Write("<script lang='JavaScript'>alert('Enter the correct credentials')</script>");
        }
    }
}