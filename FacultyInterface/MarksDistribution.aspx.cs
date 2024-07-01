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

    }

    protected void cIDTextBox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void qu1TextBox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void assignmentsTextBox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void sessOTextBox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void sessTTextBox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void projTextBox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void finalETextBox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void submitBtn_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9D1M6C\\SQLEXPRESS01;Initial Catalog=FacultyDB;Integrated Security=True");

        SqlCommand cm;

        //this is the course ID extracted
        string course = cIDTextBox.Text;

        int quiz = int.Parse( qu1TextBox.Text);
        int assign = int.Parse(assignmentsTextBox.Text);
        int s1 = int.Parse(sessOTextBox.Text);
        int s2 = int.Parse(sessTTextBox.Text);
        int pro = int.Parse(projTextBox.Text);
        int final = int.Parse(finalETextBox.Text);

        
        string query1 = "INSERT INTO Evaluation (evalID, courseID, evalType, weightage) VALUES (@id, @course, @eval,@weight)";

        using (cm = new SqlCommand(query1, conn))
        {
            cm.Parameters.AddWithValue("@id", 1);
            cm.Parameters.AddWithValue("@course", course);
            cm.Parameters.AddWithValue("@eval", "quiz");
            cm.Parameters.AddWithValue("@weight", quiz);

            conn.Open();

            // Execute the insert query
            int rowsAffected = cm.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Insert successful
                message.Text = "Insertion Successful";
         
            }
            else
            {
                // Insert failed
                message.Text = "Insertion Failed";
            }

            conn.Close();
        }
                    
        using (cm = new SqlCommand(query1, conn))
        {
            cm.Parameters.AddWithValue("@id", 2);
            cm.Parameters.AddWithValue("@course", course);
            cm.Parameters.AddWithValue("@eval", "Assignment");
            cm.Parameters.AddWithValue("@weight", assign);

            conn.Open();
            // Execute the insert query
            int rowsAffected = cm.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Insert successful
                message.Text = "Insertion Successful";

            }
            else
            {
                // Insert failed
                message.Text = "Insertion Failed";
            }

            conn.Close();
        }
        using (cm = new SqlCommand(query1, conn))
        {
            cm.Parameters.AddWithValue("@id", 3);
            cm.Parameters.AddWithValue("@course", course);
            cm.Parameters.AddWithValue("@eval", "Sessional 1");
            cm.Parameters.AddWithValue("@weight", s1);
            
            conn.Open();
            // Execute the insert query
            int rowsAffected = cm.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Insert successful
                message.Text = "Insertion Successful";

            }
            else
            {
                // Insert failed
                message.Text = "Insertion Failed";
            }

            conn.Close();
        }
        using (cm = new SqlCommand(query1, conn))
        {
            cm.Parameters.AddWithValue("@id", 4);
            cm.Parameters.AddWithValue("@course", course);
            cm.Parameters.AddWithValue("@eval", "Sessional 2");
            cm.Parameters.AddWithValue("@weight", s2);

            conn.Open();
            // Execute the insert query
            int rowsAffected = cm.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Insert successful
                message.Text = "Insertion Successful";

            }
            else
            {
                // Insert failed
                message.Text = "Insertion Failed";
            }

            conn.Close();
        }
        using (cm = new SqlCommand(query1, conn))
        {
            cm.Parameters.AddWithValue("@id", 5);
            cm.Parameters.AddWithValue("@course", course);
            cm.Parameters.AddWithValue("@eval", "Project");
            cm.Parameters.AddWithValue("@weight", pro);

            conn.Open();
            // Execute the insert query
            int rowsAffected = cm.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Insert successful
                message.Text = "Insertion Successful";

            }
            else
            {
                // Insert failed
                message.Text = "Insertion Failed";
            }

            conn.Close();
        }
        using (cm = new SqlCommand(query1, conn))
        {
            cm.Parameters.AddWithValue("@id", 6);
            cm.Parameters.AddWithValue("@course", course);
            cm.Parameters.AddWithValue("@eval", "Final Exam");
            cm.Parameters.AddWithValue("@weight", final);

            conn.Open();
            // Execute the insert query
            int rowsAffected = cm.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Insert successful
                message.Text = "Insertion Successful";

            }
            else
            {
                // Insert failed
                message.Text = "Insertion Failed";
            }

            conn.Close();
        }

       
    }
}