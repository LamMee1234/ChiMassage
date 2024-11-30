<%@ Page Title="Profile | Chi Massage" Language="C#" MasterPageFile="~/ChiMassage.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Massage_Reservation_System.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-control:focus {
            box-shadow: none;
            border-color: #BA68C8
        }

        .profile-button {
            background: rgb(99, 39, 120);
            box-shadow: none;
            border: none
        }

            .profile-button:hover {
                background: #682773
            }

            .profile-button:focus {
                background: #682773;
                box-shadow: none
            }

            .profile-button:active {
                background: #682773;
                box-shadow: none
            }

        .back:hover {
            color: #682773;
            cursor: pointer
        }

        .labels {
            font-size: 11px
        }

        .add-experience:hover {
            background: #BA68C8;
            color: #fff;
            cursor: pointer;
            border: solid 1px #BA68C8;
        }

        input[type=submit] {
            background-color: #04AA6D;
            color: white;
            padding: 12px 20px;
            border: none;
            cursor: pointer;
        }

            input[type=submit]:hover {
                background-color: #45a049;
            }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-3 border-right">
                <%--<div class="d-flex flex-column align-items-center text-center p-3 py-5">
                    <img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">Edogaru</span><span class="text-black-50">edogaru@mail.com.my</span><span> </span>
                </div>--%>
            </div>
            <div class="col-md-5 border-right" style="justify-items: center">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right" style="font-size: 40px">Profile Settings</h4>
                    </div>
                    <div class="row mt-2" style="font-size: 20px">
                        <%--firstname--%>

                        <div class="col-md-6">
                            <asp:Label ID="lblFirstName" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblFirstName" runat="server" Text="First Name"></asp:Label>

                            <asp:TextBox ID="txtFirstName" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" CssClass="txtFirstName" runat="server"></asp:TextBox>
                        </div>

                        <%--lastname--%>
                        <div class="col-md-6">
                            <asp:Label ID="lblLastName" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblLastName" runat="server" Text="Last Name"></asp:Label>

                            <asp:TextBox ID="txtLastName" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" CssClass="txtLastName" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row mt-3" style="font-size: 20px">

                        <%--Email--%>
                        <div class="col-md-12">
                            <asp:Label ID="lblEmail" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblEmail" runat="server" Text="Email"></asp:Label>
                            &nbsp
                            <br />
                            <asp:TextBox ID="txtEmail" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" Width="100%" CssClass="txtEmail" runat="server" TextMode="Email" Enabled="false"></asp:TextBox>
                        </div>
                        <br />
                        <br />

                        <%--Password--%>
                        <div class="col-md-12">
                            <br />
                            <asp:Label ID="lblPassword" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblPassword" runat="server" Text="Password"></asp:Label>
                            &nbsp
                            <br />
                            <asp:TextBox ID="txtPassword" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" Width="100%" CssClass="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <br />
                        <br />


                        <%--Confirmed password--%>
                        <div class="col-md-12">
                            <br />
                            <asp:Label ID="lblConfirmPass" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblConfirmPass" runat="server" Text="Confirm Password"></asp:Label>
                            &nbsp
                            <br />
                            <asp:TextBox ID="txtConfirmPass" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" Width="100%" CssClass="txtConfirmPass" runat="server" TextMode="Password" placeholder="*****"></asp:TextBox>
                            <asp:RequiredFieldValidator Style="color: red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Please key in password to save changes" ControlToValidate="txtConfirmPass" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator Style="color: red" ID="CompareValidator2" runat="server" ErrorMessage="Invalid password" CssClass="error" Display="Dynamic" ControlToValidate="txtConfirmPass" ControlToCompare="txtPassword"></asp:CompareValidator>
                        </div>


                        <br />
                        <br />




                        <%--Address--%>
                        <div class="col-md-12">
                            <br />
                            <asp:Label ID="lblAddress" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblAddress" runat="server" Text="Address"></asp:Label>
                            &nbsp
                        <br />
                            <asp:TextBox ID="txtAddress" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" CssClass="txtAddress" runat="server" Height="100px" TextMode="MultiLine" Width="300px" placeholder="Your address here..."></asp:TextBox>
                        </div>
                        <br />
                        <br />


                        <%--Postal_Code--%>
                        <div class="col-md-12">
                            <br />
                            <asp:Label ID="lblPostcode" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblPostcode" runat="server" Text="Postal Code"></asp:Label>
                            &nbsp
                        <br />
                            <asp:TextBox ID="txtPostcode" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" Width="100%" CssClass="txtPostcode" runat="server" placeholder="01000"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Style="color:red" runat="server" ErrorMessage="*Require exactly 5 digits (eg. 01000)" ControlToValidate="txtPostCode" ValidationExpression="\b\d{5}\b"></asp:RegularExpressionValidator>
                            </div>
                        <br />
                        <br />
                        <%--phone number--%>
                        <div class="col-md-12">
                            <br />
                            <asp:Label ID="lblPhoneNo" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblPhoneNo" runat="server" Text="Phone Number"></asp:Label>
                            &nbsp
                        <br />
                            <asp:TextBox ID="txtPhoneNo" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" Width="100%" CssClass="txtPhoneNo" runat="server" TextMode="phone" placeholder="01XXXXXXXX"></asp:TextBox>
                            <asp:RegularExpressionValidator Style="color: red" ID="regPhone" runat="server"
                                ErrorMessage="Not a valid phone" ControlToValidate="txtPhoneNo"
                                ValidationExpression="^(\+?6?01)[02-46-9]-*[0-9]{7}$|^(\+?6?01)[1]-*[0-9]{8}$">
                            </asp:RegularExpressionValidator>
                        </div>

                    </div>
                    <%--                    <asp:Label ID="lblStatus" runat="server" Text="Label" Visible="false"></asp:Label>--%>
                </div>
                <%--<div class="row mt-3">
                    <div class="col-md-6">
                        <label class="labels">Country</label><input type="text" class="form-control" placeholder="country" value=""></div>
                    <div class="col-md-6">
                        <label class="labels">State/Region</label><input type="text" class="form-control" value="" placeholder="state"></div>
                </div>--%>
                <div class="mt-5 text-center">

                    <asp:Button ID="btnSave" type="submit" runat="server" Text="Save Profile" OnClick="btnSave_Click" />
                    <asp:Button ID="btnReset" type="submit" CssClass="btnLogin" runat="server" Text="Reset" OnClick="btnReset_Click" CausesValidation="false" />
                    <asp:Label ID="lblEncryptedText" runat="server" Visible="false" />

                </div>
            </div>
        </div>
        <%-- <div class="col-md-4">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center experience"><span>Edit Experience</span><span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Experience</span></div>
                <br>
                <div class="col-md-12">
                    <label class="labels">Experience in Designing</label><input type="text" class="form-control" placeholder="experience" value=""></div>
                <br>
                <div class="col-md-12">
                    <label class="labels">Additional Details</label><input type="text" class="form-control" placeholder="additional details" value=""></div>
            </div>
        </div>--%>
    </div>

</asp:Content>
