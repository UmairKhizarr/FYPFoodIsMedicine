<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotPass.aspx.cs" Inherits="FoodIsMedicine.forgotPass" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
    <title></title>
    <style>
        .wrapper {
            padding: 0 0 100px;
            min-height: 100%;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
       .wrapper .logo img {
                max-width: 50%;
            }

      .logo img {
            margin-left: 400px;
        }
    </style>
</head>
<body>

    <section class="wrapper">
        <div class="container ">
            <div class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
                <div class="logo">
                    <img src="img/logo.png" style="height: 222px;" class="img-fluid mx-auto" alt="logo" />
                </div>

                <form id="form1" runat="server" class="rounded bg-white shadow p-5">
                    <h3 class="text-dark fw-bolder fs-4 mb-2">Forget Password?
                    </h3>

                    <div class="fw-normal text-muted  mb-4">
                        Enter Your email to reset your password.
                    </div>

                    <div class="form-floating mb-3">
                        <asp:TextBox runat="server" ID="txtemail" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator SetFocusOnError="true" runat="server" ID="REVemail" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email Address!!!" ForeColor="Red"></asp:RegularExpressionValidator>
                        <label for="txtemail">Email Address</label>
                    </div>
                    <asp:Label runat="server" ID="lbltxt" ForeColor="Red"></asp:Label>
                    <asp:LinkButton runat="server" CssClass="btn btn-primary" ID="btnsubmit" Text="Submit" OnClick="btnsubmit_Click"></asp:LinkButton>
                    <asp:LinkButton runat="server" CssClass="btn btn-secondary  ms-3" Text="Cancel" ID="btncancel" OnClick="btncancel_Click"></asp:LinkButton>

                </form>
            </div>
        </div>

    </section>

    <%--<div class="card text-center mx-auto" style="width: 300px;">
            <div class="card-header h5 text-white bg-primary">Forgot Password</div>
            <div class="card-body px-5">
                <p class="card-text py-2">
                    Enter your email address and we'll send you an email with instructions to reset your password.
                </p>
                <div class="form-outline">
                    <input type="email" id="typeEmail" class="form-control my-3" />
                    <label class="form-label" for="typeEmail">Email input</label>
                </div>
                <a href="#" class="btn btn-primary w-100">Reset password</a>--%>
    <%--<div class="d-flex justify-content-between mt-4">
                    <a class="" href="#">Login</a>
                    <a class="" href="#">Register</a>
                </div>--%>
    <%--  </div>
        </div>--%>
</body>
</html>
