using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering.User
{
    public partial class Restuarant : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        protected void homebtn_Click(object sender, EventArgs e)
        {


            Response.Redirect("~/User/UserDashBoard.aspx");


        }
        protected void homebtn1_Click(object sender, EventArgs e)
        {


            Response.Redirect("~/User/UserDashBoard.aspx");


        }

        protected void AccntBtn_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/User/UserAccount.aspx");


        }

        protected void CtgryBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/Categories.aspx");
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/Search.aspx");
        }

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {




            // Redirect to the login page
            Response.Redirect("~/User/Login.aspx");




        }

        
    }
}