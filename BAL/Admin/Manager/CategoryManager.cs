using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BAL.Admin.Property;
using DAL;

namespace BAL.Admin.Manager
{
    public class CategoryManager
    {
        private DataBaseConnect dbConnet= new DataBaseConnect();
        public CategoryProperty categoryProperty= new CategoryProperty();
        private SortedList S1=new SortedList();
        public DishProperty dishProperty= new DishProperty();


        public string CategoryInsert()
        {
            S1.Clear();
            S1.Add("Name", categoryProperty.Name);
            S1.Add("Description", categoryProperty.Description);
            S1.Add("Image", categoryProperty.Image);
            return dbConnet.executeprocedure(S1, "category_insert");

        }

        public object SelectAllCategories()
        {

            DataTable dt = new DataTable();
            dt = dbConnet.GetDataTable("select_all_category");
            List<CategoryProperty> _list = new List<CategoryProperty>();
            _list.Add(new CategoryProperty
            {
                Name = "-- Select --",
                Id = 0
            });

            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new CategoryProperty
                {

                    Name = dr["Name"].ToString(),
                    Id = Convert.ToInt32(dr["Id"])

                });
            }
            return _list;
        }

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

      
    }
}
