using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering.User
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImgBtnBack_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/User/StartPage.aspx");
        }
    }
}