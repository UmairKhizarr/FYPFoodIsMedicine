<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="FoodIsMedicine.userLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%-- Admin Login Related Style Files --%>
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="adminLoginStyle/vendor/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="adminLoginStyle/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="adminLoginStyle/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" />
    <link rel="stylesheet" type="text/css" href="adminLoginStyle/vendor/animate/animate.css" />
    <link rel="stylesheet" type="text/css" href="adminLoginStyle/vendor/css-hamburgers/hamburgers.min.css" />
    <link rel="stylesheet" type="text/css" href="adminLoginStyle/vendor/animsition/css/animsition.min.css" />
    <link rel="stylesheet" type="text/css" href="adminLoginStyle/vendor/select2/select2.min.css" />
    <link rel="stylesheet" type="text/css" href="adminLoginStyle/vendor/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="adminLoginStyle/css/util.css" />
    <link rel="stylesheet" type="text/css" href="adminLoginStyle/css/main.css" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-form-title" style="background-image: url(img/userbg.jpg);">
                        <span class="login100-form-title-1">User Login
                        </span>
                    </div>
                    <div class="login100-form ">
                        <div class="wrap-input100 m-b-26">
                            <span class="label-input100">Username</span>
                            <asp:TextBox CssClass="input100" runat="server" placeholder="Enter username" ID="txtusername" required="required"></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>
                        <asp:RequiredFieldValidator runat="server" ID="RFVUser" ControlToValidate="txtusername" ErrorMessage="*Username field is Required" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <div class="wrap-input100  m-b-18">
                            <span class="label-input100">Password</span>
                            <asp:TextBox runat="server" CssClass="input100" TextMode="Password" placeholder="Enter password" ID="txtPass" required="required"></asp:TextBox>

                            <span class="focus-input100"></span>
                        </div>
                        <asp:RequiredFieldValidator runat="server" ID="RFVPass" ControlToValidate="txtPass" ErrorMessage="*Password field is required" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <div class="flex-sb-m w-full p-b-12">
                            <div class="contact100-form-checkbox">
                                <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me" />
                                <label class="label-checkbox100" for="ckb1">
                                    Remember me
                                </label>
                            </div>
                            <div>
                                <asp:LinkButton runat="server" ID="forPass" OnClick="forPass_Click" CssClass="txt1" Text="Forgot Password?" CausesValidation="false"></asp:LinkButton>
                            </div>
                        </div>
                        <div>
                            <asp:Label runat="server" ID="lblMsg" ForeColor="Red" CssClass="p-b-30"></asp:Label>
                        </div>
                        <div class="container-login100-form-btn">
                            <asp:LinkButton runat="server" ID="btnlogin" CssClass="login100-form-btn" Text="Login" OnClick="btnlogin_Click"></asp:LinkButton>
                            <asp:LinkButton runat="server" ID="btnSignUp" PostBackUrl="~/userSignUp.aspx" CausesValidation="false" Text="Sign Up?" CssClass="mt-5 pl-5"></asp:LinkButton>
                        </div>
                        <div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
