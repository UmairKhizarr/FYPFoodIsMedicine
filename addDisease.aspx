<%@ Page Title="" Language="C#" MasterPageFile="~/adminDashboard.Master" AutoEventWireup="true" CodeBehind="addDisease.aspx.cs" Inherits="FoodIsMedicine.addDisease" %>

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
        <label for="txtname" class="font-weight-bold h5">Disease Name</label>
        <asp:TextBox runat="server" ID="txtname" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="RFV" ControlToValidate="txtname" SetFocusOnError="true" Text="*Disease name is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:LinkButton runat="server" ID="btnAddDisease" CssClass="btn btn-primary mt-3" Text="Add Disease" OnClick="btnAddDisease_Click"></asp:LinkButton>
        <asp:HyperLink runat="server" Text="Cancel" CssClass="btn btn-secondary mt-3 ml-3" NavigateUrl="~/listDiseases.aspx"></asp:HyperLink>
    </div>
</asp:Content>
