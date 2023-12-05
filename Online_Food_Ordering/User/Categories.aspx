<%@ Page Title="" Language="C#" MasterPageFile="~/User/Restuarant.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="Online_Food_Ordering.User.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:ImageButton ID="ImageButton1" runat="server" Height="251px" ImageUrl="~/User/images/samosa.jpg" style="margin-left: 122px; margin-top: 235px" OnClick="NorthIndianImageButton1_Click" />
&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" Height="251px" ImageUrl="~/User/images/idliCtgry.jpg" style="margin-left: 123px; margin-top: 235px" Width="251px" OnClick="SouthIndianImageButton2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton3" runat="server" Height="251px" ImageUrl="~/User/images/veganCtgry.jpg" style="margin-left: 102px; margin-top: 235px" Width="251px" OnClick="VeganImageButton3_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
