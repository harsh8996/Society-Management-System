using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class Signup : System.Web.UI.Page
{
    SqlDataAdapter adp;
    DataSet ds;
    string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    bool xy;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            query.Visible = false;
            signup.Visible = false;
            dropdown.Visible = false;
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
            }
        }
    }
    protected void mobile(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length < 10 || args.Value.Length > 10)
        {
            xy = false;
            args.IsValid = false;
        }
        else
        {
            xy = true;
            args.IsValid = true;
        }
    }

    protected void Add(object sender, EventArgs e)
    {
        int chk=chkValidation();
        if(chk==1 && xy==true)
        {
            DateTime current = DateTime.Now;
            string ss = current.ToString();
            bool x;
            string path, filename, extension;
            filename = "";
            extension = "";
            path = "";
            if (docs.HasFile)
            {
                filename = Path.GetFileNameWithoutExtension(docs.PostedFile.FileName);
                extension = Path.GetExtension(docs.PostedFile.FileName);
                path = "~/Uploads/" + filename + extension;
                docs.SaveAs(Server.MapPath(path));
            }
            if (rent.SelectedItem.ToString().Equals("Rent"))
            {
                x = true;
            }
            else
            {
                x = false;
            }
            adp = new SqlDataAdapter("Get_Member_By_Flat_No", cons);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.Add(new SqlParameter("@Flat_No", System.Data.SqlDbType.NVarChar));
            adp.SelectCommand.Parameters["@Flat_No"].Value = txt_flat_no.Text;
            ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script> alert('This Flat No is already registered'); </script>");
            }
            else
            {
                SqlConnection con = new SqlConnection(cons);
                SqlCommand cmd = new SqlCommand("Insert_Members");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@Flat_No", txt_flat_no.Text);
                cmd.Parameters.AddWithValue("@Full_Name", txt_full_name.Text);
                cmd.Parameters.AddWithValue("@Password", txt_password.Text);
                cmd.Parameters.AddWithValue("@Mobile_No", txt_mobile.Text);
                cmd.Parameters.AddWithValue("@Alternative_Mobile_No", txt_alt_mobile.Text);
                cmd.Parameters.AddWithValue("@Email_Id", txt_email_id.Text);
                cmd.Parameters.AddWithValue("@Is_Rent", x);
                cmd.Parameters.AddWithValue("@Date_Of_Birth", current);
                cmd.Parameters.AddWithValue("@Gender", radio.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Type_Member", type_member.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Date_Regestration", current);
                cmd.Parameters.AddWithValue("@Two_Wheeler", Convert.ToInt16(txt_no_two.Text));
                cmd.Parameters.AddWithValue("@Four_Wheeler", Convert.ToInt16(txt_no_four.Text));
                cmd.Parameters.AddWithValue("@No_Plate", txt_vehicle_no.Text);
                cmd.Parameters.AddWithValue("@Document", path);
                cmd.Parameters.AddWithValue("@Occupation", occupation.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                /*
                MailMessage mail = new MailMessage();
                mail.To.Add(txt_email_id.Text);
                mail.From = new MailAddress("sonivatsal111@gmail.com", "Welcome Swaminarayan Park-2", System.Text.Encoding.UTF8);
                mail.Subject = "Welcome";
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                mail.Body = "Thank You for sign in to our website";
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;
                SmtpClient client = new SmtpClient();
                client.Credentials = new System.Net.NetworkCredential("sonivatsal111@gmail.com", "8511218967vat");
                client.Send(mail);*/
                // turn on less secured app 
                Response.Write("<script> alert('Data Added Successfully'); </script>");
                abc();
            }
        }
        
    }
    protected void Reset(object sender, EventArgs e)
    {
        abc();
    }
    public void abc()
    {
        txt_flat_no.Text = "";
        txt_full_name.Text = "";
        txt_mobile.Text = "";
        txt_alt_mobile.Text = "";
        txt_confirm_password.Text = "";
        txt_dob.Text = "";
        txt_email_id.Text = "";
        txt_no_four.Text = "";
        txt_no_two.Text = "";
        txt_password.Text = "";
        txt_vehicle_no.Text = "";
        radio.SelectedIndex = 0;
        type_member.SelectedIndex = 0;
    }
    private int chkValidation()
    {
        if(txt_flat_no.Text.ToString().Equals("") || txt_full_name.Text.ToString().Equals("") || txt_mobile.Text.ToString().Equals("")
            || txt_email_id.Text.ToString().Equals("")|| txt_password.Text.ToString().Equals("") || txt_confirm_password.Text.ToString().Equals("") 
            ||  txt_alt_mobile.Text.ToString().Equals(""))
        {
            Response.Write("<script> alert('Please Fill up Necessary Details'); </script>");
            return 0;
        }
        return 1;
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