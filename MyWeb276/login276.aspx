<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage276.master" AutoEventWireup="true" CodeFile="login276.aspx.cs" Inherits="login276" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <p class="form-inline">
            <label for="inputEmail3" class="col-sm-2 control-label">username</label>
            <asp:TextBox ID="username" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="必填项 " ControlToValidate="username"></asp:RequiredFieldValidator>
        </p>
        <p class="form-inline">
            <label for="inputEmail3" class="col-sm-2 control-label">password</label>
            <asp:TextBox ID="password" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="login_0" runat="server" OnClick="login_0_Click" Text="login" class="btn btn-info" />
        </p>

</asp:Content>

