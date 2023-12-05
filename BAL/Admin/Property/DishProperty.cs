﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL.Admin.Property
{
    public class DishProperty
    {
        public int Id {  get; set; }
        public string Name { get; set; }   
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }

        public double Price { get; set; }
        public string Status { get; set; }

    }
}
