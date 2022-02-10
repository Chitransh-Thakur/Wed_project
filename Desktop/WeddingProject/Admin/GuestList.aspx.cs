using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;


public partial class Admin_GuestList : System.Web.UI.Page
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
    
    protected void Button3_Click(object sender, EventArgs e)
    {
            connectdb();
            string q = "select * from guestlist_wedding where userid='" + TextBox1.Text + "'";
            cm = new SqlCommand(q, cn);
            dr = cm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        
    }

    protected void invite_send(object sender, EventArgs e)
    {
        connectdb();
        GridViewRow gr1 = ((Button)sender).NamingContainer as GridViewRow;
        Button b1 = (Button)gr1.FindControl("invitebtn");

        Response.Redirect("https://api.whatsapp.com/send?phone=+91" + gr1.Cells[3].Text + "&text=" + gr1.Cells[4].Text);
    }

    protected void mail_send(object sender, EventArgs e)
    {
        connectdb();
        string q = "select img from wedding_regdb where userid='" + TextBox1.Text + "'";
        cm = new SqlCommand(q, cn);
        dr = cm.ExecuteReader();
        if (dr.Read())
        {
            string place =  dr["img"].ToString();
            string link = "http://student-cell.com/dotnet1/WeddingProject/upinvitation/upload/" + place;
            GridViewRow gr1 = ((Button)sender).NamingContainer as GridViewRow;
            Button b2 = (Button)gr1.FindControl("mailbtn");

            SmtpClient sm = new SmtpClient("student-cell.com", 25);
            sm.Credentials = new System.Net.NetworkCredential("contact@student-cell.com", "Fg8@or61");
            sm.DeliveryMethod = SmtpDeliveryMethod.Network;
            MailMessage mm = new MailMessage("contact@student-cell.com", gr1.Cells[2].Text);
            mm.Subject = "Invitation!!";
            mm.Body = @"You are invited <br/>
                      <img src="+link+">";

            
            mm.IsBodyHtml = true;
            sm.Send(mm);
        }
    }
}