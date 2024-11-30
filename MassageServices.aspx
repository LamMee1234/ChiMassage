<%@ Page Title="Massage Services | Chi Massage" Language="C#" MasterPageFile="~/ChiMassage.Master" AutoEventWireup="true" CodeBehind="MassageServices.aspx.cs" Inherits="Massage_Reservation_System.MassageServices" %>

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
                            <asp:ImageButton ID="imgBtn" runat="server" Height="250px" Width="200px" CommandArgument='<%#Eval("serv_ID")%>' CommandName="viewService" ImageUrl='<%# Eval("serv_Image") %>' />
                            RM 
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Price") %>' Font-Bold="True" />
                            <br />
                            Duration:
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Duration") %>' Font-Bold="True" />
                            <b>mins</b>


                        </div>

                    </td>
                </tr>

            </table>
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [services]"></asp:SqlDataSource>
</asp:Content>
