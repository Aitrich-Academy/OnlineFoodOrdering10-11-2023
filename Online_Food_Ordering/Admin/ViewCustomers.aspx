<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true"   CodeBehind="ViewCustomers.aspx.cs" Inherits="Online_Food_Ordering.ViewCustomers" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="AdminStyle/customers.css" rel="stylesheet" />
    <div class="heading">
    <asp:Label ID="LblHeading" runat="server" Text="Our Customers" CssClass="lblheading"></asp:Label>
    </div>
    <div class="gridUsers">
    <asp:GridView ID="GridViewCustomers" runat="server" AutoGenerateColumns="False" DataKeyNames="Id,Name,Address,Phone,Email" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="gridviewUser" Width="770px" Height="150px"  HorizontalAlign="Center"  >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:TemplateField HeaderText="Block">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageBtnBlock" runat="server" Height="41px" Width="46px" ImageUrl="~/Image/bolcked.png" OnClick="ImageBtnBlock_Click" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Justify" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        </div>
   
    <div class="hf_lbl">
        <asp:Label ID="LblMessage" runat="server" Text=""></asp:Label>
        <asp:HiddenField ID="HFuser" runat="server" />
    </div>
</asp:Content>
