<%@ Page Title="" Language="C#" MasterPageFile="~/User/Restuarant.Master" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="Online_Food_Ordering.User.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="UserStyle/UserStyle.css" rel="stylesheet" />
    <style>
        /* CSS for User Account Page */
.UserAccountDiv {
               border: 1px solid ; /* Add a border with the desired color and width */
           padding: 10px; /* Add padding to create space between the border and the content */
          border-radius: 10px; /* Add rounded corners */
/* Add other styles as needed */
           width : 800px;
          height:700px;
         border-color:black;
         margin-left:230px;
}



.UserAccountDiv label {
   display: inline-block;
width: 150px;
font-weight: bold;
margin-left:117px;
 font: 700 20px "Volkhov-bold";
}

.UserAccountDiv input[type="text"],
.UserAccountDiv input[type="password"] {
    padding: 5px;
 border: 1px solid #ccc;
 border-radius: 4px;
 margin-left:120px;
 margin-bottom:20px;
        }

.UserAccountDiv .btn-primary {
    background-color: #fff;
    color: #750505;
    padding: 10px 20px;
    border: 2px solid #750505;
    font: 700 16px "Volkhov-bold";
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
    margin-left:120px;
}

.UserAccountDiv .dltbtn {
    background-color: #fff;
    color: #750505;
    padding: 10px 20px;
    border: 2px solid #750505;
    font: 700 16px "Volkhov-bold";
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
    margin-left:290px;
}

.UserAccountDiv .validation-error {
    color: red;
    font-size: 12px;
}


.useraccntlbl1{

    font: 700 34px "Volkhov-bold";
    color:maroon;

}
.UsrAccntLblMsg1{

     font: 700 34px "Volkhov-bold";
 color:darkgoldenrod;




}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="UsrAccntLbl" runat="server" Text="User Account" CssClass="useraccntlbl1"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="UsrAccntLblMsg" runat="server" visible ="false" CssClass="UsrAccntLblMsg1"></asp:Label>
    <br />
    <br />
    <br />
    <div class="UserAccountDiv">
        <br />
        <br />
    <div class="form-group">
        <label for="UsrAccntNmeTxtBx">Name</label>
        <asp:TextBox ID="UsrAccntNmeTxtBx" runat="server" CssClass="form-control" Width="199px"  Height="28px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsrAccntNmeTxtBx" ErrorMessage="***" ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <label for="UsrAccntEmailTxtBx">Email</label>
        <asp:TextBox ID="UsrAccntEmailTxtBx" runat="server" CssClass="form-control" Width="199px"  height="28px" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UsrAccntEmailTxtBx" ErrorMessage="***" ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UsrAccntEmailTxtBx" ErrorMessage="Invalid Email !" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="c"></asp:RegularExpressionValidator>
    </div>

    <div class="form-group">
        <label for="UsrAccntPhnoTxtBx">Phone Number</label>
        <asp:TextBox ID="UsrAccntPhnoTxtBx" runat="server" CssClass="form-control" Width="199px" height="28px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UsrAccntPhnoTxtBx" ErrorMessage="***" ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="UsrAccntPhnoTxtBx" ErrorMessage="Invalid Phone Number !" ForeColor="Red" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" ValidationGroup="c"></asp:RegularExpressionValidator>
    </div>

    <div class="form-group">
        <label for="UsrAccntAddrssTxtBx">Address</label>
        <asp:TextBox ID="UsrAccntAddrssTxtBx" runat="server" CssClass="form-control" Width="199px" height="28px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="UsrAccntAddrssTxtBx" ErrorMessage="***" ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <label for="UsrAccntPsswrdTxtBx">Password</label>
        <asp:TextBox ID="UsrAccntPsswrdTxtBx" runat="server" CssClass="form-control" Width="199px" Height="28px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="UsrAccntPsswrdTxtBx" ErrorMessage="***" ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="UsrAccntPsswrdTxtBx" ErrorMessage="Password is in invalid Format !" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}$" ValidationGroup="c"></asp:RegularExpressionValidator>
    </div>

    <div class="form-group">
        <label for="UsrAccntCnfrmPsswrdTxtBx">Confirm Password</label>
        <asp:TextBox ID="UsrAccntCnfrmPsswrdTxtBx" runat="server" CssClass="form-control"  Width="199px" Height="28px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="UsrAccntCnfrmPsswrdTxtBx" ErrorMessage="***" ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="UsrAccntPsswrdTxtBx" ControlToValidate="UsrAccntCnfrmPsswrdTxtBx" ErrorMessage="Passwords do not match!" Display="Dynamic" ForeColor="Red" ValidationGroup="c"></asp:CompareValidator>
        <br />
        <br />
    </div>

    <div class="form-group">
        <asp:Label ID="UsrAccntCnfrmLbl" runat="server" Visible="false"></asp:Label>
        <br />
        <br />
        <br />
    </div>

    <div class="form-group">
        &nbsp;<asp:Button ID="UsrAccntBtnSbt" runat="server" Text="Update" Width="22%" CssClass="btn-primary" OnClick="UsrAccntBtnSbt_Click" ValidationGroup="c" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="UsrAccntBtnClear" runat="server" Text="Clear" Width="22%" OnClick="Button2_Click" CssClass="btn-primary"/>
    </div>
        <br />
    <div class="form-group">
        
    </div>
        <br />

    <div class="form-group">
        <asp:Button ID="UsrAccntBtnDlte" runat="server" Text="Delete Account" Width="22%" OnClick="UsrAccntBtnDlte_Click" CssClass="dltbtn" />
    </div>
</div>

       
    <br />
</asp:Content>
