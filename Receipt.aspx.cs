using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Receipt : System.Web.UI.Page
{
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
                    signup.Visible = true;
                    query.Visible = true;
                    news.Visible = true;
                }
            }
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt16(pid.Text);
        DataTable dt = new DataTable();
        string societyName = "Swaminarayan Park";

        string cons = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlDataAdapter adp = new SqlDataAdapter("Get_Payment_By_No", cons);
        adp.SelectCommand.CommandType = CommandType.StoredProcedure;
        adp.SelectCommand.Parameters.Add(new SqlParameter("@Payment_Id", System.Data.SqlDbType.SmallInt));
        adp.SelectCommand.Parameters["@Payment_Id"].Value = id;
        adp.SelectCommand.Parameters.Add(new SqlParameter("@Flat_No", System.Data.SqlDbType.NVarChar));
        adp.SelectCommand.Parameters["@Flat_No"].Value = (string)Session["user_name"];
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            dt = ds.Tables[0];

            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    StringBuilder sb = new StringBuilder();

                    //Generate Invoice (Bill) Header.
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                    sb.Append("<tr><td align='center' colspan = '2'><b>Total Bill</b></td></tr>");
                    sb.Append("<tr><td></td>");
                    sb.Append("<td align = 'right'><b>Date: </b>");
                    sb.Append(dt.Rows[0]["Date_Payment"]);
                    sb.Append("</td></tr>");
                    sb.Append("<tr><td colspan = '2'><b>Society Name: </b>");
                    sb.Append(societyName);
                    sb.Append("</td></tr>");
                    sb.Append("</table>");
                    sb.Append("<br />");

                    //Generate Invoice (Bill) Items Grid.
                    sb.Append("<table border = '1'>");
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<th>");
                        sb.Append(column.ColumnName);
                        sb.Append("</th>");
                    }
                    sb.Append("</tr>");
                    foreach (DataRow row in dt.Rows)
                    {
                        sb.Append("<tr>");
                        foreach (DataColumn column in dt.Columns)
                        {
                            sb.Append("<td>");
                            sb.Append(row[column]);
                            sb.Append("</td>");
                        }
                        sb.Append("</tr>");
                    }
                    /*sb.Append("<tr><td align = 'right' colspan = '");
                    sb.Append(dt.Columns.Count - 1);
                    sb.Append("'>Total</td>");
                    sb.Append("<td>");
                    sb.Append(dt.Compute("sum(Amount)", ""));
                    sb.Append("</td>");*/
                    sb.Append("</table>");

                    //Export HTML String as PDF.
                    StringReader sr = new StringReader(sb.ToString());
                    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    htmlparser.Parse(sr);
                    pdfDoc.Close();
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=Invoice_" + (string)Session["user_name"] + ".pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    //Response.End();
                }
            }
        }
        else
        {
            Response.Write("<script> alert('No such Payment Id exist'); </script>");
        }

    }
    protected void dropdown_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList list = (DropDownList)sender;
        string value = (string)list.SelectedValue;
        if (value.Equals("Logout"))
        {
            //Session.Clear();
            //Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Session.Abandon();
            /*FormsAuthentication.SignOut();
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();*/
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