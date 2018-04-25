<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage276.master" AutoEventWireup="true" CodeFile="product_manager_1.aspx.cs" Inherits="product_manager_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    商品种类：
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TypeName" DataValueField="TypId" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="73px">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopdataConnectionString %>" SelectCommand="SELECT [TypeName], [TypID] FROM [Ptype]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>

