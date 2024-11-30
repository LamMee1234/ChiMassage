<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="viewProducts.aspx.cs" Inherits="Massage_Reservation_System.viewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <h1>Massage Products</h1>
        <div id="contentBox">
    <asp:GridView ID="gv_Artwork" style="text-align:center" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="prod_ID,Expr1" DataSourceID="SqlDataSource1" ForeColor="#333333" HorizontalAlign="Justify" PageSize="5">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="prod_ID" HeaderText="Products ID" ReadOnly="True" SortExpression="prod_ID" />
            
            <asp:ImageField DataImageUrlField="prod_Image" HeaderText="Products">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
            
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />

            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Status_Name" HeaderText="Status" SortExpression="Status_Name" />
            
            <asp:HyperLinkField DataNavigateUrlFields="prod_ID" DataNavigateUrlFormatString="updateProducts.aspx?Id={0}" Text="Update" >
            
            <ControlStyle CssClass="hyperlinkGV" />
            <ItemStyle CssClass="hyperlinkGV" />
            </asp:HyperLinkField>

             <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="Images/delete icon.png" DeleteText="Remove" SelectText="Delete">

                    <ControlStyle Height="25px" Width="25px" CssClass="gallery" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
            
        </Columns>

        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#333333" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="Button1_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT products.prod_ID, products.prod_Image, products.Title, products.Price, products.Quantity, products.Description, products.Status_ID, Status.Status_Name, Status.Status_ID AS Expr1 FROM products INNER JOIN Status ON products.Status_ID = Status.Status_ID" DeleteCommand="DELETE FROM [products] WHERE prod_ID = @prod_ID "></asp:SqlDataSource>
  </div>
    </div>
</asp:Content>
