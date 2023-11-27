using BAL.User.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering.User
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        UserManager UserManager_obj = new UserManager();

        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserID"] != null)
            {
                // Retrieve the user ID from session
                int userId = Convert.ToInt32(Session["UserID"]);
            }







        }
        protected void DataListDishes_ItemCommand(object source, DataListCommandEventArgs e)
        {
           
            
            
            
            
            
            
            






        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}