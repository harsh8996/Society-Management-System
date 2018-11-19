using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Display_queries : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        query.Visible = false;
        dropdown.Visible = false;
        signup.Visible = false;
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
                BindGrid();
            }
        }
        //BindGrid();
    }
    public void BindGrid()
    {
        string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter adp = new SqlDataAdapter("Get_All_Query", cons);
        adp.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            gridview.DataSource = ds.Tables[0];
            gridview.DataBind();
        }
    }
    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int queryid = Convert.ToInt32(gridview.DataKeys[e.RowIndex].Values[0]);
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter adp = new SqlDataAdapter("Delete_Query", constr);
        adp.SelectCommand.CommandType = CommandType.StoredProcedure;
        adp.SelectCommand.Parameters.Add(new SqlParameter("@Query_Id", System.Data.SqlDbType.Int));
        adp.SelectCommand.Parameters["@Query_Id"].Value = queryid;
        DataSet ds = new DataSet();
        adp.Fill(ds);
        this.BindGrid();
    }
    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != gridview.EditIndex)
        {
            (e.Row.Cells[0].Controls[0] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
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