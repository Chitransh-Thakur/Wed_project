using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
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

    protected void mailing()
    {
        SmtpClient sm = new SmtpClient("student-cell.com", 25);
        sm.Credentials = new System.Net.NetworkCredential("contact@student-cell.com", "Fg8@or61");
        sm.DeliveryMethod = SmtpDeliveryMethod.Network;

        MailMessage mm = new MailMessage("contact@student-cell.com", TextBox1.Text);
        mm.Subject = "FORGOT PASSWORD";
        mm.Body = "Your Password is " + dr["pwd"].ToString();
        mm.IsBodyHtml = true;
        sm.Send(mm);
    }
    
    
    protected void forgot()
    {
        connectdb();
        string s = "select * from wedding_regdb where email='"+TextBox1.Text+"'";
        cm = new SqlCommand(s, cn);
        dr = cm.ExecuteReader();

        if (dr.Read())
        {
            mailing();
        }

        else 
        {
            Response.Write("<script lang='JavaScript'>alert('Enter the Valid Email Id')</script>");
        }
    }

    protected void pass_check()
    {
        connectdb();
        string s = "select * from wedding_regdb where email='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";
        cm = new SqlCommand(s, cn);
        dr = cm.ExecuteReader();

        if (dr.Read())
        {
            string role1 = dr["role"].ToString();

            if (role1 == "User")
            {
                Response.Redirect("../RegisterWed/Default.aspx");
            }

            else if (role1 == "Admin")
            {
                Response.Redirect("../RegisterWed/Default.aspx");
            }
        }
        else
        {

            Response.Write("<script lang='JavaScript'>alert('Invalid Credentials')</script>");


        }

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Response.Write("<script lang='JavaScript'>alert('Enter the Email Id')</script>");
        }
        else 
        {
            forgot();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Default.aspx");
    }
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Response.Write("<script lang='JavaScript'>alert('Enter the Email Id or Password')</script>");
        }
        else
        {
            pass_check();
        }
    }
}