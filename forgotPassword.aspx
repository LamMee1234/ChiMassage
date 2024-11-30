<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotPassword.aspx.cs" Inherits="Massage_Reservation_System.forgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />




    <title>Forgot Password | Chi Massage</title>
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

                                            <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Your password will be sent to your email!</h5>

                                            <div class="form-outline mb-4">
                                                <asp:TextBox ID="txtEmail" class="form-control form-control-lg" runat="server" placeholder="Enter Email"></asp:TextBox>
                                                <asp:Label ID="lblUsername" class="form-label" runat="server" Text="Email"></asp:Label>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Style="color: red" runat="server" ErrorMessage="<br/>*Email is required" ControlToValidate="txtEmail" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                                            </div>

                                          

                                            <div class="pt-1 mb-4" style="text-align: center">
                                                <asp:Button ID="btnLogin" class="btn btn-dark btn-lg btn-block" runat="server" Text="Send" OnClick="SendEmail" />
                                            </div>


                                            <a class="small text-muted" href="LoginPage.aspx">Back to Login</a>
                                            <p class="mb-5 pb-lg-2" style="color: #393f81;">
                                                Don't have an account? <a href="RegistrationPage.aspx"
                                                    style="color: #393f81;">Register here</a>
                                                <br/>Are you an administrator? <a href="adminLogin.aspx"
                                                    style="color: #393f81;">Click here</a>
                                            </p>

                                            <a href="termsAndCondition.aspx" class="small text-muted">Terms & Conditions</a>
                                            <a href="privacyPolicy.aspx" class="small text-muted">Privacy policy</a>
                                            <asp:TextBox ID="TextBox1" Visible="false" runat="server"></asp:TextBox>
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

