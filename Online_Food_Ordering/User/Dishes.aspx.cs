using BAL.Admin.Manager;
using BAL.Admin.Property;

using BAL.User.Property;
using BAL.User.Manager;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering.User
{
    public partial class WebForm3 : System.Web.UI.Page
    {
       UserDishesManager dishManager_obj = new UserDishesManager();

        int userid;
        int dishId;
        int categoryid;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                if (Request.QueryString["CategoryId"] != null)
                {

                    categoryid = Convert.ToInt32(Request.QueryString["CategoryId"]);
                    object list = dishManager_obj.SelectAllDishes(categoryid);
                    DataListDishes.DataSource = list;
                    DataListDishes.DataBind();

                    if (Session["UserID"] != null)
                    {
                        // Retrieve the user ID from session
                        userid = Convert.ToInt32(Session["UserID"]);
                    }

                }

            }




        }
        protected void DataListDishes_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Increase")
            {
                // Logic to increase the quantity
                 dishId = Convert.ToInt32(e.CommandArgument);
                IncreaseQuantity(dishId);
            }
            else if (e.CommandName == "Decrease")
            {
                // Logic to decrease the quantity
               dishId = Convert.ToInt32(e.CommandArgument);
                DecreaseQuantity(dishId);
            }
            else if (e.CommandName == "Order")
            {
                dishId = Convert.ToInt32(e.CommandArgument);
                dishManager_obj.SelectDishById(dishId);

                // Logic to handle the ordering process
                
                AddToOrder(dishId,userid,dishManager_obj.dishProperty.Name,dishManager_obj.dishProperty.Price,categoryid);
            }

        }


        private void IncreaseQuantity(int dishId)
        {
            // Check if the quantities are being tracked in the session
            var quantities = Session["Quantities"] as Dictionary<int, int>;

            if (quantities == null)
            {
                // If the dictionary doesn't exist, create it
                quantities = new Dictionary<int, int>();
            }

            if (quantities.ContainsKey(dishId))
            {
                // If the dish already has a quantity, increase it by 1
                quantities[dishId] += 1;
            }
            else
            {
                // If the dish isn't in the dictionary, add it with a quantity of 1
                quantities[dishId] = 1;
            }

            // Update the session with the new quantities
            Session["Quantities"] = quantities;
        }
       

        
            private void DecreaseQuantity(int dishId)
            {
                // Attempt to get the dictionary from the session state
                var quantities = Session["Quantities"] as Dictionary<int, int>;

                if (quantities != null && quantities.ContainsKey(dishId))
                {
                    // Ensure the quantity is more than 1 before decreasing
                    if (quantities[dishId] > 1)
                    {
                        quantities[dishId] -= 1;
                    }
                    // Optional: Handle the scenario where the quantity becomes 1
                    // You might want to leave it at 1 or remove it from the dictionary
                    else
                    {

                    quantitycnfrmlbl.Visible = true;
                    quantitycnfrmlbl.Text = "You have to atleast select one quantity";
                    }

                    // Update the session with the new quantities
                    Session["Quantities"] = quantities;
                   
                }
            }

        

        private void AddToOrder(int dishId,int userid,string dishName,double dishPrice,int categoryid ) 
        {
            var quantities = Session["Quantities"] as Dictionary<int, int>;
            if (quantities == null || !quantities.ContainsKey(dishId))
            {
                // Handle the case where the dish is not in the quantities dictionary
                return;
            }

            int quantity = quantities[dishId];
            int qnty = quantity;
            // Create a new order
            if (categoryid == 2001)
            {
                UserOrderProperty NorthIndianOrder = new UserOrderProperty
                {


                    OrderId = GetNewOrderId(), // Generate a new order ID
                    UserId = userid, // Retrieved from the session or other means
                                     //  OrderDate = DateTime.Now,
                    Item = new OrderItemProperty
                    {
                        DishId = dishId,
                        Quantity = qnty,
                        price = dishPrice,
                        Name = dishName,

                        // Set other properties like price, etc.
                    }
                };

                // Store the order in a session
                Session["OrderType"] = "NorthIndian";
                Session["NorthIndianDishOrder"] = NorthIndianOrder;

                Response.Redirect("~/User/OrderDetails.Aspx");

            }
            else if(categoryid == 2002)
            {
                UserOrderProperty SouthIndianOrder = new UserOrderProperty
                {


                    OrderId = GetNewOrderId(), // Generate a new order ID
                    UserId = userid, // Retrieved from the session or other means
                                     //  OrderDate = DateTime.Now,
                    Item = new OrderItemProperty
                    {
                        DishId = dishId,
                        Quantity = qnty,
                        price = dishPrice,
                        Name = dishName,

                        // Set other properties like price, etc.
                    }
                };

                // Store the order in a session
                Session["OrderType"] = "SouthIndianDishOrder";
                Session["SouthIndianDishOrder"] = SouthIndianOrder;

                Response.Redirect("~/User/OrderDetails.Aspx");

            }
            else
            {
                UserOrderProperty VeganOrder = new UserOrderProperty
                {


                    OrderId = GetNewOrderId(), // Generate a new order ID
                    UserId = userid, // Retrieved from the session or other means
                                     //  OrderDate = DateTime.Now,
                    Item = new OrderItemProperty
                    {
                        DishId = dishId,
                        Quantity = qnty,
                        price = dishPrice,
                        Name = dishName,

                        // Set other properties like price, etc.
                    }
                };

                // Store the order in a session
                Session["OrderType"] = "Vegan";
                Session["VeganDishOrder"] =VeganOrder;

                Response.Redirect("~/User/OrderDetails.Aspx");



            }

        }


        private string GetNewOrderId()
        {
            return Guid.NewGuid().ToString();
        }


        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            quantitycnfrmlbl.Visible = true;
            quantitycnfrmlbl.Text = "select your favourite dish";
        }























    }
}