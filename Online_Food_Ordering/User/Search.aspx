<%@ Page Title="" Language="C#" MasterPageFile="~/User/Restuarant.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Online_Food_Ordering.User.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="UserStyle/UserStyle.css" rel="stylesheet" />
 <link href="UserStyle/search.css" rel="stylesheet" />
    <style type="text/css">
        .search-button {
        }
        .search-input {
            margin-left: 55px;
            
        }
        .lblsearch{

            color:darkgoldenrod !important;
            font-weight: bold;
             font: 700 30px "Volkhov-bold";

        }

        .Datalist_div{








        }

        .qntybtnstyle{

            
             border-radius: 3px !important; /* Curved edges */
        background-color: #EEEEFF !important; /* Change background color */
        color: black !important; /* Text color */
         font:"Volkhov-bold" !important;
        font-weight: bold !important; /* Make the text bold */
        font-size: 14px !important; /* Change font size */
        padding: 5px 10px !important; /* Add padding for spacing */
        border: none !important; /* Remove border */
        cursor: pointer !important; /* Add pointer cursor on hover */
         border: 1px solid #EEEEFF !important; 
          box-shadow: 0px 2px 5px rgba(27, 27, 27) !important;




        }
        .Labelsearchdishes{

            
            color:#880808 ;
            font-weight: bold;
             font: 750 30px "Volkhov-bold";







        }
        /* Styles for the search page container */
.search-page-container {
    width: 1300px;
    margin: 0 auto;
    padding: 20px;
    background-color:white;
}
.searchDatalist td {
    background-color: white !important;
}

/* Heading style */
.search-heading {
    font-size: 30px;
    font-weight: bold;
    margin-bottom: 20px;
    text-align: center;
            margin-left: 0px;
        }

/* Styles for the search input and button */
.search-div {
    text-align: center;
    margin-bottom: 20px;
            height: 121px;
            margin-top: 0px;
            background-color:white;
            border : 2px solid black;
        }

.search-input {
    padding: 5px;
    font-size: 16px;
    margin-right: 10px;
    border-radius: 18px;
    border:2px solid black;
            margin-top: 0px;
        }

.search-button {
        margin-top: 0px;
            margin-left: 0px;
        }

/* Styles for the search results data list */
.searchDatalist {
    list-style: none;
    padding: 0;
    margin: 0 0 0 243px;
    background-color:white;
}

/* Styles for each search dish item */
/*.search-dish-item {
    border: 1px solid #ddd;
    padding: 10px;
    margin: 10px;
    width: 300px;
    text-align: center;
    background-color: #fff;
    border-radius: 5px;

}*/

/* Styles for search dish name */
.search-dish-name {
    font-weight: bold;
    font-size: 18px;
    margin-bottom: 10px;
    color:darkred;
    text-align:center;
}

/* Styles for search dish image */
.search-dish-image {
    width: 100px;
    height: 100px;
    margin: 0 auto 0 12px;
    display: block;
}

/* Styles for search dish details */
.search-dish-details {
    margin-top: 10px;
    background-color:white;
}

/* Styles for search dish price */
.search-dish-price {
    font-weight: bold;
    color: red;
    font-size: 16px;
}

/* Styles for search dish quantity */
.search-dish-quantity {
        
}

/* Styles for search dish quantity label */
.search-dish-quantity-label {
    font-weight: bold;
    font-size: 16px;
    color:black;
}

/* Styles for the plus and minus buttons */
.search-button {
   
}

/* Styles for the "Add to Cart" button */
.search-dish-add-to-cart-button {
        border-radius: 3px; /* Curved edges */
background-color: #faf0e6; /* Change background color */
color: black; /* Text color */
font-weight: bold; /* Make the text bold */
font-size: 16px; /* Change font size */
padding: 10px 20px; /* Add padding for spacing */
border: none; /* Remove border */
cursor: pointer; /* Add pointer cursor on hover */

  font:   "Volkhov-bold";
   border: 1px solid #ffe4e1; 
    box-shadow: 0px 2px 5px rgba(27, 27, 27);

}

/* Clearfix for float elements */
.clearfix::after {
    content: "";
    display: table;
    clear: both;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
       
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label1" runat="server" Text="Search Your Favourite Dish"   CssClass ="Labelsearchdishes"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
       
            <asp:Label ID="lblsearchmsg" runat="server" Text="" Visible="false" CssClass="lblsearch"></asp:Label>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtSearch" runat="server" CssClass="search-input" Height="23px" Width="248px" />
            <asp:ImageButton ID="ImgBtnSearch" runat="server" ImageUrl="~/User/images/search.png" OnClick="ImgBtnSearch_Click" CssClass="search-button"  Height="40px" Width="40px" />
        
        <br />
        <br />
        <br />
        
            <div class="Datalist_div" style="background-color:white">
            <asp:DataList ID="DataListSearch" runat="server" CellPadding="4"  ForeColor="White"  AlternatingItemStyle-BackColor="White" RepeatDirection="Horizontal" CssClass="searchDatalist" OnItemCommand="DataListSearch_ItemCommand" Width="1240px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
                
                <AlternatingItemStyle BackColor="White" />
                <ItemStyle BackColor="White" />
                <FooterStyle BackColor="#fff" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#fff" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#fff" />
                <ItemTemplate>
                    <div class="search-dish-item">
                   &nbsp;&nbsp;  &nbsp;&nbsp;      &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' CssClass="search-dish-name" />
                        <br />
                        <br />
                        
                        <asp:Image ID="ImageDish" runat="server" ImageUrl='<%# Eval("Image") %>' CssClass="search-dish-image" Height="215px" Width="227px" style="border-radius:2%; margin-right: 16px" BackColor="White" />
                        <div class="search-dish-details">
              &nbsp;&nbsp;    &nbsp;&nbsp;  &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;       &nbsp;&nbsp;       <span class="search-dish-price">USD <%# Eval("Price") %></span>
                            <br />
              &nbsp;&nbsp;  &nbsp;&nbsp;   &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;         <asp:Button ID="BtnPlus" runat="server" Text="+" CommandName="Plus"  CommandArgument='<%# Eval("Id") %>' CssClass="qntybtnstyle" />  
                        &nbsp;&nbsp;     <asp:Label ID="lblQuantity" runat="server" Text="1" CssClass="search-dish-quantity-label"></asp:Label>
                         
                       &nbsp;&nbsp;      <asp:Button ID="BtnMinus" runat="server" Text="-" CommandName="Minus"  CommandArgument='<%# Eval("Id") %>' CssClass="qntybtnstyle"  />
                            <br />
                            <br />
                      &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;    &nbsp;&nbsp;  <asp:Button ID="BtnCart" runat="server" Text="Add to Cart" CommandName="Cart" CommandArgument='<%# Eval("Id") %>' CssClass="search-dish-add-to-cart-button"  />
                        </div>
                    </div>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#fff" Font-Bold="True" ForeColor="#fff" />
            </asp:DataList>
           
        </div>
   
</asp:Content>
