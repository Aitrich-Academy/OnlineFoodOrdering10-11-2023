﻿using System;
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

        protected void homebtn1_Click(object sender, EventArgs e)
        {


            Response.Redirect("~/User/UserDashBoard.Aspx");


        }

        protected void AccntBtn_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/User/UserAccount.Aspx");


        }

        protected void CtgryBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/UserAccount.Aspx");
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/UserAccount.Aspx");
        }

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/Login.Aspx");
        }
    }
}