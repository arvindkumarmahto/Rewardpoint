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
    public partial class Teambonding : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection DbConnection = new SqlConnection(conn);
            try
            {
                DbConnection.Open();
                string insertcmd= "Insert into Nominated_TMBD (Nominated_Project,NominatedMember,nominatedmember_cmt,EventOrg,EventOrg_comment, EventAttended, EventAttende_comment) values (@Nominated_Project,@NominatedMember,@nominatedmember_cmt,@EventOrg,@EventOrg_comment,@EventAttended, @EventAttende_comment)";
                SqlCommand cmd = new SqlCommand(insertcmd, DbConnection);
                cmd.Parameters.AddWithValue("@Nominated_Project", DropDownList1.SelectedValue);
                //cmd.Parameters.AddWithValue("@NominatedCategory", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@NominatedMember", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@EventOrg", TextBox1.Text);
                cmd.Parameters.AddWithValue("@nominatedmember_cmt", TextBox2.Text);
                cmd.Parameters.AddWithValue("@EventOrg_comment", TextBox4.Text);
                cmd.Parameters.AddWithValue("@EventAttended", TextBox3.Text);
                cmd.Parameters.AddWithValue("@EventAttende_comment", TextBox5.Text);
                cmd.ExecuteNonQuery();
                DbConnection.Close();
                Label1.Visible = true;
                Button1.Visible = false;
            }
            catch (Exception ex)
            {
                //TextBox1.Text = "SQL connection failed";
                Label1.Text = "SQL Server connection failed";
                Label1.Visible = true;

            }
        }
    }
}