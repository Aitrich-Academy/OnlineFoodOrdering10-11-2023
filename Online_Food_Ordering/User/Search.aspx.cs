﻿using BAL.Admin.Property;
using BAL.User.Property;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering.User
{
    public partial class Search : System.Web.UI.Page
    {
        int itemCount = 0;
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                if (Session["UserID"] != null)
                {
                    // Retrieve the user ID from session
                    int Id = Convert.ToInt32(Session["UserID"]);
                }


            }
        }

        protected void DataListSearch_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Plus")
            {
                // Logic to increase the quantity
                int dishId = Convert.ToInt32(e.CommandArgument);
                IncreaseQuantity(dishId);
            }
            else if (e.CommandName == "Minus")
            {
                // Logic to decrease the quantity
                int dishId = Convert.ToInt32(e.CommandArgument);
                DecreaseQuantity(dishId);
            }
            else if (e.CommandName == "Order")
            {

               // dishManager_obj.SelectDishById();

                // Logic to handle the ordering process
                int dishId = Convert.ToInt32(e.CommandArgument);
              //  AddToOrder(dishId, userid, dishManager_obj.dishProperty.Name, dishManager_obj.dishProperty.Price);
            }

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

                   // quantitycnfrmlbl.Visible = true;
                   // quantitycnfrmlbl.Text = "You have to atleast select one quantity";
                }

                // Update the session with the new quantities
                Session["Quantities"] = quantities;
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

        private void AddToOrder(int dishId, int userid, string dishName, double dishPrice)
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

        private string GetNewOrderId()
        {
            throw new NotImplementedException();
        }

        protected void ImgBtnSearch_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}