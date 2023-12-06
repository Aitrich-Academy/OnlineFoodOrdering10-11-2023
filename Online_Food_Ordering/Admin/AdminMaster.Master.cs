using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/AdminDashboard.aspx");
        }

        protected void BtnCategories_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/AddCategories.aspx");
        }

        protected void BtnCustomers_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/ViewCustomers.aspx");
        }

        protected void BtnOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/ViewOrders.aspx");
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/Login.aspx");
        }
    }
}