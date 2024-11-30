<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="updateProducts.aspx.cs" Inherits="Massage_Reservation_System.updateProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <h1>Massage Products Details</h1>
        <div id="contentBox">
      <table class="auto-style1">
          
                <tr>
                    <td id="left-panel">
                             <asp:Image ID="Image1" runat="server" Height="400px" Width="400px" BorderStyle="Groove" />
                    </td>
                    
                    <td>
                        <table id="right-panel">
                            <tr>
                                <td class="auto-style4">
                            <asp:Label ID="lblUploadNew" runat="server" Text="Select Artwork Image:"></asp:Label>                   
                            <asp:FileUpload ID="FileUpload" runat="server" Height="25px" Width="83px"/>
                            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                                    <asp:Label ID="lblMessage" runat="server" font-bold="true"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lblTitle" runat="server" Text="Title:"></asp:Label>
                                    <asp:TextBox ID="txtTitle" runat="server" CssClass="txtbox"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" Display="Dynamic" ErrorMessage="*" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                           
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lblPrice" runat="server" Text="Price:"></asp:Label>
                                    <asp:TextBox ID="txtPrice" runat="server" CssClass="txtbox"></asp:TextBox>
                                     
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="*" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="Price Cannot in Alphabetic" Font-Bold="True" ForeColor="Red" ValidationExpression="^\d{0,8}(\.\d{1,4})?$"></asp:RegularExpressionValidator>
                                     
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lblDescription" runat="server" Text="Description:"></asp:Label>
                                    <asp:TextBox ID="txtDescription" runat="server" Height="43px" Width="142px" CssClass="txtbox"></asp:TextBox>
                                      
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDescription" Display="Dynamic" ErrorMessage="*" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                      
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lblQty" runat="server" Text="Stock For Sales:"></asp:Label>
                                    <asp:TextBox ID="txtQuantity" runat="server" Height="43px" Width="142px" CssClass="txtbox"></asp:TextBox>
                                      
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtQuantity" Display="Dynamic" ErrorMessage="*" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtQuantity" Display="Dynamic" ErrorMessage="Stock Cannot in Alphabetic" Font-Bold="True" ForeColor="Red" ValidationExpression="^0*(\d{1,9})$"></asp:RegularExpressionValidator>
                                      
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lblCategory" runat="server" Text="Category:"></asp:Label>
                                    <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="dsCategoryName" DataTextField="Category_Name" DataValueField="Category_ID">
                                    </asp:DropDownList>
                                    

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label1" runat="server" Text="Status:"></asp:Label>
                                    <asp:DropDownList ID="ddlStatus" runat="server" DataSourceID="dsStatus" DataTextField="Status_Name" DataValueField="Status_ID">
                                    </asp:DropDownList>
                                    

                                    <asp:SqlDataSource ID="dsStatus" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Status]"></asp:SqlDataSource>
                                    

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="button"/>
                                </td>
                            </tr>
                           
                        </table>
                    </td>
                   
                </tr>
            </table>
        </div>

    </div>
<asp:SqlDataSource ID="dsCategoryName" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Category_Name], [Category_ID] FROM [Category]"></asp:SqlDataSource>
</asp:Content>
