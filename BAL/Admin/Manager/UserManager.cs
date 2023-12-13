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
    public class UserManager
    {
        private DataBaseConnect dbConnet = new DataBaseConnect();
        public UserProperty userProperty = new UserProperty();
        private SortedList S1 = new SortedList();
        public object SelectAllUsers() 
        {
            DataTable dt = new DataTable();
            dt = dbConnet.GetDataTable("select_all_users");
            List<UserProperty> _list = new List<UserProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new UserProperty
                {

                    Id = Convert.ToInt32(dr["Id"]),
                    Name = dr["Name"].ToString(),
                    Address = dr["Address"].ToString(),
                    Phone = dr["Phone"].ToString(),
                    Email = dr["Email"].ToString(),
                    Status = dr["Status"].ToString()
                   

                });
            }
            return _list;
        }

        public string blockUserById()
        {
            S1.Clear();
            S1.Add("Id", userProperty.Id);
            return dbConnet.executeprocedure(S1, "block_user_byId");
        }
    }
}
