using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


public partial class Bill_Account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        query.Visible = false;
        signup.Visible = false;
        dropdown1.Visible = false;
        receipt.Visible = false;
        news.Visible = false;
        
            if (Session["user_name"] != null)
            {
                label1.Text = "Welcome , " + (string)Session["user_name"];
                Boolean admin = (Boolean)Session["admin"];
                login.Visible = false;
                dropdown1.Visible = true;
                if (admin == true)
                {
                    signup.Visible = true;
                    news.Visible = true;
                    query.Visible = true;
                }
            BindGrid();
            }
            else
            {
                Response.Redirect("unauthorized.aspx");
            }
    }
    public void BindGrid()
    {
        string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter adp = new SqlDataAdapter("Get_Payment_By_Id", cons);
        adp.SelectCommand.CommandType = CommandType.StoredProcedure;
        adp.SelectCommand.Parameters.Add(new SqlParameter("@Flat_No", System.Data.SqlDbType.NVarChar));
        adp.SelectCommand.Parameters["@Flat_No"].Value = (string)Session["user_name"];
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            receipt.Visible = true;
            gridview.DataSource = ds.Tables[0];
            gridview.DataBind();
        }
        else
        {
            lbl2.Text = "No History Found";
        }
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