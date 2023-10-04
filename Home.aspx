<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FoodIsMedicine.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .col-md-12 {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #ffffff;
            text-shadow: 1px 1px #000000;
            background-size: cover;
            background-position: center center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-12 col-sm-12 col-lg-12 col-xl-12 " style="position: relative;">
                <div style="background-image: url('/img/food.jpeg'); opacity: 0.7; position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></div>
                <div class="text-center" style="position: relative; z-index: 1;">
                    <div style="background-color: rgba(0,0,0,0.5); display: inline-block; padding: 20px;">
                        <h1>Welcome to My Diet Plan System</h1>
                        <h4>Find the perfect diet plan for you and start living a healthier lifestyle today!</h4>
                        <br />
                        <h2 class="text-center text-white">Food is Medicine?</h2>
                        <h5><b>Food is medicine because it has a powerful impact on our overall health and wellbeing.<br />
                            The foods we eat contain nutrients and compounds that can nourish and boost our immune system.
                            <br />
                            So why not start treating your body like the temple it is and enjoy the benefits of food as medicine today?</b></h5>
                        <br />

                        <div class="form-group d-flex justify-content-center ">
                            <%--<button type="button" class="btn btn-lg btn-primary rounded-pill py-3 px-5 my-4">
                                <img src="your-logo.png" alt="Logo" class="mr-3" width="50" />
                                      Request Diet Plan
                            </button>--%>
                            <asp:Button Class="btn btn-success mr-1 px-4 " ID="cmdRequestDeit" runat="server" Text="Request Diet Plan" OnClick="cmdRequestDeit_Click" />
                            <a href="userLogin.aspx" class="btn btn-danger px-5 ml-2">Login</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
