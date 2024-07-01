using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class marks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string studentID = "200473";
        string semesterID = "Spring 2022";
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-NRN585P\\SQLEXPRESS01;Initial Catalog=s;Integrated Security=True");
        SqlCommand cmd = null;
        conn.Open();
        String Query = "Select * FROM Marks where studentID='" + studentID + "' AND semesterID='" + semesterID + "';";
        cmd = new SqlCommand(Query, conn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
    }
}