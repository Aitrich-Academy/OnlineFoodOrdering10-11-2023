using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering
{
    public partial class RestaurantContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CntctBackBtn_Click(object sender, EventArgs e)
       {
            lblcntctUs.Visible = false;
        }

       protected void Button1_Click(object sender, EventArgs e)
       {
            Response.Redirect("UserHome.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("UserHome.aspx");
        }
    }
}