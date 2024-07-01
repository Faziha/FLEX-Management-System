using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class cgpas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-NRN585P\\SQLEXPRESS01;Initial Catalog=s;Integrated Security=True");
        SqlCommand cmd = null;
        conn.Open();
        String studentID = "200473";
        String Query = "Select * FROM GPA where studentID='" + studentID +  "';";
        cmd = new SqlCommand(Query, conn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        string displayBox = "<div></div>";
    }

    public String genBox(float height)
    {
        String dBox = "<div style=\"width=30px;height:" + height * 100 + "px\"></div>";
        return dBox;
    }


}
