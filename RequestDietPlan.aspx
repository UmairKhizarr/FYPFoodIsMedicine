<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="RequestDietPlan.aspx.cs" Inherits="FoodIsMedicine.RequestDietPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .txt-white {
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container txt-white">
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
                    <asp:ListItem Text="Select Food Category" Value="-1" Selected="True"></asp:ListItem>

                    <asp:ListItem Text="Dessert" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Vegetable" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Salad" Value="2"></asp:ListItem>
                     <asp:ListItem Text="Soup" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Rice" Value="4"></asp:ListItem>
                    <asp:ListItem Text="fruit" Value="5"></asp:ListItem>
                     <asp:ListItem Text="Snacks" Value="6"></asp:ListItem>
                    <asp:ListItem Text="Fast Food" Value="7"></asp:ListItem>
                    <asp:ListItem Text="Meat" Value="8"></asp:ListItem>
                     <asp:ListItem Text="Bread" Value="9"></asp:ListItem>
                    <asp:ListItem Text="Drink" Value="10"></asp:ListItem>
               
                </asp:DropDownList>
                <asp:Label runat="server" ID="lblerror" ForeColor="Red"></asp:Label>
            </div>
            <div class="text-center">
                <asp:Button runat="server" ID="btn" CssClass="btn btn-secondary mt-4" OnClick="btn_Click" Text="Get Diet Plan" /> 
                <%--<asp:Button CssClass="btn btn-secondary mt-4" runat="server" ID="btnGetData" OnClick="btnGetData_Click1" Text="Submit"></asp:Button>--%>
            </div>
        </div>
    </div>
</asp:Content>
