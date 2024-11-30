<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="updateUser.aspx.cs" Inherits="Massage_Reservation_System.updateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style2 {
            width: 399px;
            text-align: right;
        }
        .updateForm {
            width: 76%;
            margin-left: 59px;
        }
         .auto-style3 {
             width: 399px;
             text-align: right;
             height: 52px;
         }
         .auto-style4 {
             height: 52px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        
            <h1>User Details</h1>
      <div id="contentBox">

        <table class="updateForm">
            <tr>
                <td class="auto-style3">Email:</td>
                <td class="auto-style4"><asp:TextBox ID="txtEmail" runat="server" Text="" Width="76%" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email Format is Wrong" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Invalid Email" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Old Password:</td>
                <td>
                    <asp:TextBox ID="txtShowPass" runat="server" Text="" Width="76%" ReadOnly="True"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">New Password:</td>
                <td><asp:TextBox ID="txtPassword" runat="server" Text="" Width="76%" style="margin-bottom: 0px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Invalid Password" Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9A-Za-z!@#$%&amp;]{8,16}"></asp:RegularExpressionValidator>
                </td>
            </tr>
          
            <tr>
                <td class="auto-style2">Phone Number:</td>
                <td><asp:TextBox ID="txtPhnNumber" runat="server" Text="" Width="76%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhnNumber" Display="Dynamic" ErrorMessage="*" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPhnNumber" Display="Dynamic" ErrorMessage="Invalid Phone No" Font-Bold="True" ForeColor="Red" ValidationExpression="\d{3}-\d{7,8}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td><asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="button" /></td>
            </tr>
         
        </table>
        </div>
                                                    <asp:Label ID="lblEncryptedText" runat="server" Visible="false" />
                <asp:Label ID="lblDecryptedText" runat="server" Visible="false" />

   </div>
</asp:Content>

