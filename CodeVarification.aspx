<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CodeVarification.aspx.cs" Inherits="FoodIsMedicine.CodeVarification" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="utf-8" />
    <title>2-Step Varification</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/codeVerification.css"/>
    <style>
        input{
            /*width:14%;
            height:70px;*/
            text-align:center;
            font-weight:600;                                                                                   
        }
    </style>

</head>

<body>
    <form id="form1s" class=" formbg" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-7 offset-xl-3  my-5 ">
                    <div class="card my-5 p-4 bg-white ">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h3 class="text-dark fw-bolder fs-4 mb-2 text-center">Two Step Verification</h3>
                                    <div class="fw-normal text-muted text-center">
                                        Enter the verification code we sent to 
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col my-2">
                                <label for="digit">Type your 6-digit security code</label>
                                <div class="form-group">
                                    <div class=" d-flex align-items-center justify-content-evenly mt-2">
                                        <input type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" runat="server" class="form-control" id="digit1" required="required" />
                                        <input type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" runat="server" class="form-control ml-2 " id="digit2" required="required" />
                                        <input type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" runat="server" class="form-control ml-2" id="digit3" required="required" />
                                        <input type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" runat="server" class="form-control ml-2" id="digit4" required="required" />
                                        <input type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" runat="server" class="form-control ml-2" id="digit5" required="required" />
                                        <input type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" runat="server" class="form-control ml-2" id="digit6" required="required" />
                                    </div>
                                    <div>
                                        <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
                                    </div>
                                </div>
                                <%--<asp:Button  runat="server" Text="fgdh"/>--%>
                                <div class=" text-center my-4">
                                    <asp:Button class="btn btn-primary" ID="cmdSubmit" runat="server" Text="Submit" OnClick="cmdSubmit_Click" />
                                </div>
                                <%--<asp:Label runat="server" ID="lbltxt"></asp:Label>--%>
                                <div class="font-weight-normal  text-muted text-center my-4 ">
                                    Didn't get the code ? 
                                    <asp:LinkButton runat="server" Text="Resend" ID="btnResend" OnClick="btnResend_Click"></asp:LinkButton>
                                    <%--<asp:HyperLink runat="server" ID="linkResend" Text="Resend" CssClass="text-danger"></asp:HyperLink>--%>
                                    <%--<a href="#" class="  text-danger font-weight-bold ">Resend</a>--%>
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

