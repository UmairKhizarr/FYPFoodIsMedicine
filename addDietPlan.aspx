<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="addDietPlan.aspx.cs" Inherits="FoodIsMedicine.addDietPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .txt-white{
            color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container txt-white mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-8 mt-4">
                <div class="mb-4">
                    <h3 class="text-center">Request Diet Plan</h3>
                </div>

                <div class="form-group">
                    <label for="txtName">Name</label>
                    <input type="text" class="form-control" id="txtName" name="txtName" placeholder="Enter Your Name" />
                </div>

                <div class="form-group">
                    <label for="ddlDisease">Disease:</label>
                    <asp:DropDownList runat="server" ID="ddldisease" CssClass="form-control">
                    </asp:DropDownList>
                </div>

                <label for="mealType">Meal Type:</label><br />
                <asp:RadioButtonList runat="server" ID="radioBtnList">
                    <asp:ListItem Selected="True" Text="Vegetarian" Value="veg"></asp:ListItem>
                    <asp:ListItem Text="Non-Vegetarian" Value="non-veg"></asp:ListItem>
                </asp:RadioButtonList>

                <label for="ddlFoodCategory">Food Category:</label>
                <asp:DropDownList ID="ddlfoodCategory" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select Food Category" Value=""></asp:ListItem>
                    <asp:ListItem Text="Sweets" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Cooffee" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Chicken" Value="2"></asp:ListItem>
                </asp:DropDownList>
                <asp:Label runat="server" ID="lblerror" ForeColor="Red"></asp:Label>
            </div>
            <div class="text-center">
                <asp:Button CssClass="btn btn-secondary mt-4" runat="server" ID="btnGetData" OnClick="btnGetData_Click" Text="Submit"></asp:Button>
            </div>
        </div>
    </div>
</asp:Content>
