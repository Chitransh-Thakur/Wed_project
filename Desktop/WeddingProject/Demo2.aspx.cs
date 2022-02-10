using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Demo2 : System.Web.UI.Page
{
    SqlConnection sc;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            display();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[3]
        { 
            new DataColumn("id",typeof(int)),
            new DataColumn("name",typeof(string)),
            new DataColumn("age",typeof(int))
        });

        dt.Rows.Add(1, "chitransh", 21);
        dt.Rows.Add(2, "salman", 20);

        GridView1.DataSource = dt;
        GridView1.DataBind();
   }

    protected void display()
    {
        
        string s = ConfigurationManager.AppSettings["db12"];
        sc = new SqlConnection(s);
        sc.Open();

        DataSet ds = new DataSet();
        string q = "select * from videodb";
        SqlDataAdapter adp = new SqlDataAdapter(q,sc);
        adp.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();

    }

    protected void Click(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        display();
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}

