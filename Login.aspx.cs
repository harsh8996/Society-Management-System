using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlDataAdapter adp;
    DataSet ds;
    string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void AdminLogin(object sender, EventArgs e)
    {
        if (admin_flat_no.Text == "" || admin_password.Text == "")
        {
            Response.Write("<script> alert('Please enter Flat No and Password '); </script>");
        }
        else
        {
            adp = new SqlDataAdapter("Get_Member_By_Id_Password", cons);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.Add(new SqlParameter("@Flat_No", System.Data.SqlDbType.NVarChar));
            adp.SelectCommand.Parameters["@Flat_No"].Value = admin_flat_no.Text;
            adp.SelectCommand.Parameters.Add(new SqlParameter("@Password", System.Data.SqlDbType.NVarChar));
            adp.SelectCommand.Parameters["@Password"].Value = admin_password.Text;
            adp.SelectCommand.Parameters.Add(new SqlParameter("@Type_Member", System.Data.SqlDbType.NVarChar));
            adp.SelectCommand.Parameters["@Type_Member"].Value = type_member.SelectedItem.ToString();
            ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["user_name"] = admin_flat_no.Text;
                Session["admin"] = true;
                Response.Redirect("Home.aspx?Name=" + admin_flat_no.Text + "&admin=" + 1);
            }
            else
            {
                Response.Write("<script> alert('Invalid Flat No or Password or Invalid Designation') </script>");
            }
        }
    }
    protected void MemberLogin(object sender, EventArgs e)
    {
        if (mem_flat_no.Text == "" || mem_password.Text == "")
        {
            Response.Write("<script> alert('Please enter Flat No and Password '); </script>");
        }
        else
        {
            adp = new SqlDataAdapter("Get_Member_By_Id_Password", cons);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.Add(new SqlParameter("@Flat_No", System.Data.SqlDbType.NVarChar));
            adp.SelectCommand.Parameters["@Flat_No"].Value = mem_flat_no.Text;
            adp.SelectCommand.Parameters.Add(new SqlParameter("@Password", System.Data.SqlDbType.NVarChar));
            adp.SelectCommand.Parameters["@Password"].Value = mem_password.Text;
            adp.SelectCommand.Parameters.Add(new SqlParameter("@Type_Member", System.Data.SqlDbType.NVarChar));
            adp.SelectCommand.Parameters["@Type_Member"].Value = "Member";
            ds = new DataSet();
            adp.Fill(ds);
            if(ds.Tables[0].Rows.Count>0)
            {
                Session["user_name"] = mem_flat_no.Text;
                Session["admin"] = false;
                Response.Redirect("Home.aspx?Name=" + mem_flat_no.Text);
            }
            else
            {
                Response.Write("<script> alert('Invalid Flat No or Password') </script>");
            }
        }
    }
}