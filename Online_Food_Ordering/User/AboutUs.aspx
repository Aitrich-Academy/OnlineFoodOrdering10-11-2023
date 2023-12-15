<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Online_Food_Ordering.User.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="UserStyle/AboutUs.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div style="margin-top:150px;margin-left:979px; width: 163px;">
            <asp:Label ID="LblName" runat="server" Text="Nirvana Indic" style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight:400;font-style:italic;font-size:28px;"></asp:Label>
        </div>
        <div  style="margin-top:65px; margin-left:840px; width:530px;">
            <asp:Label ID="LabelDescription" runat="server" >
                <p style="font-family:'Comic Sans MS';font-size:16px;font-style:italic; word-spacing:4px; line-height:28px;">
                    Welcome to Nirvana Indic, where the essence of India's rich culinary heritage comes alive. Embark on a delectable journey through the vibrant flavors and aromatic spices that define our authentic Indian cuisine. At Nirvana Indic, each dish is a masterpiece, crafted with love and the finest local ingredients, inviting you to savor a taste of culinary bliss. Join us for an unforgettable dining experience, where tradition meets modern elegance, right at your table.
                </p>

            </asp:Label>
        </div>
        <div style="margin-left:1100px;margin-top:100px;">
            <asp:ImageButton ID="ImgBtnBack" runat="server" ImageUrl="~/User/images/backButton.png"  Width="150" Height="75" OnClick="ImgBtnBack_Click" />
        </div>
    </form>
</body>
</html>
