using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BAL.User.Manager;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        UserManager UserManager_obj  = new UserManager();



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              
                lblmsg.Visible = false;
            }

        }

        public void Clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";

        }
        protected void SignUpBtn_Click(object sender, EventArgs e)
        {

            UserManager_obj.userdetails.Name = TextBox1.Text.Trim().ToString();

            UserManager_obj.userdetails.EmailId = TextBox2.Text.Trim().ToString();

            UserManager_obj.userdetails.Phonenumber = TextBox3.Text.Trim().ToString();

            UserManager_obj.userdetails.Address = TextBox4.Text.Trim().ToString();

            UserManager_obj.userdetails.Password = TextBox5.Text.Trim().ToString();



            string result = UserManager_obj.UserInsert();


            if(result == "Success")
            {

                   lblmsg .Visible = true;

                   lblmsg.Text = "Registration Successfull";


                   Clear();


            }

            else if (result == "Already Exist")
            {

                  lblmsg.Visible = true;

                  lblmsg.Text = "Account Already Exists!.Login now";


            }
            else if (result == "Error")
            {
                 lblmsg.Visible = true;
                 lblmsg.Text = "failed due to error";

            }
            else
            {
                lblmsg.Visible = true;
                lblmsg.Text = "failed due to some technical error";
            }








        }
    }
}