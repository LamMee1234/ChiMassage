<%@ Page Title="" Language="C#" MasterPageFile="~/ChiMassage.Master" AutoEventWireup="true" CodeBehind="orderSummary.aspx.cs" Inherits="Massage_Reservation_System.orderSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: left;
            width: 180px;
        }

        .auto-style3 {
            width: 1297px;
        }

        .auto-style4 {
            left: 0;
            right: 61px;
            top: 120px;
            bottom: 120px;
        }

        .auto-style5 {
            width: 715px;
        }

        .auto-style6 {
            width: 365px;
        }

        .auto-style7 {
            width: 1297px;
            margin-right: 0;
        }

        .auto-style8 {
            text-decoration: underline;
        }

        .auto-style11 {
            width: 739px;
        }

        .auto-style12 {
            text-align: left;
            width: 201px;
        }

        .auto-style13 {
            width: 222px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Checkout</h2>
    <div id="content" class="auto-style4">
        <div id="contentBox">

            <table class="auto-style7">
                <tr>
                    <td class="auto-style6">
                        <h1 class="auto-style5">Shipping Address</h1>
                    </td>
                </tr>
                <tr>

                    <td class="auto-style6">


                        <strong>
                            <asp:Label ID="label0" runat="server" Text="First Name"></asp:Label>
                        </strong>
                        <br />
                        <asp:TextBox ID="txtfname" runat="server" Height="25px" Width="500px"></asp:TextBox>
                        <br />
                        <br />
                        <strong>
                            <asp:Label ID="Label6" runat="server" Text="Last Name"></asp:Label>
                        </strong>
                        <br />
                        <asp:TextBox ID="txtlname" runat="server" Height="25px" Width="500px"></asp:TextBox>
                        <br />
                        <br />
                        <strong>

                            <asp:Label ID="label" runat="server" Text="Address"></asp:Label>
                        </strong>
                        <br />

                        <asp:TextBox ID="txt_Address" runat="server" Height="24px" Width="500px" required="true"></asp:TextBox>
                        <br />
                        <br />

                        <strong>
                            <asp:Label ID="Label8" runat="server" Text="Postal Code"></asp:Label>
                        </strong>
                        <br />
                        <asp:TextBox ID="txt_Postal_Code" runat="server" Height="25px" Width="150px" required="true">></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td>
                        <strong>
                            <asp:Label ID="label13" runat="server" Text="Email:"></asp:Label>
                        </strong>
                        <br />
                        <asp:TextBox ID="txt_email" runat="server" Height="24px" Width="300px"></asp:TextBox>
                        <br />
                        <br />
                        <strong>
                            <asp:Label ID="label14" runat="server" Text="Contact Number:"></asp:Label>
                        </strong>
                        <br />
                        <asp:TextBox ID="txt_contact" runat="server" Height="25px" Width="300px" required="true">></asp:TextBox>
                        <br />
                        <br />

                    </td>

                </tr>
                <tr>
                    <td class="auto-style6">
                        <h1>Your Cart</h1>
                        <br />

                        <%--<asp:Image ID="Image1" runat="server" Height="500px" Width="400px"/>--%>
                        <asp:DataList ID="orderSummDatalist" runat="server" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                            <ItemStyle HorizontalAlign="Left" Wrap="False" />
                            <ItemTemplate>


                                <table class="auto-style11">
                                    <tr>
                                        <td class="auto-style12">

                                            <asp:Image ID="img" runat="server" Height="200px" Width="200px" ImageUrl='<%# Eval("prod_Image") %>' ImageAlign="Left" />

                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' Font-Bold="True" />
                                        </td>
                                        <td class="auto-style13">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Cart_itemQty") %>' Font-Bold="True" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>' Font-Bold="True" />
                                        </td>
                                    </tr>



                                </table>
                            </ItemTemplate>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <HeaderTemplate>
                                <table class="auto-style11">
                                    <tr>
                                        <td class="auto-style12">

                                            <asp:Label ID="Label9" runat="server" Text="Product Image"></asp:Label>

                                        </td>
                                        <td class="auto-style2">
                                            <asp:Label ID="Label10" runat="server" Text="Items"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text="Quantity"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Text="Unit Price(RM)"></asp:Label>
                                        </td>
                                    </tr>



                                </table>
                            </HeaderTemplate>
                            <%--Artwork.Art_Image, Artwork.Title, Artwork.Price, Cart.Cart_itemQty--%>
                            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        </asp:DataList>
                    </td>

                    <td>
                        <h1 class="auto-style8">Order Summary</h1>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Subtotal(RM): " Font-Bold="True"></asp:Label>
                        <asp:Label ID="lblSubtotal" runat="server" Text=""></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Gallerio Charges(1%): " Font-Bold="True"></asp:Label>
                        <asp:Label ID="lblCharges" runat="server" Text=""></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Total Price (RM): " Font-Bold="True"></asp:Label>
                        <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
                        <br />
                        <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Value="mtd_card">Visa/Debit Card</asp:ListItem>
                            <asp:ListItem Value="mtd_online_bank">Online Banking</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                       --%> <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="Please select a payment method" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <br />--%>

<%--                        <asp:Button ID="btn_select_payment_mtd" runat="server" Text="Select Payment Method" CssClass="button" OnClick="btn_Order_Click" />--%>
                                <button type="submit">Checkout</button>
                        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>

                    </td>

                </tr>
            </table>

        </div>
    </div>

    <script src="https://js.stripe.com/v3/"></script>
    <script>

        var stripe = Stripe("pk_test_51MA8Z4CxDCHmtGeC3rT1X1gOoQkS863y4ey7OT7gpunFNf8UOno9TY8e7DSmKBjIsrO1lTt1TUfginQOQrbNYRo200TlTc2vC3");
        var form = document.getElementById("form1");
        form.addEventListener('submit', function (e) {
            e.preventDefault();

            stripe.redirectToCheckout({
                sessionId: "<%= sessionId %>"
            });
        })
    </script>

</asp:Content>
