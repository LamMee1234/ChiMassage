<%@ Page Title="Cart | Chi Massage" Language="C#" MasterPageFile="~/ChiMassage.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Massage_Reservation_System.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 75%; margin: auto;text-align:center">
       
        <br />
        <br />
        <br />
        <h1>Cart
        </h1>
        <asp:Label ID="lblNoRecord" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Button ID="btnUpdate" runat="server" Text="Checkout" OnClick="btnUpdate_Click" CssClass="button" Visible="False" />
        <asp:Label ID="Label1" style="color:red" runat="server" Text="Nothing to checkout" Visible="false"></asp:Label>
        <br />
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" DataKeyNames="prod_ID" ForeColor="Black" GridLines="Vertical" Width="100%" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" EmptyDataText="Your cart is empty." Visible="False" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ImageField DataImageUrlField="prod_Image" HeaderText="Massage Products">
                    <ControlStyle Height="200px" Width="200px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />


                <asp:BoundField DataField="Price" HeaderText="Unit Price (RM)" SortExpression="Price" />
                <asp:BoundField DataField="Cart_itemQty" HeaderText="Quantity" SortExpression="Cart_itemQty" />
                <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="Images/delete icon.png" DeleteText="Remove" SelectText="">

                    <ControlStyle Height="25px" Width="25px" CssClass="gallery" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>

            </Columns>

            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT products.prod_ID, products.prod_Image, products.Title, products.Price, Cart.Cart_itemQty,Cart.User_ID FROM products INNER JOIN Cart ON products.prod_ID = Cart.prod_ID WHERE (Cart.User_ID IN (SELECT User_ID FROM Cart AS Cart_1 WHERE (User_ID = @User_ID)))" DeleteCommand="DELETE FROM Cart WHERE prod_ID = @prod_ID ">
            <DeleteParameters>
                <asp:Parameter Name="prod_ID" Type="String" />
            </DeleteParameters>
            <SelectParameters>
                <asp:SessionParameter Name="User_ID" SessionField="userid" Type="Int32" />
            </SelectParameters>

        </asp:SqlDataSource>
    </div>
</asp:Content>
