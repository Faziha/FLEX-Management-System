using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    public void Login_submit(object sender, EventArgs e)
    {
        String email = username.Text;
        String pass = password.Text;
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-NRN585P\\SQLEXPRESS01;Initial Catalog=s;Integrated Security=True");
        SqlCommand cmd = null;
        conn.Open();
        String Query = "Select * FROM Students where email='" + email + "' AND password='" + pass + "';";
        cmd = new SqlCommand(Query, conn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("homepage.aspx");
        }
        else
        {
            Button1.BackColor = System.Drawing.Color.Red;
        }
    }
}