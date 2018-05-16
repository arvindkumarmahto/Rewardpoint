using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Rewardpoint
{
    public partial class CustomerSatisfaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection DbConnection = new SqlConnection(conn);
            try
            {
                DbConnection.Open();
                string insertcmd = "Insert into ThePerfectTask (TaskMonth,TaskType,TaskCount,TimeTaken,CustomerFeedback,CustomerFeedbackType) values (@TaskMonth,@TaskType,@TaskCount,@TimeTaken,@CustomerFeedback,@CustomerFeedbackType)";
                SqlCommand cmd = new SqlCommand(insertcmd, DbConnection);
                cmd.Parameters.AddWithValue("@TaskMonth", DropDownList1.SelectedValue);
                //cmd.Parameters.AddWithValue("@NominatedCategory", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@TaskType", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@TaskCount", TextBox1.Text);
                cmd.Parameters.AddWithValue("@TimeTaken", TextBox2.Text);
                cmd.Parameters.AddWithValue("@CustomerFeedback", TextBox3.Text);
                cmd.Parameters.AddWithValue("@CustomerFeedbackType", DropDownList3.SelectedValue);
               // cmd.Parameters.AddWithValue("@Validate", TextBox5.Text);
                cmd.ExecuteNonQuery();
                DbConnection.Close();
           TextBox2.Visible = true;
           Button1.Visible = false;
           }
           catch (Exception ex)
            {
                //TextBox1.Text = "SQL connection failed";
               TextBox2.Text = "SQL Server connection failed";
                TextBox2.Visible = true;
            }
        }

    }
}