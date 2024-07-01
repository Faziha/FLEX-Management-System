using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginScreen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9D1M6C\\SQLEXPRESS01;Initial Catalog=FacultyDB;Integrated Security=True");

        conn.Open();

        SqlCommand cm;

        string us = userName.Text;
        Session["Username"] = us;
        string pass = passWord.Text;
        Session["passWord"] = pass;

        string query = " select * from faculty where userName= '" + us + "' and userPass='" + pass + "' ";

        cm = new SqlCommand(query, conn);

        SqlDataReader rdr = cm.ExecuteReader();

        if (rdr.Read())
        {
            MessageBox.Text = "Logged In Sucessfully";
            

            Session["Name"] = rdr["teacherName"].ToString();
            Session["Email"] = rdr["email"].ToString();
            Session["Office"] = rdr["officeNum"].ToString() ;
            Session["Contact"] = rdr["contact"].ToString();

            conn.Close();
            Response.Redirect("FacultyHomeScreen.aspx");
        }

        else
        {
            MessageBox.Text = "Could Not Find Account";
        }

        conn.Close();

    }


}