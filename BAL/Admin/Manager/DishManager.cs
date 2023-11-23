using BAL.Admin.Property;
using DAL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL.Admin.Manager
{
    public class DishManager
    {
        private DataBaseConnet dbConnet = new DataBaseConnet();
        public DishProperty dishProperty = new DishProperty();
        private SortedList S1 = new SortedList();

        public string DishInsert()
        {
            S1.Clear();
            S1.Add("Name", dishProperty.Name);
            S1.Add("CategoryId", dishProperty.CategoryId);
            S1.Add("Description", dishProperty.Description);
            S1.Add("Image", dishProperty.Image);
            S1.Add("Price", dishProperty.Price);
            return dbConnet.executeprocedure(S1, "dishes_insert");

        }

        public object SelectAllDishes()
        {
            DataTable dt = new DataTable();
            dt = dbConnet.getdatatable("select_all_dishes");
            List<DishProperty> _list = new List<DishProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new DishProperty
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

        public void SelectDishById()
        {
            S1.Clear();
            S1.Add("Id", dishProperty.Id);
            DataTable dt = new DataTable();
            dt = dbConnet.getdatatable(S1, "select_dishes_byid");
            if (dt.Rows.Count > 0)
            {
                dishProperty.Name = dt.Rows[0].ItemArray[0].ToString();
                dishProperty.CategoryId = Convert.ToInt32(dt.Rows[0].ItemArray[1].ToString());
                dishProperty.Description = dt.Rows[0].ItemArray[2].ToString();
                dishProperty.Image = dt.Rows[0].ItemArray[3].ToString();
                dishProperty.Price = Convert.ToDouble(dt.Rows[0].ItemArray[4].ToString());

            }
        }

        public string DishesUpdate()
        {
            S1.Clear();
            S1.Add("Id", dishProperty.Id);
            S1.Add("Name", dishProperty.Name);
            S1.Add("CategoryId", dishProperty.CategoryId);
            S1.Add("Description", dishProperty.Description);
            S1.Add("Image", dishProperty.Image);
            S1.Add("Price", dishProperty.Price);
            return dbConnet.executeprocedure(S1, "dishes_updates");
        }

        public string DeleteDishes()
        {
            S1.Clear();
            S1.Add("Id", dishProperty.Id);
            return dbConnet.executeprocedure(S1, "delete_dishes");
        }

       
    }
}
