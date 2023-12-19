using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering.User
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NorthIndianImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            int categoryid = 2001;
            Response.Redirect("~/User/Dishes.aspx?CategoryId="+categoryid);
        }

        protected void SouthIndianImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            int categoryid = 2002;
            Response.Redirect("~/User/Dishes.aspx?CategoryId="+categoryid);
        }

        protected void VeganImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            int categoryid = 2003;
            Response.Redirect("~/User/Dishes.aspx?CategoryId="+ categoryid);
        }
    }
}