using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
public partial class Upload : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=I:\ASP project\Asp.net\Student_Attendence1\App_Data\Attendance.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/File/") + FileUpload1.FileName);
        }
        DataTable dt = new DataTable();
        dt.Columns.Add("Files", typeof(string));
        dt.Columns.Add("File_Type", typeof(string));
        foreach (string strfile in Directory.GetFiles(Server.MapPath("~/File/")))
        {
            FileInfo fi = new FileInfo(strfile);
            dt.Rows.Add(fi.Name, fi.Extension);
           
        }


        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "App/octect-stream";
            Response.AddHeader("content-disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/File/") + e.CommandArgument);
            Response.End();
        }
    }
}