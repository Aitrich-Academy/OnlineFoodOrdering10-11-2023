using BAL.Admin.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering
{
    public partial class ViewCustomers : System.Web.UI.Page
    {
        
        UserManager userManager = new UserManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            BindUsers();
            if (!IsPostBack)
            {
                BindUsers();
            }
        }

        private void BindUsers()
        {
            GridViewCustomers.DataSource = userManager.SelectAllUsers(); //change to usermanager.select()
            GridViewCustomers.DataBind();
        }

        protected void BtnBlock_Click(object sender, EventArgs e)
        {
            blockCustomer();
           
        }

        private void blockCustomer()
        {
          userManager.userProperty.Id = int.Parse(HFuser.Value);
        }

       /* protected void GridViewCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            // GridViewRow row = (GridViewRow)GridViewCustomers.Rows[e.RowIndex];
            // Label lbldeleteid = (Label)row.FindControl("LblId");

            // HFuser.Value = GridViewCustomers.DataKeys[gvr.RowIndex].Value.ToString();
            if (GridViewCustomers.SelectedRow != null)
            {
                string id = GridViewCustomers.SelectedRow.Cells[0].Text;
                //string id2 = id;
                LblMessage.Text = id.ToString();
            }
        }  */

        protected void ImageBtnBlock_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            HFuser.Value = GridViewCustomers.DataKeys[gvr.RowIndex].Value.ToString();
            blockUserById();

            
            GridViewRow row = (GridViewRow)((ImageButton)sender).NamingContainer;

            // Get the index of the row
            int rowIndex = row.RowIndex;

            // Now you have the row index and can use it as needed
            // For example, you can disable the ImageButton:
            ImageButton ImageBtnBlock = (ImageButton)row.FindControl("ImageBtnConfirm");

            if (ImageBtnBlock != null)
            {
                ImageBtnBlock.Enabled = false;
            }


        }

        private void blockUserById() {

            userManager.userProperty.Id = int.Parse(HFuser.Value);
            string result = userManager.blockUserById();
           
           // TxtDishName.Text = "";
           // HFDish.Value = "-1";

            if (result == "Success")
            {

                LblMessage.Visible = true;
                LblMessage.Text = "Successfully Blocked";

                BindUsers();

            }
            else if (result == "Error")
            {
                LblMessage.Visible = true;
                LblMessage.Text = "failed due to some  error";
            }

            else if (result == "Already exist")
{
                LblMessage.Visible = true;
                LblMessage.Text = "Already Exist";
}
else
{
                LblMessage.Visible = true;
                LblMessage.Text = "failed due to some technical error";
}



           
           // LblMessage.Text = "User has been blocked successfully ";
            //TxtDishName.Text = dishManager.dishProperty.Name;
           // TxtPrice.Text = dishManager.dishProperty.Price.ToString();
           // TxtDishDescription.Text = dishManager.dishProperty.Description;

            //DropDownCategory.SelectedValue = dishManager.dishProperty.CategoryId.ToString();
        }
    }
}