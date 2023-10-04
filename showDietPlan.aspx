<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="showDietPlan.aspx.cs" Inherits="FoodIsMedicine.showDietPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .txt-white {
            color: white;
        }

        .card {
            margin-bottom: 15px;
            border: 1px solid #e9ecef;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s;
        }

            .card:hover {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

        .card-header {
            background-color: #f8f9fa;
            font-weight: bold;
            padding: 10px;
            border-bottom: 1px solid #e9ecef;
            border-radius: 5px 5px 0 0;
        }

        .card-body {
            padding: 15px;
        }

        .card-text {
            margin-bottom: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <%--<h2 class="text-muted">Your Requested Diet Plan</h2>--%>
                <div class="card">
                    <div class="card-header">
                        <h7 class="mb-0">Diet Name:</h7>
                    </div>
                    <div class="card-body">
                        <asp:Label runat="server" ID="lblName" CssClass="card-text"></asp:Label>
                        <%--<p class="card-text">Value 1</p>--%>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h7 class="mb-0">Nutrients</h7>
                    </div>
                    <div class="card-body">
                        <asp:Label runat="server" ID="lblNutrients" CssClass="card-text"></asp:Label>
                        <%--<p class="card-text">Value 2</p>--%>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h7 class="mb-0">Diseases</h7>
                    </div>
                    <div class="card-body">
                        <asp:Label runat="server" ID="lblDiseases" CssClass="card-text"></asp:Label>
                        <%--<p class="card-text">Value 3</p>--%>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h7 class="mb-0">Ingredients</h7>
                    </div>
                    <div class="card-body">
                        <asp:Label runat="server" ID="lblIngredients" CssClass="card-text"></asp:Label>
                        <%--<p class="card-text">Value 4</p>--%>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h7 class="mb-0">Diet Types</h7>
                    </div>
                    <div class="card-body">
                        <asp:Label runat="server" ID="lblDietType" CssClass="card-text"></asp:Label>
                        <%--<p class="card-text">Value 5</p>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--<asp:Label runat="server" ID="lblDietPlan" CssClass="txt-white"></asp:Label>--%>

</asp:Content>
