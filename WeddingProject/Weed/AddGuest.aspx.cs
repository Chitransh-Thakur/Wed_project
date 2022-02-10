using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.IO;


public partial class AddGuest : System.Web.UI.Page
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

    protected void connect()
    {
        string s = ConfigurationManager.AppSettings["mydb1"];
        cn = new SqlConnection(s);
        cn.Open();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        connect();
        string q = "insert into guest_db(name,age,mobile,email) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        cm = new SqlCommand(q, cn);
        cm.ExecuteNonQuery();
    }





    protected void Button2_Click(object sender, EventArgs e)
    {
        connect();
        string q = "select * from guest_db";
        cm = new SqlCommand(q, cn);
        dr = cm.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        dr.Close();
   }

    protected void invite_send(object sender,EventArgs e)
    {
       connect();
       GridViewRow gr1 = ((Button)sender).NamingContainer as GridViewRow;
       Button b1 = (Button)gr1.FindControl("invitebtn");
       
       Response.Redirect("https://api.whatsapp.com/send?phone=+91" + gr1.Cells[3].Text + "&text=" + Label1.Text);
    }

    protected void mail_send(object sender, EventArgs e)
    {
        connect();
        GridViewRow gr1 = ((Button)sender).NamingContainer as GridViewRow;
        Button b2 = (Button)gr1.FindControl("mailbtn");

        SmtpClient sm = new SmtpClient("student-cell.com", 25);
        sm.Credentials = new System.Net.NetworkCredential("contact@student-cell.com", "Fg8@or61");
        sm.DeliveryMethod = SmtpDeliveryMethod.Network;
        MailMessage mm = new MailMessage("contact@student-cell.com", gr1.Cells[4].Text);
        mm.Subject = "Invitation!!";
        mm.Body = @" Mr. Chitransh Thakur Invited You For The Weeding. <br />
               <img src=""http://student-cell.com/dotnet1/Weed/upload/MyInvitation.jpeg"" height=""700px"" width=""500px"" /><br />";
        mm.IsBodyHtml = true;
        sm.Send(mm);
    }
    
}