using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class changepassword : System.Web.UI.Page
{
    SqlDataAdapter adp;
    DataSet ds;
    static bool xy;
    string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            dropdown.Visible = false;
            signup.Visible = false;
            query.Visible = false;
            news.Visible = false;
            xy = false;
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
            }
            txt_new_password.Enabled = false;
            txt_retype_new_password.Enabled = false;
        }

    }


    protected void savechange_Click(object sender, EventArgs e)
    {
        if (xy == false)
        {
            adp = new SqlDataAdapter("Get_Member_By_Id", cons);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.Add(new SqlParameter("@Flat_No", System.Data.SqlDbType.NVarChar));
            adp.SelectCommand.Parameters["@Flat_No"].Value = (string)Session["user_name"];
            adp.SelectCommand.Parameters.Add(new SqlParameter("@Password", System.Data.SqlDbType.NVarChar));
            adp.SelectCommand.Parameters["@Password"].Value = txt_password.Text;
            ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                xy = true;
                txt_retype_new_password.Enabled = true;
                txt_new_password.Enabled = true;
                txt_password.Enabled = false;
            }
            else
            {
                Response.Write("<script> alert('Incorrect Password'); </script>");
            }
        }
        else if(xy==true)
        {
            using (SqlConnection con = new SqlConnection(cons))
            {
                using (SqlCommand cmd = new SqlCommand("Update_Password"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("Flat_No", (string)Session["user_name"]);
                    cmd.Parameters.AddWithValue("Password", txt_new_password.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    xy = false;
                }
            }
            Response.Write("<script> alert('password Updated Successfully'); </script>");
        }
        
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