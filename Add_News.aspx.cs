using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Add_News : System.Web.UI.Page
{
    string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            query.Visible = false;
            signup.Visible = false;
            dropdown2.Visible = false;
            news1.Visible = false;

            if (Session["user_name"] != null)
            {
                label1.Text = "Welcome , " + (string)Session["user_name"];
                Boolean admin = (Boolean)Session["admin"];
                login.Visible = false;
                dropdown2.Visible = true;
                if (admin == true)
                {
                    signup.Visible = true;
                    query.Visible = true;
                    news1.Visible = true;
                }
            }
        }
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        DateTime d = DateTime.Now;
        SqlConnection con = new SqlConnection(cons);
        SqlCommand cmd = new SqlCommand("Insert_News");
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@News_Message", news.Text);
        cmd.Parameters.AddWithValue("@Date_News",d );
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script> alert('News Successfully Added'); </script>");
        news.Text = "";
    }
    protected void dropdown2_SelectedIndexChanged(object sender, EventArgs e)
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