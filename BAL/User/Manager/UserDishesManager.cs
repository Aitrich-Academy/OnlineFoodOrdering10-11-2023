using System;
using System.Collections.Generic;
using System.Linq;
using DAL;
using BAL.User.Manager;
using BAL.User.Property;
using System.Text;
using System.Threading.Tasks;
using BAL.Admin.Property;
using System.Data;
using System.Collections;

namespace BAL.User.Manager
{
    public  class UserDishesManager
    {

        private DataBaseConnect dbConnet = new DataBaseConnect();
        public DishesPro dishProperty = new DishesPro();
        private SortedList S1 = new SortedList();
        // public UserOrderProperty orderProperty = new UserOrderProperty();
        public object SelectAllDishes(int categoryid)
        {
            S1.Clear();
            S1.Add("CategoryId", categoryid);
            DataTable dt = new DataTable();
            dt = dbConnet.GetDataTable(S1,"select_all_dishesby_Category");
            List<DishesPro> _list = new List<DishesPro>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new DishesPro
                {

                    Id = Convert.ToInt32(dr["Id"]),
                    Name = dr["Name"].ToString(),
                    CategoryId = Convert.ToInt32(dr["CategoryId"]),
                    Description = dr["Description"].ToString(),
                    Image = dr["Image"].ToString(),
                    Price = Convert.ToDouble(dr["Price"])

                });
            }
            return _list;
        }




         public void SelectDishById(int dishId)
        {
            S1.Clear();
            S1.Add("Id", dishId);
            DataTable dt = new DataTable();
            dt = dbConnet.GetDataTable(S1, "select_dishes_byid");
            if (dt.Rows.Count > 0)
            {
                dishProperty.Name = dt.Rows[0].ItemArray[0].ToString();
                dishProperty.CategoryId = Convert.ToInt32(dt.Rows[0].ItemArray[1].ToString());
                dishProperty.Description = dt.Rows[0].ItemArray[2].ToString();
                dishProperty.Image = dt.Rows[0].ItemArray[3].ToString();
                dishProperty.Price = Convert.ToDouble(dt.Rows[0].ItemArray[4].ToString());

            }
        }

        public object SelectDishImageById(int dishId) 
        {


            S1.Clear();
            S1.Add("Id", dishId);
            DataTable dt = new DataTable();
            dt = dbConnet.GetDataTable(S1, "select_dishImage_byId");
            List<DishesPro> _list = new List<DishesPro>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new DishesPro
                {

                    
                    Image = dr["Image"].ToString(),
                   

                });
            }
            return _list;





        }



    }
}
