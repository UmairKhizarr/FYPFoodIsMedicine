<%@ Page Title="" Language="C#" MasterPageFile="~/adminDashboard.Master" AutoEventWireup="true" CodeBehind="addRecommendation.aspx.cs" Inherits="FoodIsMedicine.addRecommendation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-md-2"></div>
        <div class="col-md-8 mt-5">
            <%--<asp:Label runat="server" CssClass="mt-4">Enter Diet Name</asp:Label>--%>
            <%--<asp:TextBox runat="server" CssClass="form-control" ID="txtDietName"></asp:TextBox>--%>

            <asp:Label runat="server" CssClass="mt-5">Diet Name</asp:Label>
            <asp:TextBox runat="server" CssClass="form-control" ID="txtDietName" placeHolder="Enter Diet Name"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RFVDietName" SetFocusOnError="true" ControlToValidate="txtDietName" ForeColor="Red" ErrorMessage="*Diet Name is Required" Display="Dynamic"></asp:RequiredFieldValidator>

            <asp:Label runat="server" CssClass="">Category</asp:Label>
            <asp:DropDownList runat="server" CssClass="form-control" ID="ddlCatagory">
                <asp:ListItem Value="" Text="Select Category" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Salad" Value="salad"></asp:ListItem>
                <asp:ListItem Text="Dessert" Value="dessert"></asp:ListItem>
                <asp:ListItem Text="Soup" Value="soup"></asp:ListItem>
                <asp:ListItem Text="Rice" Value="rice"></asp:ListItem>
                <asp:ListItem Text="Snacks" Value="snacks"></asp:ListItem>
                <asp:ListItem Text="Fast Food" Value="fast food"></asp:ListItem>
                <asp:ListItem Text="Vegetables" Value="Vegetable"></asp:ListItem>
                <asp:ListItem Text="Meat" Value="meat"></asp:ListItem>
                <asp:ListItem Text="Fruits" Value="fruit"></asp:ListItem>
                <asp:ListItem Text="Bread" Value="bread"></asp:ListItem>
            </asp:DropDownList>

            <%--<asp:TextBox runat="server" CssClass="form-control" ID="TextBox2"></asp:TextBox>--%>
            <asp:Label runat="server" CssClass="">Description/Ingredients</asp:Label>

            <asp:TextBox runat="server" CssClass="form-control" ID="lblIngredients" TextMode="MultiLine"
                placeHolder="Enter a brief description about the diet..."></asp:TextBox>

            <%-- To enter only english alpahbet beacuse when user enter comma (,) like that then our code would assume 
                it as delimiter in .csv file and it would place that string after comma to the next field that would create a problem--%>
            <asp:RegularExpressionValidator runat="server" ID="regexValidator" ControlToValidate="lblIngredients"
                ValidationExpression="^[a-zA-Z\s]*$" ErrorMessage="*Only English alphabets are allowed."
                CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>


            <asp:Label runat="server" Text="Meal Type"></asp:Label>
            <asp:RadioButtonList runat="server" ID="lblVegNon" CssClass="custom-control custom-radio text-primary">
                <asp:ListItem Value="VegNon" Text="Vegetarian" Enabled="true"></asp:ListItem>
                <asp:ListItem Value="VegNon" Text="Non-Vegetarian"></asp:ListItem>
            </asp:RadioButtonList>

            <asp:Label runat="server" CssClass=" text-dark">Diseases</asp:Label>
            <asp:TextBox runat="server" CssClass="form-control" ID="lblDiseases" placeHolder="Enter Disease Name"></asp:TextBox>

            <asp:Label runat="server" CssClass="">Nutrients</asp:Label>
            <asp:TextBox runat="server" CssClass="form-control" ID="lblNutrients" placeHolder="Enter Nutrient Name that are in diet"></asp:TextBox>

            <asp:Label runat="server" CssClass="">Diet Types</asp:Label>
            <asp:TextBox runat="server" CssClass="form-control" ID="lblDietTypes" placeHolder="Like this one low_sodium_diet high_fiber_diet high_protien_diet dash_diet"></asp:TextBox>

            <asp:Button runat="server" ID="btnAddRec" Text="Add Recommendation" CssClass="btn btn-primary mt-3" OnClick="btnAddRec_Click" />
        </div>
    </div>
</asp:Content>
