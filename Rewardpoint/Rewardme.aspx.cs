using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Rewardpoint
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection DbConnection = new SqlConnection(conn);
            try
            {
                //DbConnection.Open();
                //string insertcmd= "Insert into Nomination (CategoryName,MeasurableParameter,Comment,Project_Name) values (@CategoryName,@MeasurableParameter,@Comment,@Project_Name)";
                //SqlCommand cmd = new SqlCommand(insertcmd, DbConnection);
                //cmd.Parameters.AddWithValue("@CategoryName",DropDownList1.SelectedValue);
                //cmd.Parameters.AddWithValue("@MeasurableParameter", DropDownList2.SelectedValue);
                //cmd.Parameters.AddWithValue("@Comment", TextBox1.Text);
                //cmd.Parameters.AddWithValue("@Project_Name", DropDownList3.SelectedValue);
                //cmd.ExecuteNonQuery();
                //DbConnection.Close();
            }
            catch (Exception ex)
            {
                //TextBox1.Text = "SQL connection failed";
            }
        }
    }
}