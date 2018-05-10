using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rewardpoint
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
      
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var AuthenticatedUser = (User.Identity.Name);
            
            if (AuthenticatedUser == "")
            {
                Label1.Text = "Please register or Login by clicking at top right corner button!";
                Label1.Visible =true;
            }
            else
            {
                Button1.PostBackUrl = "~/rewardme.aspx";
            }
            

            
        }
    }
}