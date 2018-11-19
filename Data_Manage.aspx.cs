using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Data_Manage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dropdown.Visible = false;
        signup.Visible = false;
        query.Visible = false;
        news.Visible = false;
        if (!IsPostBack)
        {
            dropdown.Visible = false;
            if (Session["user_name"] != null)
            {
                label1.Text = "Welcome , " + (string)Session["user_name"];
                Boolean admin = (Boolean)Session["admin"];
                login.Visible = false;
                dropdown.Visible = true;
                if (admin == true)
                {
                    signup.Visible = true;
                    query.Visible = true;
                    news.Visible = true;
                }
            }
            else
            {
                Response.Redirect("unauthorized.aspx");
            }
        }
    }

    protected void dropdown5_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList list = (DropDownList)sender;
        string value = (string)list.SelectedValue;
        if (value.Equals("Logout"))
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }
        if (value.Equals("Personal Information"))
        {
            Response.Redirect("myaccount.aspx");
        }
        if (value.Equals("Change Password"))
        {
            Response.Redirect("changepassword.aspx");
        }
    }
}