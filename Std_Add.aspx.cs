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

public partial class Std_Add : System.Web.UI.Page
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
           cmd.CommandText = "Insert into Stddetails values('" + Nametxt.Text + "','" + Rollnumtxt.Text + "','" + Mblenumtxt.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + Dobtxt.Text + "','" + Mailidtxt.Text + "','" + DropDownList1.SelectedItem.Text + "','" + yrtxt.Text + "','" + Usnametxt.Text + "','" + passtxt.Text + "')";
           cmd.ExecuteNonQuery();

        Nametxt.Text = "";
        Mblenumtxt.Text="";
        Dobtxt.Text = "";
        Mailidtxt.Text = "";
        
        Usnametxt.Text = "";
        passtxt.Text = "";



           this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "swal('Registered!','Registered Succesfully','success')", true);

           display(); 

    }

    void display()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Stddetails";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter ds = new SqlDataAdapter(cmd);
        ds.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}

