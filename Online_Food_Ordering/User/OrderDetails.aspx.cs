using System;
using System.Collections.Generic;
using BAL.User.Manager;
using BAL.User.Property;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering.User
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
                if (!IsPostBack)
                {
                    string orderType = Session["OrderType"] as string;
                     UserOrderProperty currentOrder;

                    switch (orderType)
                    {
                        case "NorthIndian":
                            currentOrder = (UserOrderProperty)Session["NorthIndianDishOrder"];
                            break;
                        case "SouthIndian":
                            currentOrder = (UserOrderProperty)Session["SouthIndianDishOrder"];
                            break;
                        case "Vegan":
                            currentOrder = (UserOrderProperty)Session["VeganDishOrder"];
                            break;
                        default:
                            currentOrder = null;
                            break;
                    }

                    if (currentOrder != null)
                    {
                        DisplayOrderDetails(currentOrder);
                    }
                    else
                    {
                    orderdetailmsg.Visible = true;
                    orderdetailmsg.Text = "Oops! No Orders So Far.";
                    }
                }
            
        }
        private void DisplayOrderDetails(UserOrderProperty order)
        {
            ChktTextBox6.Text = order.Item.Name.ToString();
            ChktTextBox7.Text = order.Item.price.ToString();
            ChktTextBox7.Text = order.Item.Quantity.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //dummycode:-
            orderdetailmsg.Visible = true;
            orderdetailmsg.Text = "Oops! No Orders So Far.";
        }
    }
}