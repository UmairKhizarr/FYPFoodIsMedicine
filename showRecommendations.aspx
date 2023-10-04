<%@ Page Title="" Language="C#" MasterPageFile="~/adminDashboard.Master" AutoEventWireup="true" CodeBehind="showRecommendations.aspx.cs" Inherits="FoodIsMedicine.showRecommendations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- jQuery DataTables -->
<script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" ID="GridView1" CssClass="DataTable"></asp:GridView>
    <script>
       $(document).ready(function () {
           $('#<%=GridView1.ClientID %>').DataTable({
            "pageLength": 10, // Number of rows to display per page
            "ordering": true, // Enable sorting
            "searching": true // Enable searching/filtering
            // More options...
        });
    });
   </script>


</asp:Content>
