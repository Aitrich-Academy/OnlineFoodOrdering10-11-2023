using BAL.Admin.Manager;
using BAL.Admin.Property;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering.Admin
{
   
    public partial class ViewOrders : System.Web.UI.Page
    {
        OrderManager orderManager=new OrderManager();
        DishManager dishManager = new DishManager();
        private SortedList S1 = new SortedList();
        List<OrderProperty> listOrders = new List<OrderProperty>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

               OrdersBind(); //for grid view

            }
        }

        private void OrdersBind()

        {
            GridViewOrders.DataSource = orderManager.getOrderDetails();
            GridViewOrders.DataBind();
           
        }

        protected void GridViewOrders_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Confirm")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                // Access the selected row using the Rows collection
                GridViewRow selectedRow = GridViewOrders.Rows[rowIndex];

                //int index = GridViewOrders.SelectedIndex;
               // GridViewRow selectedRow = GridViewOrders.Rows[index];
                string toAddress = selectedRow.Cells[3].Text;
                string dish = selectedRow.Cells[4].Text;
                int quantity = Convert.ToInt32(selectedRow.Cells[6].Text);
                int price = Convert.ToInt32(selectedRow.Cells[7].Text);
                int total = Convert.ToInt32(selectedRow.Cells[6].Text)* Convert.ToInt32(selectedRow.Cells[7].Text);

                try
                {
                    using (SmtpClient smtpClient = new SmtpClient("smtp.gmail.com"))
                    {
                        smtpClient.Port = 587; // or 465
                        smtpClient.Credentials = new NetworkCredential("jacknirvanaindic@gmail.com", "szpd unbu jbnd cujx");
                        smtpClient.EnableSsl = true;

                        MailMessage mail = new MailMessage();
                        mail.From = new MailAddress("jacknirvanaindic@gmail.com");
                        mail.To.Add("simnanoufal@gmail.com");
                        mail.Subject = "Confirmation for Order";
                        mail.Body = "Your order for " + dish + " " + quantity + " " + "nos" + " is confirmed. Total Amount is: " + quantity + "*" + price + "= " + total;

                        smtpClient.Send(mail);
                        LblMessage.Text = "Confirmation mail has send";
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error: {ex.Message}");
                    // Handle the exception appropriately based on your application's needs.
                }
            }
        }
        

        
    }
}