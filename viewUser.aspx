<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="viewUser.aspx.cs" Inherits="Massage_Reservation_System.viewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div id="content">
         <h1>Users</h1>
        <div id="contentBox">
    <asp:GridView ID="GridView1" style="text-align:center" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="User_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" runat="server">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="User_ID" HeaderText="User ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
                       <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />

            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
 
            <asp:BoundField DataField="Postal_Code" HeaderText="Postal Code" SortExpression="Postal_Code" />
            <asp:BoundField DataField="Phone_Number" HeaderText="Phone Number" SortExpression="Phone_Number" />
            <asp:HyperLinkField DataNavigateUrlFields="User_ID" DataNavigateUrlFormatString="updateUser.aspx?Id={0}" Text="Update" >
            <ControlStyle CssClass="hyperlinkGV" />
            </asp:HyperLinkField>
             <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="Images/delete icon.png" DeleteText="Remove" SelectText="">

                    <ControlStyle Height="25px" Width="25px" CssClass="gallery" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]" DeleteCommand="DELETE FROM [Admin] WHERE Admin_ID = @Admin_ID ">
    </asp:SqlDataSource>
    </div>
        </div>
</asp:Content>
