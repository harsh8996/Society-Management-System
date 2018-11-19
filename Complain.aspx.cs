using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

public partial class Complain : System.Web.UI.Page
{
    Databind_repeater dr;
    DataTable complain, solution;
    static string x = "-9999";
    string cons;
    SqlDataAdapter adp;
    DataSet ds;
    ArrayList arr = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
      
            signup.Visible = false;
            dropdown.Visible = false;
            query.Visible = false;
            news.Visible = false;

            if (Session["user_name"] != null)
            {
                label1.Text = "Welcome , " + (string)Session["user_name"];
                Boolean admin = (Boolean)Session["admin"];
                login.Visible = false;
                dropdown.Visible = true;
                if (admin == true)
                {
                    query.Visible = true;
                    signup.Visible = true;
                    news.Visible = true;
                }
                cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                adp = new SqlDataAdapter("Get_All_Complain", cons);
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                ds = new DataSet();
                adp.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    complain = ds.Tables[0];
                }
                else
                {
                    complain = new DataTable();
                }
                adp = new SqlDataAdapter("Get_All_Solution", cons);
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                ds = new DataSet();
                adp.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    solution = ds.Tables[0];
                }
                else
                {
                    solution = new DataTable();
                }
                dr = new Databind_repeater();
                arr = dr.Getdata(complain, solution);
                itemsRepeater.DataSource = arr;
                itemsRepeater.DataBind();
            }
            else
            {
                Response.Redirect("unauthorized.aspx");
            }
        
        
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "solution")
        {
            x = e.CommandArgument.ToString();
            lbl_popup_message.Text = "Solution Messge";
            popup.Show();
        }
    }
    protected void Add(object sender, EventArgs e)
    {
        popup_flat_no.Text = string.Empty;
        popup_message.Text = string.Empty;
        lbl_popup_message.Text = "Complain Message";
        popup.Show();
    }
    protected void cancel(object sender, EventArgs e)
    {
        x = "-9999";
        popup.Hide();
    }
    protected void Save(object sender, EventArgs e)
    {
        if (x != "-9999")
        {
            SqlConnection con = new SqlConnection(cons);
            SqlCommand cmd = new SqlCommand("Insert_Solution");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("Sol_Flat_No", popup_flat_no.Text);
            cmd.Parameters.AddWithValue("Solution_Message", popup_message.Text);
            cmd.Parameters.AddWithValue("Sol_Complain_Id", x);
            cmd.Parameters.AddWithValue("Date_Solution", "");
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            x = "-9999";
        }
        else
        {
            SqlConnection con = new SqlConnection(cons);
            SqlCommand cmd = new SqlCommand("Insert_Complain");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("Com_Flat_No", popup_flat_no.Text);
            cmd.Parameters.AddWithValue("Complain_Message", popup_message.Text);
            cmd.Parameters.AddWithValue("Date_Complain", "");
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        Response.Redirect(Request.RawUrl);
    }


    protected void dropdown1_SelectedIndexChanged(object sender, EventArgs e)
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