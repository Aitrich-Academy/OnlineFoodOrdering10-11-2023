using System;
using System.Collections.Generic;
using BAL.User.Manager;
using BAL.User.Property;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Globalization;
using System.Diagnostics;
using System.Net;
using System.Data;

namespace Online_Food_Ordering.User
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        UserOrderProperty currentOrder;
        double Dishprice;

        int quantity;
        int dishId;
        string dishname;

        DateTime orderdate;
        UserManager UserManager_obj = new UserManager();
        UserDishesManager UserDishesManager_obj = new UserDishesManager();
        string orderid;
        protected void Page_Load(object sender, EventArgs e)
        {
           

            
                if (!IsPostBack)
                {
                    string orderType = Session["OrderType"] as string;
                    

                    switch (orderType)
                    {
                        case "NorthIndian":
                            currentOrder = (UserOrderProperty)Session["NorthIndianDishOrder"];
                        Dishprice = currentOrder.Item.price;
                        dishname = currentOrder.Item.Name;
                        quantity = currentOrder.Item.Quantity;
                        orderdate = currentOrder.OrderDate;
                        orderid = currentOrder.OrderId;
                            break;
                        case "SouthIndian":
                            currentOrder = (UserOrderProperty)Session["SouthIndianDishOrder"];
                        Dishprice = currentOrder.Item.price;
                        dishname = currentOrder.Item.Name;
                        quantity = currentOrder.Item.Quantity;
                        orderdate = currentOrder.OrderDate;
                        orderid = currentOrder.OrderId;
                        break;
                        case "Vegan":
                            currentOrder = (UserOrderProperty)Session["VeganDishOrder"];
                        Dishprice = currentOrder.Item.price;
                        dishname = currentOrder.Item.Name;
                        quantity = currentOrder.Item.Quantity;
                        orderdate = currentOrder.OrderDate;
                        orderid = currentOrder.OrderId;
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

            if (Session["UserID"] != null)
            {
                // Retrieve the user ID from session
                int userId = Convert.ToInt32(Session["UserID"]);

                // Now you can use userId to fetch user details from the database
                DataTable dt = UserManager_obj.GetUserDetails(userId);

                if (dt != null && dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];

                    ChktTextBox1.Text = row["Name"].ToString();
                    ChktTextBox2.Text = row["Email"].ToString();
                    ChktTextBox3.Text = row["Phone"].ToString();
                   
                    


                }


            }
            else
            {

                Response.Redirect("Login.aspx");
            }
            ChktTextBox6.Text = order.Item.Name.ToString();
            ChktTextBox7.Text = order.Item.price.ToString();
            ChktTextBox8.Text = order.Item.Quantity.ToString();
            dishId = order.Item.DishId;
            int chktqnty;
            int grandtotal;

            chktqnty = Convert.ToInt32(ChktTextBox8.Text);
            int chktprice = Convert.ToInt32(ChktTextBox7.Text);

            grandtotal = chktqnty * chktprice;

            ChktTextBox9.Text = grandtotal.ToString();

           /* string imgurl;

            object list = UserDishesManager_obj.SelectDishImageById(dishId);


            List<DishesPro>dishlist = (List<DishesPro>)list;


            imgurl = dishlist[0].ToString();

            Image1.ImageUrl = imgurl;
           */


        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Assuming currentOrder is the order you want to send and is available here
            string userEmail = "bradindic@gmail.com"; // User's email
            string adminEmail = "jacknirvanaindic@gmail.com"; // Admin's email

            // Send the email with the order details
            SendOrderConfirmationEmail(currentOrder, userEmail, adminEmail);

            // Additional actions after sending the email
            // For example, show a confirmation message or redirect to another page


        }

        private void SendOrderConfirmationEmail(UserOrderProperty currentorder, string userEmail, string adminEmail)
        {
          /*  try
            {
                using (MailMessage mail = new MailMessage())
                {
                    mail.From = new MailAddress(userEmail);
                    mail.To.Add(adminEmail);
                    mail.Subject = "New Order Placed";
                    mail.Body = ComposeOrderDetails(currentorder);
                    mail.IsBodyHtml = true;

                    using (SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587))
                    {
                        smtpClient.Credentials = new System.Net.NetworkCredential("bradindic@gmail.com", "whqt euyb svex hmhs");
                        smtpClient.EnableSsl = true;
                        smtpClient.Send(mail);
                        orderdetailmsg.Visible = true;
                        orderdetailmsg.Text = "Your Order is Successfull";
                    }
                }
            }
            catch (Exception ex)
            {
                orderdetailmsg.Visible = true;
                orderdetailmsg.Text = "Oops!Could not place order.";
                // Log or handle the exception
                // For example, show a message on the page
            }
          */
            try
            {
                using (SmtpClient smtpClient = new SmtpClient("smtp.gmail.com"))
                {
                    smtpClient.Port = 587; // or 465
                    smtpClient.Credentials = new NetworkCredential("bradindic@gmail.com", "whqt euyb svex hmhs");
                    smtpClient.EnableSsl = true;

                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress(userEmail);
                    mail.To.Add(adminEmail);
                    mail.Subject = "new order placed";
                    mail.Body = ComposeOrderDetails(currentorder);
                    smtpClient.Send(mail);
                    orderdetailmsg.Visible = true;
                    orderdetailmsg.Text = "Your Order is Successful";
                }
            }
            catch (Exception ex)
            {
                orderdetailmsg.Visible = true;
                orderdetailmsg.Text = "Oops!Could not place order.";
                // Handle the exception appropriately based on your application's needs.
            }
        }


        private string ComposeOrderDetails(UserOrderProperty currentorder)
        {
            // Compose the email body with order details
            return $"Order Details:\nName: {ChktTextBox1.Text.ToString().Trim()}" +
                $"\n{ChktTextBox2.Text.ToString().Trim()}" +
                 $"\nPhone: {ChktTextBox3.Text.ToString().Trim()}" +
                  $"\nDistrict: {ChktTextBox4.Text.ToString().Trim()}" +
                   $"\nPincode: {ChktTextBox5.Text.ToString().Trim()}" +
                   
                $"\nDishName: {ChktTextBox6.Text.ToString().Trim()}" +
                
                  $"\nOrder Id: {orderid}" +

                $"\nPrice: {ChktTextBox7.Text.ToString().Trim()}" +
                $"\nQuantity: {ChktTextBox8.Text.ToString().Trim()}" +
                 $"\nGrand Total: {ChktTextBox9.Text.ToString().Trim()}";
        }



        


    }
}
        










    
