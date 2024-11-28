using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Odbc;
using System.Data.OleDb;
using System.Configuration;

public partial class Leave_Details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sriha\OneDrive\Desktop\Student_Attendence1\App_Data\Attendance.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();

        if (!IsPostBack)
        {
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }





    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Staff_Page.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Leave_form where  Leave_Date='" + TextBox1.Text + "' ";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter ds = new SqlDataAdapter(cmd);
        ds.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
                foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
            int applicationid = Convert.ToInt32(row.Cells[1].Text);
            if (status.Checked)
            {
                UpdateRow(applicationid, "Accepted");
            }
            else
            {
                UpdateRow(applicationid, "Reject");

            }
        }
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();

    }

    private void UpdateRow(int ID, String sts)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update Leave_form set Status='" + sts + "' where ID=" + ID;
        cmd.ExecuteNonQuery();

    }
    
}