using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class transcript : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-NRN585P\\SQLEXPRESS01;Initial Catalog=s;Integrated Security=True");
        SqlCommand cmd = null;
        conn.Open();
        String Query = "Select * FROM transcript INNER JOIN courses ON courses.courseID = transcript.courseID where StudentID='" + 200473 + "' AND  transcript.semester='" + "spring 2022" + "';";
        cmd = new SqlCommand(Query, conn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        SqlDataReader sdr = cmd.ExecuteReader();
        sdr.Read();
        String courseID = sdr[7].ToString();
        String chrs = sdr[3].ToString();
        String grade = sdr[4].ToString();
        Label1.Text = courseID;
        Label2.Text = chrs;
        Label3.Text = grade;
        sdr.Read();
        courseID = sdr[7].ToString();
        chrs = sdr[3].ToString();
        grade = sdr[4].ToString();
        Label4.Text = courseID;
        Label5.Text = chrs;
        Label6.Text = grade;
        sdr.Read();
        courseID = sdr[7].ToString();
        chrs = sdr[3].ToString();
        grade = sdr[4].ToString();
        Label7.Text = courseID;
        Label8.Text = chrs;
        Label9.Text = grade;
    }
}