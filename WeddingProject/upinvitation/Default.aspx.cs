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
        string q = ConfigurationManager.AppSettings["db"];
        cn = new SqlConnection(q);
        cn.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.FileName == "" || TextBox1.Text=="")
        {
            Response.Write("<script lang='JavaScript'> alert('Enter Email or Select the file')</script>");
        }
        else
        {
            FileUpload1.SaveAs(Server.MapPath(".") + "//upload//" + FileUpload1.FileName);
            Label1.Text = FileUpload1.FileName;

            connectdb();
            string s = "update wedding_regdb set img = '" + Label1.Text + "' where email = '" + TextBox1.Text + "'";
            cm = new SqlCommand(s, cn);
            cm.ExecuteNonQuery();

            Response.Write("<script lang='JavaScript'> alert('Successfully Uploaded')</script>");
            
        }
    }
}