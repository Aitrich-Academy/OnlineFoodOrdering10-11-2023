using System;
using System.Collections.Generic;

using System.Diagnostics;

using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL.Admin.Property
{
    public class OrderProperty
    { 

        public int Id { get; set; }

        public string UserName{ get; set; }

        public string Email { get; set; }
        public string  Phone{ get; set; }

        public string DishName { get; set; }
        public string Image { get; set; }

        public int Quantity{ get; set; }
        public double Price { get; set; }
        public string Status{ get; set; }

    }
}
