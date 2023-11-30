using BAL.Admin.Property;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL.Admin.Manager
{
    public class OrderManager
    {
        private DataBaseConnet dbConnet = new DataBaseConnet();
        public OrderProperty orderProperty = new OrderProperty();
        //public DishProperty dishProperty = new DishProperty();
       // private SortedList S1 = new SortedList();

        public object getOrderDetails()
        {
            DataTable dt = new DataTable();
            dt = dbConnet.getdatatable("select_all_orders");
            List<OrderProperty> _list = new List<OrderProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new OrderProperty
                {

                    Id = Convert.ToInt32(dr["Id"]),
                    UserName = (dr["UserName"].ToString()),
                    Phone = (dr["Phone"].ToString()),
                    Email= (dr["Email"].ToString()),
                    DishName = (dr["DishName"].ToString()),
                    Image= (dr["Image"].ToString()),
                    Quantity = Convert.ToInt32(dr["Quantity"]),
                    Price = Convert.ToDouble(dr["Price"])

                });
            }
            return _list;
        }

       
    }
}
