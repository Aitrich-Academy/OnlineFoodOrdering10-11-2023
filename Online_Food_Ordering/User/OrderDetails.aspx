<%@ Page Title="" Language="C#" MasterPageFile="~/User/Restuarant.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="Online_Food_Ordering.User.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .Labelh1{


             font: 700 40px "Volkhov-bold";


        }
       .errormsg{



            font: 700 30px "Volkhov-bold";
            color:#3B3E09;



       }
      .checkoutdetails{

           border: 1px solid ; /* Add a border with the desired color and width */
           padding: 10px; /* Add padding to create space between the border and the content */
          border-radius: 10px; /* Add rounded corners */
/* Add other styles as needed */
           width : 800px;
          height:720px;
         border-color:black;
         margin-left:270px;

      }
       
       /* Style for form labels */
.form-group label {
    display: inline-block;
    width: 100px; /* Adjust the width as needed */
    font-weight: bold;
    margin-left: 150px; /* Add space between label and input */
}

/* Style for textboxes */
.form-group input[type="text"] {
    width: 200px; /* Adjust the width as needed */
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-left:120px;
     margin-bottom: 30px;
}

/* Style for the Checkout button */
.btn-primary {
    background-color: #fff;
    color: #750505;
    padding: 10px 20px;
    border: 2px solid #750505;
     font: 700 16px "Volkhov-bold";
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
    margin-left:300px;
}

/* Style for validation error messages */
.form-group .validator {
    color: red;
}

       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="auto-style3">
        &nbsp;</p>
    <p class="auto-style3">
        &nbsp;</p>
    <p class="auto-style3">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Labelh1" runat="server" ForeColor="Maroon" Text="Checkout" CssClass="Labelh1"></asp:Label>
    </p>
    <p class="auto-style3">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <p class="auto-style3">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="orderdetailmsg" runat="server" CssClass="errormsg"></asp:Label>
    </p>
    <p class="auto-style3">
        &nbsp;</p>
   <div class="checkoutdetails">
       <br />
       <br />
    <div class="form-group">
        <label for="ChktTextBox1">Name:</label>
        <asp:TextBox ID="ChktTextBox1" runat="server" CssClass="form-control" Height="20px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ChktTextBox1" ErrorMessage="***" ForeColor="Red" ValidationGroup="h"></asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <label for="ChktTextBox2">Email:</label>
        <asp:TextBox ID="ChktTextBox2" runat="server" CssClass="form-control" Height="23px" ValidationGroup="h"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ChktTextBox2" ErrorMessage="***" ForeColor="Red" ValidationGroup="h"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ChktTextBox2" ErrorMessage="Invalid Email!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="h"></asp:RegularExpressionValidator>
    </div>

    <div class="form-group">
        <label for="ChktTextBox3">Phone:</label>
        <asp:TextBox ID="ChktTextBox3" runat="server" CssClass="form-control" Height="23px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ChktTextBox3" ErrorMessage="***" ForeColor="Red" ValidationGroup="h"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ChktTextBox3" ErrorMessage="Invalid Phonenumber!" ForeColor="Red" ValidationExpression="^(?:(?:\+91|0)?[6789]\d{9}|0\d{2,4}-\d{6,8})$" ValidationGroup="h"></asp:RegularExpressionValidator>
    </div>

    <div class="form-group">
        <label for="ChktTextBox4">District:</label>
        <asp:TextBox ID="ChktTextBox4" runat="server" CssClass="form-control" Height="24px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ChktTextBox4" ErrorMessage="***" ForeColor="Red" ValidationGroup="h"></asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <label for="ChktTextBox5">Pincode:</label>
        <asp:TextBox ID="ChktTextBox5" runat="server" CssClass="form-control" Height="27px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ChktTextBox5" ErrorMessage="***" ForeColor="Red" ValidationGroup="h"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="ChktTextBox5" ErrorMessage="Invalid Pincode!" ForeColor="Red" ValidationExpression="^[1-9][0-9]{5}$" ValidationGroup="h"></asp:RegularExpressionValidator>
    </div>

    <div class="form-group">
        <label for="ChktTextBox6">Dish:</label>
        <asp:TextBox ID="ChktTextBox6" runat="server" CssClass="form-control" Height="24px"></asp:TextBox>
    </div>

    <div class="form-group">
        <label for="ChktTextBox7">Price:</label>
        <asp:TextBox ID="ChktTextBox7" runat="server" CssClass="form-control" Height="23px"></asp:TextBox>
    </div>

    <div class="form-group">
        <label for="ChktTextBox8">Quantity:</label>
        <asp:TextBox ID="ChktTextBox8" runat="server" CssClass="form-control" Height="24px"></asp:TextBox>
        </div>
     <div class="form-group">
        <label for="ChktTextBox9">Grand Total:</label>
            <asp:TextBox ID="ChktTextBox9" runat="server" CssClass="form-control" Height="24px"></asp:TextBox>

      

    </div>

    <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Checkout" OnClick="Button1_Click" ValidationGroup="h" />
   
</div>
    <br />
     <br />
     <br />
     <br />
    <p class="auto-style3">
        
       
</asp:Content>
