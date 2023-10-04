<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userSignUp.aspx.cs" Inherits="FoodIsMedicine.userSignUp" %>

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
                        <span class="login100-form-title-1">User Sign Up
                        </span>
                    </div>
                    <div class="login100-form validate-form">
                        <div class="wrap-input100 m-b-26">
                            <span class="label-input100">Name</span>
                            <asp:TextBox CssClass="input100" runat="server" placeholder="Enter Your Name" ID="txtusername" required="required"></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>
                        <asp:RequiredFieldValidator runat="server" ID="RFV" ControlToValidate="txtusername" ErrorMessage="*" SetFocusOnError="true" Text="*User Name is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <div class="wrap-input100 validate-input m-b-18">
                            <span class="label-input100">Email Id</span>
                            <asp:TextBox runat="server" CssClass="input100" placeholder="Enter Email Address" ID="txtemail"></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>

                        <asp:RequiredFieldValidator runat="server" ID="RFVw" ControlToValidate="txtemail" ErrorMessage="*Email Address is required" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="REV" ControlToValidate="txtemail" SetFocusOnError="true" ErrorMessage="*Invalid Email Address" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>

                        <div class="wrap-input100 m-b-26">
                            <span class="label-input100">Password</span>
                            <asp:TextBox CssClass="input100" runat="server" TextMode="Password" placeholder="Enter Password" ID="txtPass" required="required"></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPass" ErrorMessage="*Password field is required" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <div class="wrap-input100 validate-input m-b-18" data-validate="Password is required">
                            <span class="label-input100">Confirm</span>
                            <asp:TextBox runat="server" CssClass="input100" TextMode="Password" placeholder="Confirm Password" ID="txtConfirm" required="required"></asp:TextBox>

                            <span class="focus-input100"></span>
                        </div>
                        <asp:CompareValidator runat="server" ControlToCompare="txtConfirm" ControlToValidate="txtPass" ErrorMessage="*" Text="Password didn't match" ForeColor="Red"></asp:CompareValidator>
                        <div>
                            <asp:Label runat="server" ID="lbl" ForeColor="Red" CssClass="p-b-30"></asp:Label>
                        </div>
                        <div class="container-login100-form-btn">
                            <asp:LinkButton runat="server" ID="btnlogin" CssClass="login100-form-btn" Text="Register" OnClick="btnSignUp_Click"></asp:LinkButton>
                            <asp:LinkButton runat="server" ID="btnHome" Text="Home Page" PostBackUrl="~/Home.aspx" CausesValidation="false" CssClass="mt-5 pl-5 txt1"></asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

