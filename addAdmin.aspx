<%@ Page Title="" Language="C#" MasterPageFile="~/adminDashboard.Master" AutoEventWireup="true" CodeBehind="addAdmin.aspx.cs" Inherits="FoodIsMedicine.addAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .center-div {
            display: flex;
            width: 100%;
            height: 100vh;
            justify-content: center;
            align-items: center;
        }

        .max-width {
            max-width: 500px;
        }

        .btn-primary {
            background-color: green !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row max-width mx-auto mt-5">
        <label for="txtname" class="font-weight-bold h5">Dietitian Name</label>
        <asp:TextBox runat="server" ID="txtname" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="RFV" ControlToValidate="txtname" SetFocusOnError="true" Text="*Dietitian name is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

        <label for="txtemail" class="font-weight-bold h5">Email Address</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txtemail"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtemail" SetFocusOnError="true" Text="*Email Address is required" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtemail" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Text="*Invalid Email Address" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
        <asp:Label runat="server" ID="lblinvalidEmail" ForeColor="Red"></asp:Label>

        <label for="txtPass" class="font-weight-bold h5">Password</label>
        <asp:TextBox runat="server" ID="txtPass" CssClass="form-control" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="RFVemail" ControlToValidate="txtPass" Text="*Password field is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

        <label for="txtConfirmPass" class="font-weight-bold h5">Confirm Password</label>
        <asp:TextBox runat="server" ID="txtConfirmPass" CssClass="form-control" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator runat="server" ControlToValidate="txtPass" ControlToCompare="txtConfirmPass" SetFocusOnError="true" Text="*Password didn't match" ForeColor="Red"></asp:CompareValidator>

        <asp:LinkButton runat="server" ID="btnAddDietitian" CssClass="btn btn-primary mt-3" Text="Add Dietitian" OnClick="btnAddDietitian_Click"></asp:LinkButton>
        <asp:HyperLink runat="server" Text="Cancel" CssClass="btn btn-secondary mt-3 ml-3" NavigateUrl="~/listAdmins.aspx"></asp:HyperLink>
    </div>
</asp:Content>
