<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="cusFeed.aspx.cs" Inherits="Massage_Reservation_System.cusFeed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <h1>Customers' feedback</h1>
        <div id="contentBox">
            <asp:GridView ID="GridView1" style="text-align: center" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cont_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" runat="server" EmptyDataText="There is nothing to show.">
                <alternatingrowstyle backcolor="White" />
                <columns>
                    <asp:BoundField DataField="cont_ID" HeaderText="cont_ID" InsertVisible="False" ReadOnly="True" SortExpression="cont_ID" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Full_Name" HeaderText="Full_Name" SortExpression="Full_Name" />

                    <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                   
                  <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="Images/delete icon.png" DeleteText="Remove" SelectText="">

                    <ControlStyle Height="25px" Width="25px" CssClass="gallery" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                </columns>
                <editrowstyle backcolor="#2461BF" />
                <footerstyle backcolor="#507CD1" font-bold="True" forecolor="White" />
                <headerstyle backcolor="#507CD1" font-bold="True" forecolor="White" />
                <pagerstyle backcolor="#2461BF" forecolor="White" horizontalalign="Center" />
                <rowstyle backcolor="#EFF3FB" />
                <selectedrowstyle backcolor="#D1DDF1" font-bold="True" forecolor="#333333" />
                <sortedascendingcellstyle backcolor="#F5F7FB" />
                <sortedascendingheaderstyle backcolor="#6D95E1" />
                <sorteddescendingcellstyle backcolor="#E9EBEF" />
                <sorteddescendingheaderstyle backcolor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cont]" DeleteCommand="DELETE FROM cont WHERE cont_ID = @cont_ID "></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
