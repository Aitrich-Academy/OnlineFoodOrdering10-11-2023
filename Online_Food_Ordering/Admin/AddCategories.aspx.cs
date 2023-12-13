using BAL.Admin.Manager;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Ordering.Admin
{
    public partial class AddCategories : System.Web.UI.Page
    {
        CategoryManager manager = new CategoryManager();
        DishManager dishManager = new DishManager();
        string selectedCategory;
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
            Response.Cache.SetValidUntilExpires(true);


            if (Page.IsPostBack == false)
            {
                Load_Categories();//for dropdown

                DishesBind(); //for grid view
            
            }

        }

     

        private void DishesBind()
        {
            GridDishes.DataSource = dishManager.SelectAllDishes();
            GridDishes.DataBind();
        }

        private void Load_Categories()
        {
            DropDownCategory.DataSource = manager.SelectAllCategories();
            DropDownCategory.DataTextField = "Name";    //DataTextField is what the user can see.
            DropDownCategory.DataValueField = "Id";  // DataValueField is what you can use for identify which one is selected from DropDownList
            selectedCategory=DropDownCategory.SelectedValue.ToString();
            DropDownCategory.DataBind();
        }

        protected void BtnCategorySubmit_Click(object sender, EventArgs e)
        {
            if ((HiddenFieldCategory.Value == "-1")&&(BtnCategorySubmit.ValidationGroup=="a"))
            {
                CategoryInsert();
                clearCategory();

                //UpdatePanel.ContentTemplateContainer.Controls.Add(new LiteralControl("Category submitted successfully!"));
            }
           
        }

        private void CategoryInsert()
        {
            if (FileUpCategory.HasFiles == true)
            {

                string filename = GetRandomText();
                string path = Server.MapPath("~/Image/");
                FileUpCategory.SaveAs(path + filename + ".jpg");
                manager.categoryProperty.Name = TxtCtgryName.Text.Trim().ToString();
                manager.categoryProperty.Description = TxtDescription.Text.Trim().ToString();
                manager.categoryProperty.Image = ("~/Image/" + filename + ".jpg");
                if ((manager.categoryProperty.Name != null) && (manager.categoryProperty.Description != null))
                {
                    string result = manager.CategoryInsert();
                    TxtCtgryName.Text = "";
               
                    if (result == "Success")
                    {

                        LblMessage.Visible = true;
                        LblMessage.Text = "Inserted Successfully";
                        // Clear();

                    }
                    else if (result == "Already Exist")
                    {
                        LblMessage.Visible = true;
                        LblMessage.Text = "already Exist";

                    }
                    else if (result == "Error")
                    {
                        LblMessage.Visible = true;
                        LblMessage.Text = "failed due to error";

                    }
                    else
                    {
                        LblMessage.Visible = true;
                        LblMessage.Text = "failed due to some technical error";
                    }
                }
                else
                {
                    LblMessage.Text = " Check all your inputs ";
                }
                
            }
            
        }

        private string GetRandomText()
        {
            string randomText = "";
            string alphabets = "0123456789";

            Random r = new Random();
            for (int j = 0; j <= 3; j++)
            {
                randomText += alphabets[r.Next(alphabets.Length)];
            }
            return randomText.ToString();

        }

        protected void BtnSubmitDish_Click(object sender, EventArgs e)
        {
            if ((HFDish.Value == "-1")&&(BtnSubmitDish.ValidationGroup=="b"))
            {
                DishInsert();
                clearDishes();
            }
            else
            {
                DishUpdate();
                clearDishes() ;
            }

        }

        private void DishUpdate()
        {
            if (FileUploadDishes.HasFile == true)
            {
                Load_Categories();

                string filename = GetRandomText();
                string path = Server.MapPath("~/Image/");
                FileUploadDishes.SaveAs(path + filename + ".jpg");
                dishManager.dishProperty.Id = int.Parse(HFDish.Value);
                dishManager.dishProperty.Name = TxtDishName.Text.Trim().ToString();
                dishManager.dishProperty.CategoryId = int.Parse(selectedCategory);
                dishManager.dishProperty.Description = TxtDishDescription.Text.Trim().ToString();
                dishManager.dishProperty.Image = ("~/Image/" + filename + ".jpg");
                dishManager.dishProperty.Price = Double.Parse(TxtPrice.Text.Trim().ToString());
                if ((dishManager.dishProperty.Name != null) && (dishManager.dishProperty.Description != null) && (manager.dishProperty.Price >= 0))
                {
                    string result = dishManager.DishesUpdate();
                    TxtDishName.Text = "";

                    if (result == "Success")
                    {

                        LblMessage.Visible = true;
                        LblMessageDish.Text = "Updated successfully";
                        // Clear();

                    }
                    else if (result == "Already Exist")
                    {
                        LblMessage.Visible = true;
                        LblMessage.Text = "already Exist";

                    }
                    else if (result == "Error")
                    {
                        LblMessage.Visible = true;
                        LblMessage.Text = "failed due to error";

                    }
                    else
                    {
                        LblMessage.Visible = true;
                        LblMessage.Text = "failed due to some technical error";
                    }
                }
                else
                {
                    LblMessage.Text = " Check all your inputs ";
                }
                DishesBind();
            }
        }

        // void DishInsert()
        private void DishInsert()
        {
            if (FileUploadDishes.HasFile == true)
            {
                Load_Categories();

                string filename = GetRandomText();
                string path = Server.MapPath("~/Image/");
                FileUploadDishes.SaveAs(path + filename + ".jpg");
                dishManager.dishProperty.Name = TxtDishName.Text.Trim().ToString();
                dishManager.dishProperty.CategoryId = int.Parse(selectedCategory);
                dishManager.dishProperty.Description = TxtDishDescription.Text.Trim().ToString();
                dishManager.dishProperty.Image = ("~/Image/" + filename + ".jpg");
                dishManager.dishProperty.Price = Double.Parse(TxtPrice.Text.Trim().ToString());
                if ((dishManager.dishProperty.Name != null) && (dishManager.dishProperty.Description != null) && (manager.dishProperty.Price >= 0))
                {
                    string result = dishManager.DishInsert();
                    TxtCtgryName.Text = "";
                 
                    if (result == "Success")
                    {

                        LblMessageDish.Visible = true;
                        LblMessageDish.Text = "Inserted Successfully";
                        // Clear();

                    }
                    else if (result == "Already Exist")
                    {
                        LblMessageDish.Visible = true;
                        LblMessageDish.Text = "already Exist";

                    }
                    else if (result == "Error")
                    {
                        LblMessageDish.Visible = true;
                        LblMessageDish.Text = "failed due to error";

                    }
                    else
                    {
                        LblMessageDish.Visible = true;
                        LblMessageDish.Text = "failed due to some technical error";
                    }
                }
                else
                {
                    LblMessageDish.Text = " Check all your inputs ";
                }
                DishesBind();
               
            }
            
        }

        protected void btnEdit_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            HFDish.Value = GridDishes.DataKeys[gvr.RowIndex].Value.ToString();
            selectDishesById();
        }

        private void selectDishesById()
        {
            string path = Server.MapPath("~/Image/");


            dishManager.dishProperty.Id = int.Parse(HFDish.Value);
            dishManager.SelectDishById();
            TxtDishName.Text = dishManager.dishProperty.Name;
            TxtPrice.Text = dishManager.dishProperty.Price.ToString();
            TxtDishDescription.Text = dishManager.dishProperty.Description;
           
            DropDownCategory.SelectedValue = dishManager.dishProperty.CategoryId.ToString() ;
    
        }

        protected void btnDelete_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            HFDish.Value = GridDishes.DataKeys[gvr.RowIndex].Value.ToString();
            DishesDelete();
        }

        private void DishesDelete()
        {
            dishManager.dishProperty.Id = int.Parse(HFDish.Value);
            string result = dishManager.DeleteDishes();
            TxtDishName.Text = "";
            HFDish.Value = "-1";

            if (result == "Success")
            {
                
                LblMessageDish.Visible = true;
                LblMessageDish.Text = "Successfully Deleted";
                DishesBind();

            }
            else if (result == "Error")
            {
                LblMessageDish.Visible = true;
                LblMessageDish.Text = "failed due to some  error";
            }

            else if (result == "Already exist")
            {
                LblMessageDish.Visible = true;
                LblMessageDish.Text = "Already Exist";
            }
            else
            {
                LblMessageDish.Visible = true;
                LblMessageDish.Text = "failed due to some technical error";
            }
            DishesBind();
           
        }

        protected void BtnClearCategory_Click(object sender, EventArgs e)
        {
            
            clearCategory();

        }

        private void clearCategory()
        {
            TxtCtgryName.Text = "";
            TxtDescription.Text = "";
        }

        protected void BtnClearDish_Click(object sender, EventArgs e)
        {
          
            clearDishes();

            
        }

        private void clearDishes()
        {
            TxtDishName.Text = "";
            TxtDishDescription.Text = "";
            TxtPrice.Text = "";
        }
    }
}