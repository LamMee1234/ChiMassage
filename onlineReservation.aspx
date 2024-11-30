<%@ Page Title="" Language="C#" MasterPageFile="~/ChiMassage.Master" AutoEventWireup="true" CodeBehind="onlineReservation.aspx.cs" Inherits="Massage_Reservation_System.onlineReservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-4 border-right">
                <%--<div class="d-flex flex-column align-items-center text-center p-3 py-5">
                    <img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">Edogaru</span><span class="text-black-50">edogaru@mail.com.my</span><span> </span>
                </div>--%>
            </div>
            <div class="col-md-5 border-right" style="justify-items: center">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right" style="font-size: 40px">Online Reservation</h4>
                    </div>
                    <div class="row mt-3" style="font-size: 20px">
                        <div class="col-md-12">

                            <asp:Label ID="lblCountry" CssClass="lblCountry" runat="server" Text="Services"></asp:Label>
                            <asp:DropDownList ID="ddlServices" CssClass="ddlCountry" runat="server" AutoPostBack="true" required="true">
                            </asp:DropDownList>
                        </div>
                        <br />
                        <br />
                        <div class="col-md-12">

                            <asp:Label ID="lblDOB" CssClass="lblDOB" runat="server" Text="Date"></asp:Label>

                            <asp:TextBox ID="txtDate" required="true" CssClass="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;


                            <asp:Label ID="Label1" CssClass="lblDOB" runat="server" Text="Time"></asp:Label>

                            <asp:TextBox ID="txtTime" required="true" CssClass="txtDOB" runat="server" TextMode="Time"></asp:TextBox>
                        </div>


                        <div class="col-md-12">
                            <br />
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                <asp:ListItem Selected="True" Enabled="true" Value="In-store">In-store &nbsp;</asp:ListItem>
                                <asp:ListItem Enabled="true" Value="In-home">In-home</asp:ListItem>
                            </asp:RadioButtonList>


                            <br />
                            <asp:Label ID="Label3" CssClass="lblCountry" runat="server" Text="Pax"></asp:Label>
                            <asp:DropDownList ID="ddlPax" required="true" CssClass="ddlCountry" runat="server" AutoPostBack="true">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                        <br />

                        <div class="col-md-12">
                            <br />
                            <asp:Label ID="lblFirstName" CssClass="lblFirstName" runat="server" Text="Name"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtName" required="true" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" Width="100%" CssClass="txtFirstName" runat="server" placeholder="Enter First Name"></asp:TextBox>
                        </div>
                        &nbsp;
        &nbsp;
                        <div class="col-md-12">

                            <asp:Label ID="Label4" CssClass="lblFirstName" runat="server" Text="Email"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtEmail" required="true" type="email" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" Width="100%" CssClass="txtFirstName" runat="server" placeholder="xxx@gmail.com"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <div class="col-md-12">
                            <br />
                            <asp:Label ID="Label5" CssClass="lblFirstName" runat="server" Text="Phone Number"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtPhoneNo" required="true" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" Width="100%" CssClass="txtFirstName" runat="server" placeholder="0123456789" TextMode="Number"></asp:TextBox>
                        </div>

                        <br />
                        <br />
                        <div class="col-md-12">
                            <br />
                            <asp:Label ID="lblAddress" CssClass="lblAddress" runat="server" Text="Additional Request"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtAddRequest" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" Width="100%" CssClass="txtAddress" runat="server" placeholder="Please type your additional request here..." TextMode="MultiLine"></asp:TextBox>
                            <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Address is required" ControlToValidate="txtAddress" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                        </div>
                        <br />
                        <br />
                        <div class="col-md-12">
                            <br />
                            <asp:Label ID="Label2" Visible="false" CssClass="lblAddress" runat="server" Text="Address"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtAddress" Visible="false" required="true" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" Width="100%" CssClass="txtAddress" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                            <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Address is required" ControlToValidate="txtAddress" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                        </div>
                        <br />
                        <br />
                        <div class="mt-5 text-center">

                            <asp:Button ID="btnRegister" CssClass="btnLogin" runat="server" Text="Reserve" OnClick="btnReserve_Click" />
                            <asp:Button ID="btnBack" CssClass="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" CausesValidation="false" />

                            <asp:TextBox ID="TextBox1" CssClass="txtDOB" runat="server" TextMode="Date" Visible="false"></asp:TextBox>
                                                        <asp:TextBox ID="TextBox2" CssClass="txtDOB" runat="server" TextMode="Date" Visible="false"></asp:TextBox>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
