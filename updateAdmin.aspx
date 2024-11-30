<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="updateAdmin.aspx.cs" Inherits="Massage_Reservation_System.updateAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 399px;
            text-align: right;
        }

        .auto-style2 {
            width: 76%;
            margin-left: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">

        <h1>Admin Details</h1>
        <div id="contentBox">

            <table class="auto-style2">
                <tr>
                    <td class="auto-style1">Admin ID:</td>
                    <td>
                        <asp:TextBox ID="txtAdminId" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Admin Name:</td>
                    <td>
                        <asp:TextBox ID="txtAdminName" runat="server" Text="" Width="76%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdminName" Display="Dynamic" ErrorMessage="*" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtAdminName" ErrorMessage="Name Cannot In Digit" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Username:</td>
                    <td>
                        <asp:TextBox ID="txtAdminUsername" runat="server" Text="" Width="76%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAdminUsername" Display="Dynamic" ErrorMessage="*" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Old Password:</td>
                    <td>
                        <asp:TextBox ID="txtShow" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Password:</td>
                    <td>
                        <asp:TextBox ID="txtAdminPassword" runat="server" Text="" Width="76%" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAdminPassword" Display="Dynamic" ErrorMessage="*" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAdminPassword" Display="Dynamic" ErrorMessage="<br/>*Password must be 8-16 characters long.<br/> *With at least one numeric and aphabetic character." Font-Bold="True" ForeColor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,16})$"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1"></td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="button" /></td>
                </tr>

            </table>
        </div>
        <asp:Label ID="lblEncryptedText" runat="server" Visible="false" />
        <asp:Label ID="lblDecryptedText" runat="server" Visible="false" />

    </div>
</asp:Content>
