<%@ Page Title="" Language="C#" MasterPageFile="~/User/Restuarant.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Online_Food_Ordering.User.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="UserStyle/search.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="search_div">
    <asp:TextBox ID="TxtSearch" runat="server"></asp:TextBox>
    <asp:ImageButton ID="ImgBtnSearch" runat="server" Width="22px" ImageUrl="~/User/images/search.png" OnClick="ImgBtnSearch_Click"/>
       
        </div>
    <div class="Datalist_div">
        <asp:DataList ID="DataListSearch" runat="server"  CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="5" RepeatDirection="Horizontal" CssClass="searchDatalist" OnItemCommand="DataListSearch_ItemCommand" >
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#EFF3FB" />
            <ItemTemplate>
              
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' style="margin-left:15px; font-weight:600" />
                <br />
            
                <asp:Image ID="ImageDish" runat="server" ImageUrl='<%# Eval("Image") %>' style="width:100px;height:100px;margin:8px;"/>
        
                <br />
                 &nbsp&nbsp&nbsp Rs:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' style="margin-left:15px; font-weight:600" />
                <br />
                <br />
                 &nbsp&nbsp Quantity: <asp:Label ID="lblQuantity" runat="server" Text="1" style="margin-left:5px;"></asp:Label>
                <br /><br />
                <asp:Button ID="BtnPlus" runat="server" Text="+" CommandName="Plus"   CommandArgument='<%# Container.ItemIndex %>' style="margin-left:20px;"/>
                <asp:Button ID="BtnMinus" runat="server" Text="-"  CommandName="Minus"   CommandArgument='<%# Container.ItemIndex %>' style="margin-left:20px;"/>
                <br />
               
                  <br />
                <asp:Button ID="BtnCart" runat="server" Text="Add to Cart" CommandName="Cart"   CommandArgument='<%# Container.ItemIndex %>' style="margin-left:15px;"/>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestuarantConnectionString2 %>" SelectCommand="SELECT [Name], [Image], [Price] FROM [Dishes] WHERE ([Name] LIKE '%' + @Name + '%')">
            <SelectParameters>                                                                                                                                                              
                <asp:ControlParameter ControlID="TxtSearch" Name="Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>


</asp:Content>
