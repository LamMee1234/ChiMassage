<%@ Page Title="" Language="C#" MasterPageFile="~/ChiMassage.Master" AutoEventWireup="true" CodeBehind="servicesDetail.aspx.cs" Inherits="Massage_Reservation_System.servicesDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="row gx-4 gx-lg-5 align-items-center">
                <div class="col-md-6">
                    <asp:Image ID="Image1" runat="server" Style="object-fit: cover" Height="700px" Width="600px" />

                </div>
                <div class="col-md-6">
                    <%--                        <div class="small mb-1">SKU: BST-498</div>--%>
                    <h1>
                        <%--<asp:Label ID="title" runat="server" Text="Title: " Font-Bold="True"></asp:Label>--%>
                        <asp:Label class="display-5 fw-bolder" ID="lblTitle" runat="server" Text=""></asp:Label>
                    </h1>
                    <div class="fs-5 mb-5">
                        <%--                        <asp:Label ID="Label2" runat="server" Text="Unit Price: " Font-Bold="True"></asp:Label>--%>
                       RM
                        <asp:Label ID="lblPrice" runat="server" Text=""></asp:Label>
                        <br />
                        Duration:
                        <asp:Label ID="lblDuration" runat="server" Text=""></asp:Label>
                        mins

                    </div>
                    <%--                    <asp:Label ID="Label6" runat="server" Text="Description: " Font-Bold="True"></asp:Label>--%>
                    <asp:Label ID="lblDescription" class="lead" Style="text-align: justify; display: block !important" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <div class="d-flex">
                        <%--                        <asp:Label ID="Label3" runat="server" Text="Enter Quantity to Order: " Font-Bold="True"></asp:Label>--%>
                        &nbsp
                        
<%--                        <asp:TextBox class="form-control text-center me-3" Style="text-align: center" ID="txtQuantity" runat="server" Text="1" Width="67px"></asp:TextBox>--%>
                        &nbsp
                        <asp:Button ID="btnAddtoCart" class="btn btn-outline-dark flex-shrink-0" runat="server" Text="Make reservation" OnClick="btnReserve_Click" />
                        &nbsp
                        &nbsp
                                                <asp:Button ID="Button1" class="btn btn-outline-dark flex-shrink-0" runat="server" Text="Back" OnClick="btnBack_Click" />

<%--                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtQuantity" Display="Dynamic" ErrorMessage="Invalid input of quantity" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^0*(\d{1,9})$"></asp:RegularExpressionValidator>--%>
                        <br />

                    </div>
                    <br />


                </div>
            </div>
        </div>
    </section>
</asp:Content>
