<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Food_Ordering.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="UserStyle/UserStyle.css" rel="stylesheet" />
    <style>

        /* CSS for Login Page */

        /* CSS for Login Page */
.logindiv {
   
           border: 1px solid ; /* Add a border with the desired color and width */
           padding: 10px; /* Add padding to create space between the border and the content */
          border-radius: 10px; /* Add rounded corners */
/* Add other styles as needed */
           width : 800px;
          height:500px;
         border-color:black;
         margin-left:270px;

}


.form-group label{

     display: inline-block;
 width:84px;
 font-weight: bold;
 margin-left:77px;
  font: 700 30px "Volkhov-bold";
            height: 24px;
            margin-top: 0px;
        }


.form-group input[type="text"],
.form-group input[type="password"] {
     padding: 5px;
 border: 1px solid #ccc;
 border-radius: 4px;
 margin-left:249px;
 margin-bottom:20px;
            margin-top: 15px;
        }

.btn-primary{
    background-color: #fff;
    color: #750505;
    padding: 10px 20px;
    border: 2px solid #750505;
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
            font-style: normal;
            font-variant: normal;
            font-size: 16px;
            line-height: normal;
            font-family: Volkhov-bold;
            margin-left: 295px;
        }

.logindiv .validation-error {
    color: red;
    font-size: 12px;
}

.rgrlink{

     font-family:"roboto";

 color:#E2725B;



}





  









    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            &nbsp;</div>
        
            <asp:Image ID="Image1" runat="server" Height="152px" ImageUrl="~/User/images/nirvana indic original logo.png" Width="158px" style="margin-left: 114px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LblMsgLgn" runat="server"  Visible="False" ForeColor="#990033"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="loginlbl" runat="server" Text="Login"></asp:Label>
        <br />
        <br />
        <br />
   <div class="logindiv">
       <br />
       <br />
       <div class="form-group">
      
        <label for="loginbox1">Email</label>&nbsp;<asp:TextBox ID="loginbox1" runat="server" CssClass="form-control" Width="29%" Height="31px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loginbox1" ErrorMessage="*" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="loginbox1" ErrorMessage="Invalid email format!" ForeColor="Red" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ValidationGroup="b"></asp:RegularExpressionValidator>
    </div>

    <div class="form-group">
        
        <label for="loginbox2">Password</label>
        <asp:TextBox ID="loginbox2" runat="server" CssClass="form-control" TextMode="Password" Width="29%" Height="28px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginbox2" ErrorMessage="*" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="loginbox2" ErrorMessage="Password format not valid!" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}$" ValidationGroup="b"></asp:RegularExpressionValidator>
        <br />
        <br />
        <br />
    </div>

    <div class="form-group">
        <asp:Button ID="LoginBtn1" runat="server" Text="Login" Width="18%" CssClass="btn-primary" ValidationGroup="b" OnClick="LoginBtn_Click" />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblNoAccntlgn1" runat="server" Text="Don't Have an Account?" CssClass="rgrlink"></asp:Label>
        <asp:HyperLink ID="HyperRegister12" runat="server" NavigateUrl="~/User/Registration.aspx" CssClass="rgrlink">Register here</asp:HyperLink>
    </div>
</div>


    </form>
</body>
</html>
