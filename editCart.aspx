<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="editCart.aspx.cs" Inherits="Massage_Reservation_System.editCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="content">
        <h1>Customers' Order</h1>
        <div>
            <asp:Label ID="lblNoRecord" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" style="text-align:center"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" DataKeyNames="Order_ID" ForeColor="Black" GridLines="Vertical" Width="100%" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" EmptyDataText="There is nothing to show.">
                <AlternatingRowStyle BackColor="White" />
                <Columns>  
                   
                   <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" SortExpression="Order_ID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Order_Date" HeaderText="Order_Date" SortExpression="Order_Date" />
                    <asp:BoundField DataField="Order_Price" HeaderText="Order_Price" SortExpression="Order_Price" />
                    <asp:BoundField DataField="prod_ID" HeaderText="prod_ID" SortExpression="prod_ID" />
                    <asp:BoundField DataField="User_ID" HeaderText="User_ID" SortExpression="User_ID" />
                    <asp:BoundField DataField="Order_Quantity" HeaderText="Order_Quantity" SortExpression="Order_Quantity" />
                    <asp:BoundField DataField="Order_Address" HeaderText="Order_Address" SortExpression="Order_Address" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />



            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Order]">
                </asp:SqlDataSource> 
            
        </div>

    </div>
</asp:Content>

