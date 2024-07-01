using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    public void Attendence_Click(object sender, EventArgs e)
    {
        Response.Redirect("attendence.aspx");
    }

    public void Marks_Click(object sender, EventArgs e)
    {
        Response.Redirect("marks.aspx");
    }

    public void cgpa_Click(object sender, EventArgs e)
    {
        Response.Redirect("cgpas.aspx");
    }

    public void feedback_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedback.aspx");
    }

    public void transcript_Click(object sender, EventArgs e)
    {
        Response.Redirect("transcript.aspx");
    }
}