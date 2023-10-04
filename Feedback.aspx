<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="FoodIsMedicine.Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .feedback-bg {
            background: #2a2c40;
        }

        .h2-bg {
            background: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="h2-bg p-2 ">
        <h2 class="text-center text-white">Feedback</h2>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-7 mx-auto my-4 ">
                <div class="card my-4 feedback-bg ">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <h2 class="text-center text-white pb-3 ">Enter your feedback here</h2>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtFeedback" runat="server" TextMode="MultiLine" Rows="6" placeholder="Start here....." required="required"></asp:TextBox>
                                </div>
                                <div class="form-group d-flex justify-content-center ">
                                    <asp:Button Class="btn btn-info px-5 mt-3 " ID="cmdSubmit" runat="server" Text="Submit" />
                                </div>
                                <div>
                                    <asp:Label runat="server" ID="lblMsg" CssClass="bg-success" ForeColor="white"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
