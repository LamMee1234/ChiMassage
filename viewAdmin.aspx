<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="viewAdmin.aspx.cs" Inherits="Massage_Reservation_System.viewAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
         <div id="contentBox">
        <h1>Admin Details</h1>
        <div>

            <asp:GridView ID="GridView1" style="text-align:center" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Admin_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Admin_ID" HeaderText="Admin_ID" InsertVisible="False" ReadOnly="True" SortExpression="Admin_ID" />
                    <asp:BoundField DataField="Admin_Name" HeaderText="Admin_Name" SortExpression="Admin_Name" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:HyperLinkField DataNavigateUrlFields="Admin_ID" DataNavigateUrlFormatString="updateAdmin.aspx?Id={0}" Text="Update" >
                    <ControlStyle CssClass="hyperlinkGV" />
                    </asp:HyperLinkField>
                     <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="Images/delete icon.png" DeleteText="Remove" SelectText="">

                    <ControlStyle Height="25px" Width="25px" CssClass="gallery" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="Add Admin" OnClick="Button1_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admin]" DeleteCommand="DELETE FROM [Admin] WHERE Admin_ID = @Admin_ID "></asp:SqlDataSource>
         </div>
        </div>
    </div>
    
</asp:Content>
