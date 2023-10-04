<%@ Page Title="" Language="C#" MasterPageFile="~/adminDashboard.Master" AutoEventWireup="true" CodeBehind="listAdmins.aspx.cs" Inherits="FoodIsMedicine.listAdmins" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <%--<asp:LinkButton runat="server" Text="Add New Admin" CssClass="btn btn-primary" ur></asp:LinkButton>--%>
        <asp:HyperLink runat="server" NavigateUrl="~/addAdmin.aspx" CssClass="btn btn-primary" Text="Add New Admin"></asp:HyperLink>
    </div>

    <asp:GridView runat="server" ID="GVB" AutoGenerateColumns="false" OnRowCommand="GV_RowCommand" OnRowEditing="GV_RowEditing" OnRowDeleting="GV_RowDeleting" CssClass="mt-5 table table-bordered">
        <Columns>
            <asp:BoundField HeaderText="Sr No." DataField="adminId" />
            <asp:BoundField HeaderText="Dietitian Name" DataField="adminName" />
            <asp:BoundField HeaderText="Email Address" DataField="adminEmail" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <%--<asp:ImageButton runat="server"/>--%>

                    <asp:LinkButton runat="server" Text="Edit" CommandName="edit" CommandArgument='<%# Eval("adminID") %>' CssClass="btn btn-secondary"></asp:LinkButton>
                    <asp:LinkButton runat="server" Text="delete" OnClientClick="return confirm('Are You sure you wanna want to delete it?')" CommandName="delete" CommandArgument='<%# Eval("adminID") %>' CssClass="btn btn-danger"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
