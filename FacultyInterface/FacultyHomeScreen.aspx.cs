using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        name.Text = Session["Name"] as string;
        emailLiteral.Text = Session["Email"] as string;
        contact.Text = Session["Contact"] as string;
        officeLiteral.Text = Session["Office"] as string;
    }
}