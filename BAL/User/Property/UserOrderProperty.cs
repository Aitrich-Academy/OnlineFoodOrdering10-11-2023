using BAL.Admin.Property;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL.User.Property
{
   public class UserOrderProperty
    {
        public string OrderId { get; set; }

        public string UserName { get; set; }

        public int UserId { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }

        public string DishName { get; set; }
        public string Image { get; set; }

        public DateTime OrderDate { get; set; }
        public int Quantity { get; set; }
        public double Price { get; set; }
        public string Status { get; set; }

        public OrderItemProperty Item {  get; set; }
    }
}
