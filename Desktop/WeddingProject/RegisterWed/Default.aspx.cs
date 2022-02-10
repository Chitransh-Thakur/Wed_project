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
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("./wedprac/Default.aspx");
    }

    protected void connectdb()
    {
        string s = ConfigurationManager.AppSettings["db"];
        cn = new SqlConnection(s);
        cn.Open();
        
    }

    protected int generate_random()
    {
        Random r1 = new Random();
        int k = (int)(r1.NextDouble() * 9999);
        return k;

    }

    protected void generate_otp()
    {
        connectdb();
        int k = generate_random();

        SmtpClient sm = new SmtpClient("student-cell.com", 25);
        sm.Credentials = new System.Net.NetworkCredential("contact@student-cell.com", "Fg8@or61");
        sm.DeliveryMethod = SmtpDeliveryMethod.Network;

        MailMessage mm = new MailMessage("contact@student-cell.com", TextBox4.Text);
        mm.Subject = "OTP generated!!";
        mm.Body = "The Otp is " + k;
        mm.IsBodyHtml = true;
        sm.Send(mm);

        string q = "insert into wedding_otpcheck values('" + TextBox4.Text + "','" + k + "')";
        cm = new SqlCommand(q, cn);
        cm.ExecuteNonQuery();

        Label1.Visible = true;
        Label1.Text = "Please Check your mail for Otp";

    }

    protected void check_otp()
    {
        connectdb();
        string s1 = "select * from wedding_otpcheck where otp='" + TextBox5.Text + "' and email = '"+TextBox4.Text+"'";
        cm = new SqlCommand(s1, cn);
        dr = cm.ExecuteReader();
        if (dr.Read())
        {
            connectdb();
            string snew = "select * from wedding_regdb where email = '" + TextBox4.Text + "'";
            cm = new SqlCommand(snew, cn);
            dr.Close();
            dr = cm.ExecuteReader();
            if (dr.Read())
            {
              Response.Write("<script lang='JavaScript'>alert('You have already Registered!!')</script>");
            }    

             else
            {
              register_me();
            }
       }
        

        else
        {
            Response.Write("<script>alert('Invalid Email or Otp')</script>");
        }
    }

    protected void register_me()
    {
        string g = "select max(id)+1 from wedding_regdb";
        cm = new SqlCommand(g,cn);
        dr.Close();
        string next_id = cm.ExecuteScalar().ToString();

       
        int ran = generate_random();
        string next_userid = "Wed-1000-" + ran; 

        int ran_pass = generate_random();

        string rol = "User";
        string q = "insert into wedding_regdb(id,userid,gname,pname,wdate,email,pwd,role) values ('" + next_id + "','" + next_userid + "','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + ran_pass + "','" + rol + "')";
        cm = new SqlCommand(q, cn);
        dr.Close();
        cm.ExecuteNonQuery();
        Label1.Visible = true;
        Label1.Text = "Successfully Registered";

        SmtpClient sm = new SmtpClient("student-cell.com", 25);
        sm.Credentials = new System.Net.NetworkCredential("contact@student-cell.com", "Fg8@or61");
        sm.DeliveryMethod = SmtpDeliveryMethod.Network;

        MailMessage mm = new MailMessage("contact@student-cell.com", TextBox4.Text);
        mm.Subject = "WEDIGO SENT YOUR USER ID AND PASSWORD!!";
        mm.Body = "The User id is " + next_userid + " and Your Password is " + ran_pass
           + " Please keep the userid and password safely...this would be important for future references";
        mm.IsBodyHtml = true;
        sm.Send(mm);

       
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (TextBox4.Text == "")
        {
            Response.Write("<script>alert('Please Enter the Email id first')</script>");

        }

        else
        {
            generate_otp();

        }

    }
    
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        if (TextBox5.Text == "")
        {
            Response.Write("<script>alert('Please Enter the Otp')</script>");
        }

        else 
        {
            check_otp();
        }
    }
}

        
        