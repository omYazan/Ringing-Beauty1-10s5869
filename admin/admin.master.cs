using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if ((string)Session["utype"] == "Admin" && Session["uname"] != null)
        {
            //btnlogout.Visible = true;
            // btnLogin.Visible = false;
            lblname.Text = "Welcome! " + Session["fname"].ToString();
            // Button1.Text ="Welcome: " +  Session["Username"].ToString().ToUpper()  ;
        }
        else
        {
            //btnlogout.Visible = false;
            //btnLogin.Visible = true;
            Session["utype"] = null;
            Session["uname"] = null;
            Response.Redirect("~/admin/login.aspx");
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["utype"] = null;
        Session["uname"] = null;
        Response.Redirect("~/admin/login.aspx");
    }
}
