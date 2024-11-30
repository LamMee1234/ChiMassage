<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="resCon.aspx.cs" Inherits="Massage_Reservation_System.resCon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">

        <h1>Reservation Confirmation</h1>
        <div id="contentBox">

            <table class="auto-style2">
                <tr>
                    <td class="auto-style1">Reservation ID:</td>
                    <td>
                        <asp:TextBox ID="txtReserveId" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Date:</td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Pax:</td>
                    <td>
                        <asp:TextBox ID="txtPax" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Time:</td>
                    <td>
                        <asp:TextBox ID="txtTime" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Additional Request:</td>
                    <td>
                        <asp:TextBox ID="txtAddRequest" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Phone Number:</td>
                    <td>
                        <asp:TextBox ID="txtPhoneNo" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Service Title:</td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Venue (In-store/In-home):</td>
                    <td>
                        <asp:TextBox ID="txtVenue" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Address:</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Confirmation Status:</td>
                    <td>
                        <asp:DropDownList ID="ddlStatus" CssClass="ddlCountry" runat="server" AutoPostBack="true">
                            <asp:ListItem>Pending</asp:ListItem>
                            <asp:ListItem>Confirmed</asp:ListItem>
                            <asp:ListItem>Unavailable</asp:ListItem>
                            <asp:ListItem>Cancelled</asp:ListItem>
                            <asp:ListItem>Paid</asp:ListItem>


                        </asp:DropDownList>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Confirm send" OnClick="btnUpdate_Click" CssClass="button" /></td>
                </tr>

            </table>
        </div>
        <asp:Label ID="lblEncryptedText" runat="server" Visible="false" />
        <asp:Label ID="lblDecryptedText" runat="server" Visible="false" />
        <asp:TextBox ID="TextBox1" runat="server" Text="" Width="76%" ReadOnly="True" Visible="false"></asp:TextBox></td>


    </div>
</asp:Content>
