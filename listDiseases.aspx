<%@ Page Title="" Language="C#" MasterPageFile="~/adminDashboard.Master" AutoEventWireup="true" CodeBehind="listDiseases.aspx.cs" Inherits="FoodIsMedicine.listDiseases" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <%--<asp:LinkButton runat="server" Text="Add New Admin" CssClass="btn btn-primary" ur></asp:LinkButton>--%>
        <asp:HyperLink runat="server" NavigateUrl="~/addDisease.aspx" CssClass="btn btn-primary" Text="Add New Disease"></asp:HyperLink>
    </div>

    <asp:GridView runat="server" ID="GV" AutoGenerateColumns="false" OnRowCommand="GV_RowCommand" OnRowEditing="GV_RowEditing" OnRowDeleting="GV_RowDeleting" CssClass="mt-5 table table-bordered">
        <Columns>
            <asp:BoundField HeaderText="Sr No." DataField="DiseaseID" />
            <asp:BoundField HeaderText="Disease Name" DataField="DiseaseName" />

            <asp:TemplateField HeaderText="Action">

                <ItemTemplate>
                    <asp:LinkButton runat="server" Text="Edit" CommandName="edit" CommandArgument='<%# Eval("DiseaseID") %>' CssClass="btn btn-secondary"></asp:LinkButton>
                    <asp:LinkButton runat="server" Text="Delete" OnClientClick="return confirm('Are You sure you want to delete it?')" CommandName="delete" CommandArgument='<%# Eval("DiseaseID") %>' CssClass="btn btn-danger"></asp:LinkButton>
                </ItemTemplate>

            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>
