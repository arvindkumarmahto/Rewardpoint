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
    public partial class nohumanerror : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection DbConnection = new SqlConnection(conn);
            try
            {
                DbConnection.Open();
                string insertcmd = "Insert into ThePerfectTask(TaskMonth,TaskType,TaskCategory,Taskcount,TimeTaken,TaskLink,IssueCount,IncidentType) values (@TaskMonth,@TaskType,@TaskCategory,@Taskcount,@TimeTaken,@TaskLink,@IssueCount,@IncidentType)";
                SqlCommand cmd = new SqlCommand(insertcmd, DbConnection);
                cmd.Parameters.AddWithValue("@TaskMonth", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@TaskType", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@TaskCategory", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@TaskCount", TextBox2.Text);
                cmd.Parameters.AddWithValue("@TimeTaken", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Tasklink", TextBox4.Text);
                cmd.Parameters.AddWithValue("@IssueCount", TextBox5.Text);
                cmd.Parameters.AddWithValue("@IncidentType", DropDownList4.SelectedValue);

                cmd.ExecuteNonQuery();
                DbConnection.Close();
                Label1.Visible = true;
                
            }
            catch (Exception ex)
            {
                //TextBox1.Text = "SQL connection failed";
                Label1.Text = "SQL Server connection failed";
                //Label1.Visible = true;
                //TextBox2.Text = "Error";
            }
        }
    }
}