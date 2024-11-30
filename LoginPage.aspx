<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Massage_Reservation_System.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />




    <title>Login | Chi Massage</title>
    <link rel="icon" href="Images/titleIcon.jpg" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="vh-100" style="background-color: #f2e9df;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                            <div class="row g-0">
                                <div class="col-md-6 col-lg-5 d-none d-md-block">
                                    <img src="Images/loginMassageSample.jpg"
                                        alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                                </div>
                                <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">

                                        <form>

                                            <div class="d-flex align-items-center mb-3 pb-1">
                                                <%--<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;">
                                                    <img src="Images/titleIcon.jpg" width="92" height="69" /></i>--%>
                                                <span <%--class="h1 fw-bold mb-0"--%> style="font-family: cursive; font-weight: 700; font-size: 40px">Chi Massage</span>
                                            </div>

                                            <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                                            <div class="form-outline mb-4">
                                                <asp:TextBox ID="txtEmail" class="form-control form-control-lg" runat="server" placeholder="Enter Email" TextMode="Email"></asp:TextBox>
                                                <asp:Label ID="lblUsername" class="form-label" runat="server" Text="Email"></asp:Label>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Style="color: red" runat="server" ErrorMessage="<br/>*Email is required" ControlToValidate="txtEmail" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>

                                            </div>

                                            <div class="form-outline mb-4">
                                                <asp:TextBox ID="txtPassword" class="form-control form-control-lg" runat="server" placeholder="*****" TextMode="Password"></asp:TextBox>
                                                <asp:Label ID="lblPassword" class="form-label" runat="server" Text="Password"></asp:Label>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Style="color: red" ErrorMessage="<br/>*Password is required" ControlToValidate="txtPassword" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator Style="color: red" ID="RegularExpressionValidator1" runat="server" ErrorMessage="<br/>*Password must be 8-16 characters long.<br/> *With at least one numeric and aphabetic character." ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,16})$" ControlToValidate="txtPassword"></asp:RegularExpressionValidator>
                                            </div>

                                            <div class="pt-1 mb-4" style="text-align: center">
                                                <asp:Button ID="btnLogin" class="btn btn-dark btn-lg btn-block" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                            </div>

                                            <%-- <div class="pt-1 mb-4">
                                                <a class="btn btn-primary btn-lg btn-block" style="background-color: #3b5998; font-size: 19px" href="#!"
                                                    role="button">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-facebook" viewBox="0 0 18 21">
                                                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                                                    </svg>
                                                    <i class="fab fa-facebook-f me-2"></i>Continue with Facebook

                                                </a>
                                                <a class="btn btn-primary btn-lg btn-block" style="background-color: #db4437; font-size: 19px" href="#!"
                                                    role="button">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-google" viewBox="0 0 18 20">
                                                        <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                                                    </svg>
                                                    <i class="fab fa-google me-2"></i>Continue with Google</a>
                                            </div>--%>

                                            <a class="small text-muted" href="forgotPassword.aspx">Forgot password?</a>
                                            <p class="mb-5 pb-lg-2" style="color: #393f81;">
                                                Don't have an account? <a href="RegistrationPage.aspx"
                                                    style="color: #393f81;">Register here</a>
                                                <br/>Are you an administrator? <a href="adminLogin.aspx"
                                                    style="color: #393f81;">Click here</a>
                                            </p>

                                            <a href="termsAndCondition.aspx" class="small text-muted">Terms & Conditions</a>
                                            <a href="privacyPolicy.aspx" class="small text-muted">Privacy policy</a>
                                            <asp:Label ID="lblEncryptedText" runat="server" Visible="false" />
                                        </form>
                                    </div>
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
