using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\sriha\OneDrive\Desktop\Student_Attendence1\App_Data\Attendance.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Stddetails where Student_ID='" + mailtxt.Text + "'";
        cmd.ExecuteNonQuery();
        DataSet dss = new DataSet();
        SqlDataAdapter daa = new SqlDataAdapter(cmd);
        daa.Fill(dss);
        String Emp_id;
        String Passwrd;
        if (dss.Tables[0].Rows.Count > 0)
        {
            Emp_id = dss.Tables[0].Rows[0]["Student_ID"].ToString();
            Passwrd = dss.Tables[0].Rows[0]["Password"].ToString();

           
            if (Emp_id == mailtxt.Text && Passwrd == passtxt.Text)
            {

                Session["Student_ID"] = mailtxt.Text;
                Response.Redirect("Student_page.aspx");


            }
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "swal('Error!',' Enter Correct Username & password','warning')", true);

        }
        if (mailtxt.Text == "Hod" && passtxt.Text == "Hod@123")
        {
            Response.Redirect("Staff_Page.aspx");
        }
        else
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "swal('Error!',' Enter Correct Username & password','warning')", true);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Std_Add.aspx");
    }
}