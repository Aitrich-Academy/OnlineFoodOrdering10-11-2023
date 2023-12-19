<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RestaurantContact.aspx.cs" Inherits="Online_Food_Ordering.RestaurantContact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="User/UserStyle/UserStyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 186px;
            height: 179px;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 1px;
        }
       
        .contactinfo{

            border: 3px solid maroon;
            border-radius:10%;
               color: black;
             text-align: center;
             font: 700 20px "Roboto";
       width:400px;
                 text-decoration: none;
            height: 400px;
            margin-left:493px;
        }
        .cntctlbl{
      margin-top:10px;
      color: #800000;
    
   font: 700 30px "Volkhov-Bold";
  
     
       text-align: center;

  }
        .auto-style3 {
            width: 4556px;
            height: 4556px;
        }
    </style>
</head>
<body id="RestaurantCnct">
    <form id="form1" runat="server">
        <div>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;<img alt="" class="auto-style1" src="images/nirvana%20indic%20original%20logo.png" /><p>
            &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <div class="contactinfo">
            <br />
            <br />
            <br />
       <asp:Label ID="lblcntctUs" runat="server" Text="Contact Us" CssClass="cntctlbl"></asp:Label>
        </p>
    <p id="cntctInfo">
        
       
           &nbsp  <a href="mailto:nirvanaindic@gmail.com">nirvanaindic@gmail.com</a><br />
            +0987654394
            <br />
            <br />

           
             Location:
            <br />
        Thompson Central Park,  NYC .
           
            <br />
            <br />
            Opening Hours:
            <br />
             &nbsp;&nbsp;&nbsp;
             EveryDay 10 Am - 10 Pm
            <br />
            <br />
           </div>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <img alt="" class="auto-style3" src="images/restaurant%20contact%20bckground.jpg" style="height:350px; width:385px; margin-left: 171px; margin-top: 0px;" /><asp:ImageButton ID="ImageButton1" runat="server" Height="135px" ImageUrl="~/User/images/back.png" style="border-radius:41px;margin-left: 74px; margin-top: 115px;" Width="144px" OnClick="ImageButton1_Click" />
  
    </form>
    



</body>
</html>
