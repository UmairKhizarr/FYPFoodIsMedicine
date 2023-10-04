<%@ Page Title="" Language="C#" MasterPageFile="~/adminDashboard.Master" AutoEventWireup="true" CodeBehind="listUsers.aspx.cs" Inherits="FoodIsMedicine.listUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" ID="GVB" AutoGenerateColumns="false" CssClass="mt-5 table table-bordered">
        <Columns>
            <asp:BoundField HeaderText="User Name" DataField="userName" />
            <asp:BoundField HeaderText="Email Address" DataField="userEmail" />

            <asp:TemplateField HeaderText="User Status">
                <ItemTemplate>
                    <%# Convert.ToBoolean(Eval("userStatus")) ? "Active" : "Inactive" %>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnActiveUser" OnClick="btnActiveUser_Click1" Text="Active" CommandArgument='<%#Eval ("userId") %>' CommandName="Active" OnCommand="btnActiveUser_Command" CssClass="btn btn-primary"></asp:LinkButton>
                    <asp:LinkButton runat="server" ID="btnBlockUser" OnClick="btnBlockUser_Click1" Text="Block" CommandArgument='<%#Eval ("userId") %>' CommandName="block" OnCommand="btnBlockUser_Command" OnClientClick="return confirm('Are You sure You wanna to block it??')" CssClass="btn btn-danger"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
