using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Contact : System.Web.UI.Page
{
    //SqlDataAdapter adp;
    //DataSet ds;
    string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        signup.Visible = false;
        dropdown.Visible = false;
        query.Visible = false;
        news.Visible = false;
        if (!IsPostBack)
        {
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
        }
    }
    
    protected void XYZ(object sender, EventArgs e)
    {
        int x = 0;
        if(txt_name.Text.ToString().Equals("") || txt_email.Text.ToString().Equals("") || txt_mobile.Text.ToString().Equals("")
            || txt_description.Text.ToString().Equals(""))
        {
            x = 1;
            Response.Write("<script> alert('Please Fill up All Details'); </script>");
        }
        DateTime current = DateTime.Now;
        SqlConnection con = new SqlConnection(cons);
        SqlCommand cmd = new SqlCommand("Insert_Query");
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@Full_Name", txt_name.Text);
        cmd.Parameters.AddWithValue("@Mobile_No", txt_mobile.Text);
        cmd.Parameters.AddWithValue("@Email_Id", txt_email.Text);
        cmd.Parameters.AddWithValue("@Message", txt_description.Text);
        cmd.Parameters.AddWithValue("@Date_Of_Query", current);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        if(x==0)
        {
            Response.Write("<script> alert('Your Record Has been Submitted'); </script>");
            txt_description.Text = "";
            txt_mobile.Text = "";
            txt_email.Text = "";
            txt_name.Text = "";
        }
    }

    protected void dropdown4_SelectedIndexChanged(object sender, EventArgs e)
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