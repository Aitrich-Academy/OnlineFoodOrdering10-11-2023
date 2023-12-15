using BAL.Admin.Property;
using BAL.User.Manager;
using BAL.User.Property;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering.User
{
    public partial class Search : System.Web.UI.Page
    {
        int itemCount = 0;
        int userid;
        int dishId;
        int newcategoryid;
        UserDishesManager dishesManager = new UserDishesManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                if (Session["UserID"] != null)
                {
                    // Retrieve the user ID from session
                    userid = Convert.ToInt32(Session["UserID"]);
                }


            }

            if (Page.IsPostBack)
            {

                lblsearchmsg.Visible = false;

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
            else if (e.CommandName == "Cart")
            {

                // dishManager_obj.SelectDishById();
               int dishId = Convert.ToInt32(e.CommandArgument);
                dishesManager.SelectDishById(dishId);
                Session["newcategoryid"] = dishesManager.dishProperty.CategoryId;

                AddToOrder(dishId, userid, dishesManager.dishProperty.Name,  dishesManager.dishProperty.Price);
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

        private void AddToOrder(int dishId, int userid, string dishName, double dishPrice/*,int categoryid */)
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
            newcategoryid = (int)(Session["newcategoryid"] ?? 0);
            if (newcategoryid == 2001)
            {
                UserOrderProperty NorthIndianOrder = new UserOrderProperty
                {


                    OrderId = GetNewOrderId(), // Generate a new order ID
                    UserId = userid, // Retrieved from the session or other means
                    OrderDate = DateTime.Now,
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
            else if (newcategoryid == 2002)
            {
                UserOrderProperty SouthIndianOrder = new UserOrderProperty
                {


                    OrderId = GetNewOrderId(), // Generate a new order ID
                    UserId = userid, // Retrieved from the session or other means
                    OrderDate = DateTime.Now,
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
                Session["OrderType"] = "SouthIndian";
                Session["SouthIndianDishOrder"] = SouthIndianOrder;

                Response.Redirect("~/User/OrderDetails.Aspx");

            }
            else if (newcategoryid == 2003)
            {
                UserOrderProperty VeganOrder = new UserOrderProperty
                {


                    OrderId = GetNewOrderId(), // Generate a new order ID
                    UserId = userid, // Retrieved from the session or other means
                    OrderDate = DateTime.Now,
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
                Session["VeganDishOrder"] = VeganOrder;

                Response.Redirect("~/User/OrderDetails.Aspx");



            }
            else
            {

                Response.Redirect("~/User/Categories.aspx");


            }
        }

        private string GetNewOrderId()
        {
            return Guid.NewGuid().ToString();

        }

        protected void ImgBtnSearch_Click(object sender, ImageClickEventArgs e)
        {
            string dishname = TxtSearch.Text.Trim().ToString();
            DataTable dt = dishesManager.SelectDishesByName(dishname);
            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];
                int Id = Convert.ToInt32(dt.Rows[0].ItemArray[0]); 
                string Name = dt.Rows[0].ItemArray[1].ToString();
                int CategoryId = Convert.ToInt32(dt.Rows[0].ItemArray[2]);
                string Description = dt.Rows[0].ItemArray[3].ToString();
                string image = dt.Rows[0].ItemArray[4].ToString();
                double Price = Convert.ToDouble(dt.Rows[0].ItemArray[5].ToString());

                if(Id==0 && Name=="nil" && CategoryId==0 && Description=="nil" && image=="nil" && Price == 0.0)
                {

                    lblsearchmsg.Visible = true;
                    lblsearchmsg.Text = "dish not found";


                }

                else
                {


                    DataListSearch.DataSource = dt;
                    DataListSearch.DataBind();





                }
            }

           


        }

    }
}