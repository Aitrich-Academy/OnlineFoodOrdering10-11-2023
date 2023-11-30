using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL.Admin.Property
{
    public class OrderProperty
    {

        public string OrderId { get; set; }
        public int UserId { get; set; }
        public DateTime OrderDate { get; set; }
        public OrderItemProperty Item { get; set; }



    }
}
