using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        query.Visible = false;
        signup.Visible = false;
        dropdown.Visible = false;
        news.Visible = false;
        if (!IsPostBack)
        {
            if(Session["user_name"]!=null)
            {
                label1.Text = "Welcome , " + (string)Session["user_name"];
                Boolean admin = (Boolean)Session["admin"];
                logout.Visible = true;
                login.Visible = false;
                dropdown.Visible = true;
                if(admin==true)
                {
                    query.Visible = true;
                    news.Visible = true;
                    signup.Visible = true;
                }
            }
        }
        
        /*if (Request.QueryString["Name"] != null)
        {
            login.Visible = false;
            Session["user_name"]= Request.QueryString["Name"];
            label1.Text = "Welcome , " + Request.QueryString["Name"];
        }
        if(Request.QueryString["admin"]!=null)
        {
            signup.Visible = true;
            login.Visible = false;
        }*/
    }

    protected void dropdown6_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList list = (DropDownList)sender;
        string value = (string)list.SelectedValue;
        if (value.Equals("Logout"))
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }
        if(value.Equals("Personal Information"))
        {
            Response.Redirect("myaccount.aspx");
        }
        if(value.Equals("Change Password"))
        {
            Response.Redirect("changepassword.aspx");
        }
    }
}