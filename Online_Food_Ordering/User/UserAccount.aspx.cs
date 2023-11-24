using System;
using System.Collections.Generic;
using System.Linq;
using BAL.User.Manager;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Online_Food_Ordering.User
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        UserManager UserManager_obj = new UserManager();

        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                // Retrieve the user ID from session
                int userId = Convert.ToInt32(Session["UserID"]);

                // Now you can use userId to fetch user details from the database
               DataTable dt =  UserManager_obj.GetUserDetails(userId);

                if (dt != null && dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    id = Convert.ToInt32(row["id"]);
                    UsrAccntNmeTxtBx.Text = row["Name"].ToString();
                    UsrAccntEmailTxtBx.Text = row["Email"].ToString();
                    UsrAccntPhnoTxtBx.Text= row["Phone"].ToString();
                    UsrAccntAddrssTxtBx.Text = row["Address"].ToString();
                    UsrAccntPsswrdTxtBx.Text = row["Password"].ToString();

                    
                }


            }
            else
            {
               
                Response.Redirect("Login.aspx");
            }
        }

        protected void UsrAccntBtnSbt_Click(object sender, EventArgs e)
        {
            UserManager_obj.userdetails.Id = id;

            UserManager_obj.userdetails.Name = UsrAccntNmeTxtBx.Text.Trim().ToString();

            UserManager_obj.userdetails.EmailId = UsrAccntEmailTxtBx.Text.Trim().ToString();

            UserManager_obj.userdetails.Phonenumber = UsrAccntPhnoTxtBx.Text.Trim().ToString();

            UserManager_obj.userdetails.Address = UsrAccntAddrssTxtBx.Text.Trim().ToString();

            UserManager_obj.userdetails.Password = UsrAccntPsswrdTxtBx.Text.Trim().ToString();



            string result = UserManager_obj.UserUpdate();


            if (result == "Success")
            {

                UsrAccntCnfrmLbl.Visible = true;

                UsrAccntCnfrmLbl.Text = " Successfully Updated";


            }

           
            else if (result == "Error")
            {
                UsrAccntCnfrmLbl.Visible = true;
                UsrAccntCnfrmLbl.Text = "failed due to error";

            }
            else
            {
                UsrAccntCnfrmLbl.Visible = true;
                UsrAccntCnfrmLbl.Text = "failed due to some technical error";
            }

        }

        protected void UsrAccntBtnDlte_Click(object sender, EventArgs e)
        {
            UserManager_obj.userdetails.Id = id;

            string result = UserManager_obj.UserDelete();

            if (result == "Success")
            {

                UsrAccntCnfrmLbl.Visible = true;

                UsrAccntCnfrmLbl.Text = " Successfully Deleted";


            }


            else if (result == "Error")
            {
                UsrAccntCnfrmLbl.Visible = true;
                UsrAccntCnfrmLbl.Text = "failed due to error";

            }
            else
            {
                UsrAccntCnfrmLbl.Visible = true;
                UsrAccntCnfrmLbl.Text = "failed due to some technical error";
            }




        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            UsrAccntNmeTxtBx.Text = "";
            UsrAccntEmailTxtBx.Text = "";
            UsrAccntPhnoTxtBx.Text = "";
            UsrAccntAddrssTxtBx.Text = "";
            UsrAccntPsswrdTxtBx.Text = "";
        }
    }
}