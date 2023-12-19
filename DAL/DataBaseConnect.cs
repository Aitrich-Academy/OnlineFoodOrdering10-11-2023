using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DataBaseConnect
    {

        public SqlConnection GetConnection()
        {

            SqlConnection Con = new SqlConnection("Data Source=DESKTOP-P57EB9K;Initial Catalog=Restuarant;Integrated Security=True");


            if (Con.State == ConnectionState.Open)

            {

                Con.Close();



            }

            Con.Open();

            return Con;


        }



        public DataTable GetDataTable(string query)
        {


            SqlDataAdapter ad = new SqlDataAdapter(query, GetConnection());

            DataTable dt = new DataTable();

            ad.Fill(dt);

            return dt;


        }




        public DataTable GetDataTable(SortedList list, string query)
        {


            SqlCommand cmd = new SqlCommand(query, GetConnection());

            cmd.CommandType = CommandType.StoredProcedure;


            if (list.Count > 0)
            {
                string[] mkeys = new string[list.Count];

                list.Keys.CopyTo(mkeys, 0);

                for (int i = 1; i <= list.Count; i++)
                {

                    cmd.Parameters.Add(new SqlParameter('@' + mkeys[i - 1], list[mkeys[i - 1]]));

                }

            }

            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            return dt;


        }


        public int ExecuteNonQuery(string query)
        {


            SqlCommand cmd = new SqlCommand(query, GetConnection());

            int result = cmd.ExecuteNonQuery();

            return result;

        }


        public object ExecuteScalar(string query)
        {
            SqlCommand cmd = new SqlCommand(query, GetConnection());

            object s;

            s = cmd.ExecuteScalar();

            return s;


        }

        public int executenonquery(SortedList list, string query)
        {

            SqlCommand cmd = new SqlCommand(query, GetConnection());
            cmd.CommandType = CommandType.StoredProcedure;

            if (list.Count > 0)
            {

                string[] mkeys = new string[list.Count];

                list.Keys.CopyTo(mkeys, 0);

                for (int i = 1; i <= list.Count; i++)
                {

                    cmd.Parameters.Add(new SqlParameter('@' + mkeys[i - 1], list[mkeys[i - 1]]));

                }


            }

            return cmd.ExecuteNonQuery();



        }


        public string executeprocedure(SortedList list, string query)
        {

            try
            {
                SqlCommand cmd = new SqlCommand(query, GetConnection());
                cmd.Parameters.Clear();
                cmd.CommandType = CommandType.StoredProcedure;
                if (!(list.Count == 0))
                {

                    string[] mKeys = new string[list.Count];
                    list.Keys.CopyTo(mKeys, 0);
                    int i = 0;
                    for (i = 1; i <= list.Count; i++)
                    {
                        cmd.Parameters.Add(new SqlParameter("@" + mKeys[i - 1], list[mKeys[i - 1]]));

                    }
                }
                return cmd.ExecuteScalar().ToString();

            }
            catch (Exception exe)
            {
                return "-1";
            }
            finally
            {
                if (GetConnection().State == ConnectionState.Open)
                {

                    GetConnection().Close();

                }
            }
        }


































    }
}

