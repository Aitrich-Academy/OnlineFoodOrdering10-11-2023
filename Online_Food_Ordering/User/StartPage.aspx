<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="Online_Food_Ordering.User.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="UserStyle/startpage.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        
        <p>
        <asp:ImageButton ID="ImgBtnStart" runat="server" Height="113px" Width="161px" ImageUrl="~/Image/startbutton.png"  style="margin-top: 370px;margin-left: 700px;" OnClick="ImgBtnStart_Click"/>
        </p>
        <div style="margin-top:15px; margin-left:550px;">
            <asp:HyperLink ID="HLinkHome" runat="server" style="margin-left: 15px; margin-top: 20px;font-weight:500;text-decoration:none; font-size:24px;" NavigateUrl="~/User/Login.aspx">HOME</asp:HyperLink>
             <asp:HyperLink ID="HLinkContactUs" runat="server" style="margin-left: 45px; margin-top: 20px;font-weight:500;text-decoration:none; font-size:24px;" >CONTACT US</asp:HyperLink>
             <asp:HyperLink ID="HLinkAboutUs" runat="server" style="margin-left: 30px; margin-top: 20px;font-weight:500;text-decoration:none; font-size:24px;" NavigateUrl="~/User/AboutUs.aspx">ABOUT US</asp:HyperLink>
        </div>
    </form>
</body>
</html>
