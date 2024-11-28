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

public partial class Leave_Form : System.Web.UI.Page
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
    protected void Addbtn_Click(object sender, EventArgs e)
    {
       
      

        //year
        for (int i = 0; i < CheckBoxList2.Items.Count; i++)
        {

            if (CheckBoxList2.Items[i].Selected)
            {
                yrtxt.Text += CheckBoxList2.Items[i].Text + ",";
            }
        }

           SqlCommand cmd = con.CreateCommand();
           cmd.CommandType = CommandType.Text;
           cmd.CommandText = "Insert into Leave_form values('" + Nametxt.Text + "','" + Rollnumtxt.Text + "','" + Mblenumtxt.Text + "','" + Mailidtxt.Text + "','" + DropDownList1.SelectedItem.Text + "','" + yrtxt.Text + "','" + Roflevtxt.Text + "','" + datetxt.Text + "','" + noofdaystxt.Text + "','" + frmdatetxt.Text + "','" + todatetxt.Text + "','" + statustxt.Text + "')";
           cmd.ExecuteNonQuery();

        Nametxt.Text = "";
        Rollnumtxt.Text = "";
        Mblenumtxt.Text="";
        Mailidtxt.Text = "";
   
        yrtxt.Text = "";
        Roflevtxt.Text="";
        datetxt.Text="";
        noofdaystxt.Text = "";
        frmdatetxt.Text = "";
        todatetxt.Text = "";
        statustxt.Text = "";
        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "swal('Submited!','Leave form Submited Succesfully','success')", true);
           

           display(); 

    }

    void display()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Leave_form";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter ds = new SqlDataAdapter(cmd);
        ds.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_page.aspx");
    }
}