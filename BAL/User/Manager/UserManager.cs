using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BAL.User.Property;
using System.Threading.Tasks;
using DAL;
using System.Collections;
using System.Data;

namespace BAL.User.Manager
{
   public class UserManager
    {


       private  DataBaseConnect dbconnect = new DataBaseConnect();

       public  UserPro userdetails = new UserPro();

       private  SortedList Slist = new SortedList();

       public string  UserInsert()
       {

            Slist.Clear();
            Slist.Add("Name", userdetails.Name);
            Slist.Add("Email", userdetails.EmailId);
            Slist.Add("Phone", userdetails.Phonenumber);
            Slist.Add("Address", userdetails.Address);
            Slist.Add("Password", userdetails.Password);
            Slist.Add("Role", userdetails.Role);



            string result = dbconnect.executeprocedure(Slist,"users_insert");


            return result;


        }

        /* public  string Login()
         {

             Slist.Clear();

             Slist.Add("Email", userdetails.EmailId);

             Slist.Add("Password", userdetails.Password);

             string result = dbconnect.executeprocedure(Slist, "users_login");

             return result;

         }
        */


        public DataTable Login()
        {
            Slist.Clear();
            Slist.Add("Email", userdetails.EmailId);
            Slist.Add("Password", userdetails.Password);

            DataTable result = dbconnect.GetDataTable(Slist, "users_login");

            return result;
        }


        public DataTable GetUserDetails(int userId) 
        {

            Slist.Clear();

            Slist.Add("UserId", userId);

            DataTable result = dbconnect.GetDataTable(Slist, "GetUserDetails");


            return result;

        }


        public string UserUpdate()
        {

            Slist.Clear();
            Slist.Add("UserId", userdetails.Id);
            Slist.Add("Name", userdetails.Name);
            Slist.Add("Email", userdetails.EmailId);
            Slist.Add("Phone", userdetails.Phonenumber);
            Slist.Add("Address", userdetails.Address);
            Slist.Add("Password", userdetails.Password);


            string result = dbconnect.executeprocedure(Slist, "UpdateUserProfile");



            return result;


        }


        public string UserDelete()
        {

            Slist.Clear();
            Slist.Add("UserId", userdetails.Id);

            string result = dbconnect.executeprocedure(Slist, "DeleteUserAccount");

            return result;


        }










    }
}
