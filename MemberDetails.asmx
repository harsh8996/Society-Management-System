<%@ WebService Language="C#" Class="MemberDetails" %>

using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using System.Collections.Generic;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class MemberDetails : System.Web.Services.WebService
{

    [WebMethod]
    public void GetData(string Flat_No)
    {
        Member mem = new Member();
        string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter adp = new SqlDataAdapter("Get_Member_By_Flat_No", cs);
        adp.SelectCommand.CommandType = CommandType.StoredProcedure;
        adp.SelectCommand.Parameters.Add(new SqlParameter("@Flat_No", System.Data.SqlDbType.NVarChar));
        adp.SelectCommand.Parameters["@Flat_No"].Value = Flat_No;
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataTable dt = ds.Tables[0];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                mem.Full_Name = Convert.ToString(dt.Rows[i]["Full_Name"]);
                mem.Flat_No = Convert.ToString(dt.Rows[i]["Flat_No"]);
                mem.Mobile_No = Convert.ToString(dt.Rows[i]["Mobile_No"]);
                mem.Email_Id = Convert.ToString(dt.Rows[i]["Email_Id"]);
                mem.Occupation = Convert.ToString(dt.Rows[i]["Occupation"]);
                bool x = Convert.ToBoolean(dt.Rows[i]["Is_Rent"]);
                if (x == true)
                {
                    mem.Rent = "Rent";
                }
                else
                {
                    mem.Rent = "Owner";
                }
            }
        }
        /*using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("Select * from Members_Details where Flat_No = @Flat_No",con);
            SqlParameter param = new SqlParameter()
            {
                ParameterName = "@Flat_No",
                Value = Flat_No
            };
            cmd.Parameters.Add(param);
            con.Open();
            SqlDataReader rdr =  cmd.ExecuteReader();
            while(rdr.Read())
            {
                mem.Full_Name = Convert.ToString(rdr["Full_Name"]);
                mem.Flat_No = Convert.ToString(rdr["Flat_No"]);
                mem.Mobile_No = Convert.ToString(rdr["Mobile_No"]);
                mem.Email_Id = Convert.ToString(rdr["Email_Id"]);
                mem.Occupation = Convert.ToString(rdr["Occupation"]);
                bool x = Convert.ToBoolean(rdr["Is_Rent"]);
                if(x==true)
                {
                    mem.Rent = "Rent";
                }
                else
                {
                    mem.Rent = "Owner";
                }
            }
        }*/
        JavaScriptSerializer js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(mem));
    }
    [WebMethod]
    public void GetMemberByName(string Full_Name)
    {
        List<Member> listmember = new List<Member>();


        string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter adp = new SqlDataAdapter("Search_Members", cs);
        adp.SelectCommand.CommandType = CommandType.StoredProcedure;
        adp.SelectCommand.Parameters.Add(new SqlParameter("@Flat_No", System.Data.SqlDbType.NVarChar));
        adp.SelectCommand.Parameters["@Flat_No"].Value = Full_Name;
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataTable dt = ds.Tables[0];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Member mem = new Member();
                mem.Full_Name = Convert.ToString(dt.Rows[i]["Full_Name"]);
                mem.Flat_No = Convert.ToString(dt.Rows[i]["Flat_No"]);
                mem.Mobile_No = Convert.ToString(dt.Rows[i]["Mobile_No"]);
                mem.Email_Id = Convert.ToString(dt.Rows[i]["Email_Id"]);
                mem.Occupation = Convert.ToString(dt.Rows[i]["Occupation"]);
                bool x = Convert.ToBoolean(dt.Rows[i]["Is_Rent"]);
                if (x == true)
                {
                    mem.Rent = "Rent";
                }
                else
                {
                    mem.Rent = "Owner";
                }
                listmember.Add(mem);
            }
        }
        JavaScriptSerializer js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(listmember));
    }
    [WebMethod]
    public void GetNews()
    {
        List<News> listmember = new List<News>();


        string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter adp = new SqlDataAdapter("Get_News", cs);
        adp.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataTable dt = ds.Tables[0];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                News mem = new News();
                mem.News_Message = Convert.ToString(dt.Rows[i]["News_Message"]);
                
                listmember.Add(mem);
            }
        }
        JavaScriptSerializer js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(listmember));
    }
}