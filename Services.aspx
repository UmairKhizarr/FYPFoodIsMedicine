<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="FoodIsMedicine.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .service-card {
            border: 1px solid #ffffff;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;
            text-align: center;
            min-height: 230px;
        }

            .service-card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }

            .service-card h3 {
                font-size: 28px;
                margin-bottom: 20px;
            }

            .service-card p {
                font-size: 18px;
            }

            .service-card i {
                font-size: 64px;
                margin-bottom: 20px;
            }

        .h2-bg {
            background: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="h2-bg p-1 ">
        <h2 class="text-center text-white">Our Services</h2>
    </div>

    <div class="container">
        <div class="row mt-5">

            <div class="col-md-4">
                <div class="service-card">
                    <i class="fas fa-bacterium fa-5x  text-danger"></i>
                    <h3 class="text-light">Diseases</h3>
                    <p class="text-light">We offer personalized diet plans for people with different disease to help improve their health progress.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="service-card">
                    <i class="fas fa-apple-alt fa-5x text-danger"></i>
                    <h3 class="text-light">Weight Loss</h3>
                    <p class="text-light">Our weight loss plans are tailored to your needs and help you achieve your weight loss goals in a healthy way.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="service-card">
                    <i class="fas fa-utensils fa-5x text-danger"></i>
                    <h3 class="text-light">Diet Planning</h3>
                    <p class="text-light">We create customized meal plans based on your specific dietary needs and preferences to turn you in a healthy lifeStyle.</p>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
