using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

using System.Web.UI;

using System.Web.UI.WebControls;

namespace Online_Food_Ordering.User
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        // In your content page's code-behind, e.g., UserDashboard.aspx.cs
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlGenericControl body = (HtmlGenericControl)Page.Master.FindControl("masterbdy");
            if (body != null)
            {
                // body.Attributes.Add("class", "background1");
                body.Attributes["class"] = "background1";
            }
        }


    }
}