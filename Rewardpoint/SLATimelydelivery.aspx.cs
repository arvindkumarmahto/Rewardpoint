using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rewardpoint
{
    public partial class SLATimelydelivery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["Defaultconnection"].ConnectionString;
            SqlConnection dbconn = new SqlConnection(conn);
            dbconn.Open();
            string insertcommand = "insert into ThePerfectTask (Month,TaskType,TaskCategory,TaskCount,Timetaken,SLA,SLACategory) values(@Month,@TaskType,@TaskCategory,@TaskCount,@Timetaken,@SLA,@SLACategory)";
            SqlCommand cmd = new SqlCommand(insertcommand, dbconn);
            //dbconn.execute(insertcommand);
            cmd.Parameters.AddWithValue("@Month", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@TaskType", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@TaskCategory", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@TaskCount", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Timetaken", TextBox2.Text);
            cmd.Parameters.AddWithValue("@SLA", TextBox3.Text);
            cmd.Parameters.AddWithValue("@SLACategory", TextBox4.Text);
            cmd.ExecuteNonQuery();
            dbconn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}