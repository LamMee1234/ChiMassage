<%@ Page Title="Massage Products | Chi Massage" Language="C#" MasterPageFile="~/ChiMassage.Master" AutoEventWireup="true" CodeBehind="MassageProducts.aspx.cs" Inherits="Massage_Reservation_System.MassageProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            padding-top: 15px;
            width: 75%;
            height: auto;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" RepeatColumns="6" RepeatDirection="Horizontal" CellPadding="30" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
        <EditItemStyle BorderStyle="Solid" />
        <ItemTemplate>
            <br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' Font-Bold="True" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="gallery">
                            <asp:ImageButton ID="imgBtn" runat="server" Height="250px" Width="200px" CommandArgument='<%#Eval("prod_ID")%>' CommandName="viewProduct" ImageUrl='<%# Eval("prod_Image") %>' />
                            RM
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Price") %>' Font-Bold="True" />

                        </div>

                    </td>
                </tr>

            </table>
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
</asp:Content>
