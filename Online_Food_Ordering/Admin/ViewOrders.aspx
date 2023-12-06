<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewOrders.aspx.cs" Inherits="Online_Food_Ordering.Admin.ViewOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="AdminStyle/orders.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="heading">
    <asp:Label ID="LblHeading" runat="server" Text="Our Orders" CssClass="lblheading"></asp:Label>
    </div>
      <div class="gridOrders">
    <asp:GridView ID="GridViewOrders" runat="server" AutoGenerateColumns="False" DataKeyNames="Id,UserName,Phone,Email,DishName,Image,Quantity,Price" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="gridviewOrders" Width="770px" Height="150px"  HorizontalAlign="Center" OnRowCommand="GridViewOrders_RowCommand" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" />
           <asp:BoundField DataField="Phone" HeaderText="Phone" />
           <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="DishName" HeaderText="DishName" />
            <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle Height="50px" Width="50px" />
                    </asp:ImageField>
             <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Confirm">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageBtnConfirm" runat="server" Height="41px" Width="46px" ImageUrl="~/Image/confirm.jpg" CommandName="Confirm" CommandArgument='<%# Container.DataItemIndex %>' OnClick="ImageBtnConfirm_Click"   />
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Justify" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        </div>
     <div class="div_lbl">
        <asp:Label ID="LblMessage" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
