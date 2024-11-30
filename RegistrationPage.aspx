<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="Massage_Reservation_System.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <script>
        function callback() {
            const submitButton = document.getElementById('btnRegister');
            submitButton.removeAttribute("disabled");
        }
    </script>
    <title>Account Registration | Chi Massage</title>
    <link rel="icon" href="Images/titleIcon.jpg" type="image/x-icon" />
    <style>
        /*.gradient-custom-3 {*/
        /* fallback for old browsers */
        /*background: #84fab0;*/
        /* Chrome 10-25, Safari 5.1-6 */
        /*background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));*/
        /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        /*background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
        }*/

        .gradient-custom-4 {
            /* fallback for old browsers */
            background: #84fab0;
            /* Chrome 10-25, Safari 5.1-6 */
            background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));
            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))
        }

        
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <section class="vh-100 bg-image"
            style="background-color: #f2e9df; height: 100% !important">
            <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="card" style="border-radius: 15px;">
                                <div class="card-body p-5">
                                    <h2 class="text-uppercase text-center mb-5">Create an account</h2>

                                    <form>

                                        <div class="form-outline mb-4">
                                            <%--firstname--%>
                                             <asp:Label ID="lblFirstName" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblFirstName" runat="server" Text="First Name"></asp:Label>
                                            <asp:TextBox ID="txtFirstName" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" Width="100%" CssClass="txtFirstName" runat="server" placeholder="Enter First Name" required="true"></asp:TextBox>

                                           
                                             <asp:RequiredFieldValidator Style="color:red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*First Name is required" ControlToValidate="txtFirstName" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>


                                        </div>

                                        <div class="form-outline mb-4">
                                             <asp:Label ID="lblLastName" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblLastName" runat="server" Text="Last Name"></asp:Label>
                                            <asp:TextBox ID="txtLastName" required="true" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;"
                                                CssClass="txtLastName" runat="server" placeholder="Enter Last Name"></asp:TextBox>
                                           

                                            <asp:RequiredFieldValidator  Style="color:red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Last Name is required" ControlToValidate="txtLastName" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-outline mb-4">
                                             <asp:Label ID="lblEmail" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblEmail" runat="server" Text="Email"></asp:Label>
                                       
                                            <asp:TextBox ID="txtEmail" required="true" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" CssClass="txtEmail" runat="server" placeholder="xxxx@email.com" TextMode="Email"></asp:TextBox>
                                            <asp:RequiredFieldValidator  Style="color:red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Email is required" ControlToValidate="txtConfirmPass" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>

                                            </div>

                                        <div class="form-outline mb-4">
                                            <asp:Label ID="lblPassword" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblPassword" runat="server" Text="Password"></asp:Label>
                                      
                                            <asp:TextBox ID="txtPassword" required="true" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" CssClass="txtPassword" runat="server" placeholder="*****" TextMode="Password"></asp:TextBox>
                                           <span>*Password must be 8-16 characters long.<br/> *With at least one numeric and aphabetic character.</span>
                                                                                        <asp:RequiredFieldValidator   Style="color:red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="<br/>*Password is required" ControlToValidate="txtPassword" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>

                                            <asp:RegularExpressionValidator Style="color:red" ID="RegularExpressionValidator1" runat="server" ErrorMessage="<br/>Please follow the instructions written above." validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,16})$" controltovalidate="txtPassword"></asp:RegularExpressionValidator>
                                              </div>

                                        <div class="form-outline mb-4">
                                             <asp:Label ID="lblConfirmPass" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblConfirmPass" runat="server" Text="Confirm Password"></asp:Label>
                                      
                                            <asp:TextBox ID="txtConfirmPass" required="true" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" CssClass="txtConfirmPass" runat="server" placeholder="*****" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator  Style="color:red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Confirm Password is required" ControlToValidate="txtConfirmPass" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator Style="color:red" ID="CompareValidator2" runat="server" ErrorMessage="*Both password must be the same" CssClass="error" Display="Dynamic" ControlToValidate="txtConfirmPass" ControlToCompare="txtPassword"></asp:CompareValidator>

                                             </div>

                                        <div class="form-check d-flex justify-content-center mb-5">
                                            <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" required="required" />
                                            <label class="form-check-label" for="form2Example3g">
                                                I agree all statements in <a href="termsAndCondition.aspx" class="text-body"><u>Terms & Conditions</u></a>
                                            </label>
                                        </div>

                                        <%--reCAPTCHA--%>
                                        <div class="g-recaptcha d-flex justify-content-center" data-sitekey="6LdAajYjAAAAAHfhUs3QfDsF49PGo-dcq3Ze_ZLr" data-callback="callback"></div>
                                        <br>
                                        <div class="d-flex justify-content-center">
                                            <asp:Button ID="btnRegister" type="submit" CssClass="btnLogin" runat="server" Text="Register" OnClick="btnRegister_Click" disabled />
                                        </div>

                                        <p class="text-center text-muted mt-5 mb-0">
                                            Have already an account? <a href="LoginPage.aspx"
                                                class="fw-bold text-body"><u>Login here</u></a>
                                        </p>

                                    </form>
                                    <asp:Label ID="lblEncryptedText" runat="server" visible="false"/>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
