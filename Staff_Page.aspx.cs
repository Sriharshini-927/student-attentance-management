﻿using System;
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

public partial class Staff_Page : System.Web.UI.Page
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
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Leave_form where Leave_Date='" + date + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter ds = new SqlDataAdapter(cmd);
        ds.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
}