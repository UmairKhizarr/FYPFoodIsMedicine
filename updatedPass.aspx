<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatedPass.aspx.cs" Inherits="FoodIsMedicine.updatedPass" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="align-items-center">
                    <asp:Label runat="server" Text="Password Updated Successfully" CssClass="form-label"></asp:Label><br />
                    <asp:Label runat="server" Text="Login with your updated Password...." CssClass="form-label text-muted"></asp:Label><br />
                    <asp:LinkButton runat="server" ID="btnLogin" OnClick="btnLogin_Click" Text="Login" CssClass="btn btn-primary"></asp:LinkButton>
                </div>
            </div>
            <div class="col-md-4"></div>
        </div>
    </form>
</body>
</html>
