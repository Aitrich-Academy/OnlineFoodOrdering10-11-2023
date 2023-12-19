<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="Online_Food_Ordering.User.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="UserStyle/startpage.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 789px;
            margin-top: 317px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        
        <p>
            &nbsp;</p>
        <p>
        <asp:ImageButton ID="ImgBtnStart" runat="server" Height="113px" Width="161px" ImageUrl="~/Image/startbutton.png" OnClick="ImgBtnStart_Click" CssClass="auto-style1"/>
        </p>
        <div style="margin-top:15px; margin-left:493px;">
            <asp:HyperLink ID="HLinkHome" runat="server" style="margin-left: 15px; margin-top: 20px;font-weight:500;text-decoration:none; font-size:24px;" NavigateUrl="~/User/Login.aspx">HOME</asp:HyperLink>
             <asp:HyperLink ID="HLinkContactUs" runat="server" style="margin-left: 45px; margin-top: 20px;font-weight:500;text-decoration:none; font-size:24px;" NavigateUrl="~/User/RestaurantContact.aspx" >CONTACT US</asp:HyperLink>
             <asp:HyperLink ID="HLinkAboutUs" runat="server" style="margin-left: 30px; margin-top: 20px;font-weight:500;text-decoration:none; font-size:24px;" NavigateUrl="~/User/AboutUs.aspx">ABOUT US</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
