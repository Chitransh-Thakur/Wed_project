﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Weedingg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddGuest.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("SendInvite.aspx");       
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.greetingsisland.com/invitations/wedding");
    }
}