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

public partial class Present : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sriha\OneDrive\Desktop\Student_Attendence1\App_Data\Attendance.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    string date = DateTime.Now.ToString("dd-MM-yyyy");
    TextBox1.Text = date;
    
    
    }
    protected void viewbtn_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Stddetails where Dept='"+DropDownList2.SelectedItem.Text+"'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter ds = new SqlDataAdapter(cmd);
        ds.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach(GridViewRow row in GridView1.Rows)
        {
            String name = row.Cells[0].Text;
          string  Register_num = row.Cells[1].Text;
            string  Dept = row.Cells[2].Text;
            RadioButton rbtn1 = row.Cells[3].FindControl("RadioButton1") as RadioButton;
            RadioButton rbtn2 = row.Cells[3].FindControl("RadioButton2") as RadioButton;

            string status;
            if(rbtn1.Checked)
            {
                status="Present";
            }
            else{
                status="Absent";
            }
            String date=DateTime.Now.ToString("dd-MM-yyyy");
            saveattend(name,Register_num,Dept,status,date);
    }
    }
    private void saveattend(string name, string Register_num, string Dept, string status, string date)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into stdAttendence values('"+name+"','"+Register_num+"','"+Dept+"','"+status+"')";
        cmd.ExecuteNonQuery();

        DataTable dt = new DataTable();
        SqlDataAdapter ds = new SqlDataAdapter(cmd);
        ds.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}
