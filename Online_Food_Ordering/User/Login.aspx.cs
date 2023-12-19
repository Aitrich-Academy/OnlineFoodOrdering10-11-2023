using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BAL.User.Manager;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;
using static System.Net.Mime.MediaTypeNames;
using System.Data;

namespace Online_Food_Ordering
{
    public partial class Login : System.Web.UI.Page
    {
        UserManager UserManager_obj = new UserManager();
        int userId;
     
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
            Response.Cache.SetValidUntilExpires(true);
        }

        /* protected void LoginBtn_Click(object sender, EventArgs e)
         {

             UserManager_obj.userdetails.EmailId = lgntxtbox1.Text.Trim().ToString();

             UserManager_obj.userdetails.Password = lgntxtbox2.Text.Trim().ToString();


            string result =  UserManager_obj.Login();



                 if (result == "User")
                 {
                     LblMsgLgn.Visible = true;

                     LblMsgLgn.Text = "Successfully Logged In";
                     Response.Redirect("UserDashboard.Aspx");


                 }

                 else if (result == "Admin")
                 {
                     LblMsgLgn.Visible = true;
                     LblMsgLgn.Text = "you will be redirected to admin";
                     Response.Redirect("AdminDashboard.Aspx");

                 }



             else
             {


                 LblMsgLgn.Visible = true;
                 LblMsgLgn.Text = "Invalid credentials.";
                 Clear();

             }


         }


         public void Clear()
         {
             lgntxtbox1.Text = "";
             lgntxtbox2.Text = "";

         } */

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            UserManager_obj.userdetails.EmailId = loginbox1.Text.Trim();
            UserManager_obj.userdetails.Password = loginbox2.Text.Trim();

            DataTable result = UserManager_obj.Login();

            if (result != null && result.Rows.Count > 0)
            {

                DataRow row = result.Rows[0];
                userId = Convert.ToInt32(row["Id"]);
                if (row["role"] == "invalid user" && userId==0 )
                {

                    LblMsgLgn.Visible = true;
                    LblMsgLgn.Text = "Invalid credentials.";
                    

                }

                else
                {
                    //int userId = Convert.ToInt32(row["Id"]);
                    string role = row["Role"].ToString();

                    // Store user ID in session
                    Session["UserID"] = userId;

                    // Redirect based on role
                    if (role == "User")
                    {


                        Response.Redirect("~/User/UserDashboard.aspx");

                    }
                    else if (role == "Admin")
                    {
                        Response.Redirect("~/Admin/AdminDashboard.aspx");
                    }

                    else
                    {
                        LblMsgLgn.Visible = true;
                        LblMsgLgn.Text = "Invalid credentials.";


                    }
                }

            }


            else
            {
                LblMsgLgn.Visible = true;
                LblMsgLgn.Text = "Invalid credentials.";


            }



















        }

    }
}