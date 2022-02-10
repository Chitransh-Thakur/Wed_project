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
          
        }
    }
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.FileName == "")
        {
            Response.Write("<script lang='JavaScript'> alert('Select the file first')</script>");
        }
        else
        {
            FileUpload1.SaveAs(Server.MapPath("~") + "//upload//" + FileUpload1.FileName);
            Label1.Text = FileUpload1.FileName;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.FileName == "")
        {
            Response.Write("<script lang='JavaScript'> alert('Select the file first')</script>");
        }

        else
        {
            Label1.Text = FileUpload1.FileName;
            Image1.ImageUrl = "~/upload/" + Label1.Text;
        }
    }
}