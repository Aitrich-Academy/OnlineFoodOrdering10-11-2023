<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddCategories.aspx.cs" Inherits="Online_Food_Ordering.Admin.AddCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="AdminStyle/Category.css" rel="stylesheet" />
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server"> 
                                                                         <!-- for 2 submit on same form  -->
    <asp:ScriptManager runat="server" ID="ScriptManager1"></asp:ScriptManager>
   
             <asp:UpdatePanel runat="server" ID="UpdatePanel">  
        <ContentTemplate>
           <div class="form-categories">
            <div class="form-row">
                <div class="form-column">
                    <asp:Label ID="LblCName" runat="server" Text="Category Name" CssClass="LblCatName"></asp:Label>
                   <asp:TextBox ID="TxtCtgryName" runat="server" CssClass="TxtCatName" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RFCategoryName" runat="server" ControlToValidate="TxtCtgryName" ErrorMessage="**" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>
                <div class="form-column">
                    <asp:Label ID="LblDscrptn" runat="server" Text="Description"  CssClass="LblDscrptn"></asp:Label>
                    <asp:TextBox ID="TxtDescription" runat="server" CssClass="TxtDescription"  TextMode="MultiLine"></asp:TextBox>

                     <asp:RequiredFieldValidator ID="RFCategoryDescription" runat="server" CssClass="RFDescrip" ControlToValidate="TxtDescription" ErrorMessage="**" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>
                <div class="form-column"  >
                 <asp:Label ID="LblImage" runat="server" Text="Image" CssClass="LblImage"></asp:Label>
                 <asp:FileUpload ID="FileUpCategory" runat="server"  CssClass="FileUpCategorys"/>
                    </div>
                <div class="form-column" >
                <asp:Button ID="BtnCategorySubmit" runat="server" Text="Submit" CssClass="categorybutton" OnClick="BtnCategorySubmit_Click"  ValidationGroup="a" />    
                    <asp:Button ID="BtnClearCategory" runat="server" Text="Clear"  CssClass="categoryClear" OnClick="BtnClearCategory_Click"/>
                    </div>
                <%--
                                <asp:Label ID="Labelbrowse" runat="server" Text="     " CssClass="textboxes" Width="165"  >
                                    <asp:Button ID="BtnBrowse" runat="server" Text="Browse" Width="80" Height="22"   cssclass="browsebtn" />
                                </asp:Label>  --%>                          <%--
                        <asp:ImageMap ID="ImageMap1" runat="server" Width="50" Height="50" CssClass="imagemap"></asp:ImageMap>  --%> 
                
                </div>
                <div class="form-row"  >
                    <div class="form-column-lblmsg1">
                        <asp:Label ID="LblMessage" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-column-Hf1">
                      <asp:HiddenField ID="HiddenFieldCategory" runat="server" Value="-1"  />      
                    </div>
               </div>
              </div>  
         </ContentTemplate>
                  <Triggers>
                    <asp:PostBackTrigger ControlID="BtnCategorySubmit" />
                </Triggers>
    </asp:UpdatePanel>

      <asp:UpdatePanel runat="server" ID="UpdatePanel2">
        <ContentTemplate>
        <div class="form-dishes">
         <div class="form-row">
                <div class="form-column">
                    <asp:Label ID="LblCategoryName2" runat="server" Text="Category Name"  CssClass="lblcatname2"></asp:Label>
                    <asp:DropDownList ID="DropDownCategory" runat="server" CssClass="DrpCatName2"></asp:DropDownList>
                </div>
                <div class="form-column">
                    <asp:Label ID="LblDishName" runat="server" Text="Dish Name" CssClass="lbldishname"></asp:Label>
                    <asp:TextBox ID="TxtDishName" runat="server" CssClass="txtdishname" ></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldDishName" runat="server" CssClass="RFDishName" ErrorMessage="**" ForeColor="Red" ControlToValidate="TxtDishName" ValidationGroup="b"></asp:RequiredFieldValidator>     
                </div>
                  <div class="form-column">
                    <asp:Label ID="LblPrice" runat="server" Text="Price" CssClass="lblprice"></asp:Label>
                    <asp:TextBox ID="TxtPrice" runat="server" CssClass="txtprice"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldPrice" runat="server" CssClass="RFPrice" ErrorMessage="**" ForeColor="Red" ControlToValidate="TxtPrice" ValidationGroup="b"> </asp:RequiredFieldValidator>      
                </div>
                <div class="form-column">
                    <asp:Label ID="LblImage2" runat="server" Text="Image" CssClass="lblimage2"></asp:Label>
                    <asp:FileUpload ID="FileUploadDishes" runat="server"  CssClass="fileup2"/>
                </div>

             </div>
              <div class="form-row"  >
                   <div class="form-column">
                    <asp:Label ID="LblDescriptionD" runat="server" Text="Description"  CssClass="lbldiscrip2"></asp:Label>
                    <asp:TextBox ID="TxtDishDescription" runat="server" CssClass="txtdiscrip2"  TextMode="MultiLine"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RFDiscriptionDish" runat="server" CssClass="RfdishDescrp" ControlToValidate="TxtDishDescription" ErrorMessage="**" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>    
                </div>
                   <div class="form-column">
                    <asp:Button ID="BtnSubmitDish" runat="server" Text="Submit" CssClass="BtnSubmitDish" OnClick="BtnSubmitDish_Click"   ValidationGroup="b" />  
                   <asp:Button ID="BtnClearDish" runat="server" Text="Clear"  CssClass="dishClear" OnClick="BtnClearDish_Click"/>
                   
                   </div>
                  <div class="form-column-lblHfmsg2">
                  <asp:Label ID="LblMessageDish" runat="server" Text=""></asp:Label>
                    <asp:HiddenField ID="HFDish" runat="server" Value="-1" />
                    </div>
                  </div>
    </div>
               </ContentTemplate>
          <Triggers>
                    <asp:PostBackTrigger ControlID="BtnSubmitDish" />
                </Triggers>
    </asp:UpdatePanel>
        <div class="gridview">
            <asp:GridView ID="GridDishes" runat="server" AutoGenerateColumns="False" DataKeyNames="Id,Name,CategoryId,Description,Image,Price" CellPadding="5" ForeColor="#333333" GridLines="None" CssClass="gridviewDish" Width="770px" Height="150px"  >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Dish Id" />
                    <asp:BoundField DataField="Name" HeaderText="Dish Name" />
                    <asp:BoundField DataField="CategoryId" HeaderText="Category" />
             
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle Height="50px" Width="50px" />
                    </asp:ImageField>
                    
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnEdit" runat="server" Height="40px"  Width="40px" ImageUrl="~/Image/edit.png" OnClick="btnEdit_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnDelete" runat="server" Height="40px" ImageUrl="~/Image/delete.png" Width="40px" OnClick="btnDelete_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                   <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                   <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                   <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#E9E7E2" />
                   <SortedAscendingHeaderStyle BackColor="#506C8C" />
                   <SortedDescendingCellStyle BackColor="#FFFDF8" />
                   <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
      
</asp:Content>
