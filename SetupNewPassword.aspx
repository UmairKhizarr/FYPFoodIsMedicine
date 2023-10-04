<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupNewPassword.aspx.cs" Inherits="FoodIsMedicine.SetupNewPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Setup New Password</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
    <style>
        .formbg {
            background: #444654;
            min-height: 695px;
        }

        .fontsize {
            font-size: 17px;
        }

        .fontsize2 {
            font-size: 16px;
        }

        .h2fontsize {
            font-size: 30px;
        }

        .spanfontsize {
            font-size: 15px;
        }


        @media(max-width:1200px) {
            .textbox {
                height: 50px;
            }

            .h2fontsize {
                font-size: 25px;
            }

            .spanfontsize {
                font-size: 12px;
            }

            .fontsize {
                font-size: 15px;
            }

            .fontsize2 {
                font-size: 15px;
            }
        }

        @media(max-width:767px) {
            .textbox {
                height: 40px;
            }

            .h2fontsize {
                font-size: 20px;
            }

            .spanfontsize {
                font-size: 12px;
            }

            .fontsize {
                font-size: 12px;
            }

            .fontsize2 {
                font-size: 12px;
            }
        }
    </style>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Bootstrap/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" class="formbg" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-6 offset-xl-3  my-5 ">
                    <div class="card my-5 p-4 bg-white ">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h2 class="text-center text-dark font-weight-bold h2fontsize ">Setup New Password</h2>
                                </div>
                            </div>
                            <div class="font-weight-normal  text-muted text-center fontsize ">
                                Already have reset your password? <a href="adminLogin.aspx" class="  text-danger font-weight-bold ">Sign In</a>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col my-3">
                                    <label class=" font-weight-bold">Password:</label>
                                    <div class="form-group">
                                        <%--<asp:TextBox runat="server" ID="txtkfg"></asp:TextBox>--%>
                                        <asp:TextBox CssClass="form-control  textbox bg-light" runat="server" ID="txtPassword" TextMode="Password" required="required"></asp:TextBox>
                                        <span class="mt-2 spanfontsize">Use 8 or more characters with a mix letters.</span>
                                    </div>

                                    <label class="font-weight-bold">Confirm Password:</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control textbox bg-light" ID="confPassword" runat="server" TextMode="Password" required="required"></asp:TextBox>
                                    </div>
                                    <asp:CompareValidator runat="server" ID="CV1" ControlToValidate="txtPassword" ControlToCompare="confPassword" ForeColor="orange" ErrorMessage="Password did not match" Display="Dynamic"></asp:CompareValidator>

                                    <div class="d-flex align-items-center  fontsize2">
                                        <asp:CheckBox runat="server" CssClass="mb-1" ID="ChkBox" />&nbsp&nbsp
                                      <label>I Agree  <a href="#" class="  text-danger font-weight-bold ">Terms & Conditions</a> </label>
                                    </div>
                                    <div class="form-group text-center my-4">
                                        <asp:Button class="btn btn-success btn-lg btn-block  " ID="cmdSubmit" runat="server" Text="Submit" OnClick="cmdSubmit_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
