using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Configuration;

public partial class myaccount : System.Web.UI.Page
{
    string a;
    string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
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
                string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                SqlDataAdapter adp = new SqlDataAdapter("Get_Member_By_Flat_No", cons);
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                adp.SelectCommand.Parameters.Add(new SqlParameter("@Flat_No", System.Data.SqlDbType.NVarChar));
                adp.SelectCommand.Parameters["@Flat_No"].Value = (string)Session["user_name"];
                DataSet ds = new DataSet();
                adp.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    int index, index1;
                    string gndr = ds.Tables[0].Rows[0]["Gender"].ToString();
                    string rnt = ds.Tables[0].Rows[0]["Is_Rent"].ToString();

                    if (gndr.Contains("Male"))
                        index = 0;
                    else
                        index = 1;

                    if (rnt.Equals("False"))
                        index1 = 0;
                    else
                        index1 = 1;

                    txt_flat_no.Text = ds.Tables[0].Rows[0]["Flat_No"].ToString();
                    txt_full_name.Text = ds.Tables[0].Rows[0]["Full_Name"].ToString();
                    txt_email_id.Text = ds.Tables[0].Rows[0]["Email_Id"].ToString();
                    txt_dob.Text = ds.Tables[0].Rows[0]["Date_Of_Birth"].ToString();
                    txt_mobile.Text = ds.Tables[0].Rows[0]["Mobile_No"].ToString();
                    txt_alt_mobile.Text = ds.Tables[0].Rows[0]["Alternative_Mobile_No"].ToString();
                    radio.SelectedIndex = index;
                    rent.SelectedIndex = index1;
                    type_member.SelectedValue = ds.Tables[0].Rows[0]["Type_Member"].ToString();
                    occupation.Text= ds.Tables[0].Rows[0]["Occupation"].ToString();
                }
        
    }

            /*string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(cons);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;       
            con.Open();
            cmd.CommandText = "SELECT Flat_No, Full_Name, Password, Mobile_No, Alternative_Mobile_No, Email_Id, Is_Rent, Date_Of_Birth, Gender, Type_Member, Date_Regestration FROM Members_Details"; 
            cmd.Parameters.AddWithValue("Flat_NO", txt_flat_no.Text);
            string a = txt_flat_no.Text;
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                txt_flat_no.Text = sdr["Flat_No"].ToString();
                txt_full_name.Text = sdr["Full_Name"].ToString();
                txt_email_id.Text = sdr["Email_Id"].ToString();
                txt_dob.Text = sdr["Date_Of_Birth"].ToString();
                txt_mobile.Text = sdr["Mobile_No"].ToString();
                txt_alt_mobile.Text = sdr["Alternative_Mobile_No"].ToString();
                txt_gender.Text = sdr["Gender"].ToString();
                txt_member.Text = sdr["Is_Rent"].ToString();
                txt_gender.Text = sdr["Gender"].ToString();
                txt_mem_type.Text = sdr["Type_Member"].ToString();
            }
            con.Close();*/
        }
    }
    protected void Update(object sender, EventArgs e)
    {
        int chk = chkValidation();
        if (chk == 1)
        {
            bool x;
            if(rent.SelectedItem.ToString().Equals("Owner"))
            {
                x = false;
            }
            else
            {
                x = true;
            }
             using (SqlConnection con = new SqlConnection(cons))
             {
                 using (SqlCommand cmd = new SqlCommand("Update_Members"))
                 {
                     cmd.CommandType = CommandType.StoredProcedure;
                     cmd.Connection = con;
                     cmd.Parameters.AddWithValue("Flat_No", txt_flat_no.Text);
                     cmd.Parameters.AddWithValue("Full_Name", txt_full_name.Text);
                     cmd.Parameters.AddWithValue("Mobile_No", txt_mobile.Text);
                     cmd.Parameters.AddWithValue("Alternative_Mobile_No", txt_alt_mobile.Text);
                     cmd.Parameters.AddWithValue("Email_Id", txt_email_id.Text);
                     cmd.Parameters.AddWithValue("Is_Rent", x);
                     cmd.Parameters.AddWithValue("Date_Of_Birth", txt_dob.Text);
                     cmd.Parameters.AddWithValue("Gender", radio.SelectedItem.ToString());
                     cmd.Parameters.AddWithValue("Type_Member", type_member.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("Occupation", occupation.Text);
                    con.Open();
                     cmd.ExecuteNonQuery();
                     con.Close();
                 }
             }

            Response.Write("<script> alert('Data Updated Successfully'); </script>");

            /*DateTime current = DateTime.Now;
            string ss = current.ToString();
            bool x;
            if (txt_no_four.Text.ToString().Equals(""))
            {
                txt_no_four.Text = "0";
            }
            if (txt_no_two.Text.ToString().Equals(""))
            {
                txt_no_two.Text = "0";
            }
            string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(cons);
            SqlCommand cmd = new SqlCommand("Insert_Members");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Flat_No", txt_flat_no.Text);
            cmd.Parameters.AddWithValue("@Full_Name", txt_full_name.Text);
            cmd.Parameters.AddWithValue("@Mobile_No", txt_mobile.Text);
            cmd.Parameters.AddWithValue("@Alternative_Mobile_No", txt_alt_mobile.Text);
            cmd.Parameters.AddWithValue("@Email_Id", txt_email_id.Text);
            cmd.Parameters.AddWithValue("@Is_Rent", txt_member.Text);
            cmd.Parameters.AddWithValue("@Date_Of_Birth", txt_dob.Text);
            cmd.Parameters.AddWithValue("@Gender", txt_gender.Text);
            cmd.Parameters.AddWithValue("@Type_Member", txt_mem_type.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();*/

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
    private int chkValidation()
    {
        if (txt_flat_no.Text.ToString().Equals("") || txt_full_name.Text.ToString().Equals("") || txt_mobile.Text.ToString().Equals("")
            || txt_email_id.Text.ToString().Equals("") || txt_alt_mobile.Text.ToString().Equals(""))
        {
            Response.Write("<script> alert('Please Fill up Necessary Details'); </script>");
            return 0;
        }
        return 1;
    }
}