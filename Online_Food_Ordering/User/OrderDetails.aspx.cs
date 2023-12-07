using System;
using System.Collections.Generic;
using BAL.User.Manager;
using BAL.User.Property;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Online_Food_Ordering.User
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        UserOrderProperty currentOrder;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
                if (!IsPostBack)
                {
                    string orderType = Session["OrderType"] as string;
                    

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
            // Assuming currentOrder is the order you want to send and is available here
            string userEmail = "user@example.com"; // User's email
            string adminEmail = "jack.com"; // Admin's email

            // Send the email with the order details
            SendOrderConfirmationEmail(currentOrder, userEmail, adminEmail);

            // Additional actions after sending the email
            // For example, show a confirmation message or redirect to another page


        }

        private void SendOrderConfirmationEmail(UserOrderProperty order, string userEmail, string adminEmail)
        {
            try
            {
                using (MailMessage mail = new MailMessage())
                {
                    mail.From = new MailAddress(userEmail);
                    mail.To.Add(adminEmail);
                    mail.Subject = "New Order Placed";
                    mail.Body = ComposeOrderDetails(order);
                    mail.IsBodyHtml = true;

                    using (SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587))
                    {
                        smtpClient.Credentials = new System.Net.NetworkCredential("your-email@gmail.com", "your-password");
                        smtpClient.EnableSsl = true;
                        smtpClient.Send(mail);
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
        }

        private string ComposeOrderDetails(UserOrderProperty order)
        {
            // Compose the email body with order details
            return $"Order Details:\nName: {order.Item.Name}\nPrice: {order.Item.price}\nQuantity: {order.Item.Quantity}";
        }






    }
}
        










    
