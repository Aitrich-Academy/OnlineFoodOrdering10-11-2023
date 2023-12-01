using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL.Admin.Property
{
    public class OrderItemProperty
    {

        public int DishId { get; set; }
        public int Quantity { get; set; }

        public string Name { get; set; }

        public double price { get; set; }


    }
}
