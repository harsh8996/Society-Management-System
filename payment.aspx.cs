using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
 
public partial class payment : System.Web.UI.Page
{
    string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            total.Text = "1000";
            query.Visible = false;
            signup.Visible = false;
            dropdown12.Visible = false;
            news.Visible = false;

            if (Session["user_name"] != null)
            {
				txt_flat_no.Text=(string)Session["user_name"];
                label1.Text = "Welcome , " + (string)Session["user_name"];
                Boolean admin = (Boolean)Session["admin"];
                login.Visible = false;
                dropdown12.Visible = true;
                if (admin == true)
                {
                    signup.Visible = true;
                    query.Visible = true;
                    news.Visible = true;
                }
            }
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList list = (DropDownList)sender;
        string value = (string)list.SelectedValue;
        int tot = Convert.ToInt32(value) * 1000;
        total.Text = tot.ToString();
    }


    protected void pay_Click(object sender, EventArgs e)
    {
        DateTime d = DateTime.Now;

        SqlConnection con = new SqlConnection(cons);
        SqlCommand cmd = new SqlCommand("Insert_Payment");
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@Flat_No", txt_flat_no.Text);
        cmd.Parameters.AddWithValue("@No_Month", Convert.ToInt16(DropDownList2.SelectedValue));
        cmd.Parameters.AddWithValue("@Amount", Convert.ToInt32(total.Text));
        cmd.Parameters.AddWithValue("@Mode_Of_Payment", "Online");
        cmd.Parameters.AddWithValue("@Date_Payment", d);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
       
        Response.Redirect("Bill_Account.aspx");
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