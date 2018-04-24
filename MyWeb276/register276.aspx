<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage276.master" AutoEventWireup="true" CodeFile="register276.aspx.cs" Inherits="register276" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>register</h2>
    <div class="form-inline">
    <p>
        <label for="inputEmail3" class="col-sm-2 control-label">admin</label>
        <asp:TextBox ID="admin" runat="server" class="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="admin" ErrorMessage="必填项" ForeColor="Fuchsia"></asp:RequiredFieldValidator>
    </p>
    <p>
        <label for="inputEmail3" class="col-sm-2 control-label">password</label>
        <asp:TextBox ID="password" runat="server" Font-Underline="True" TextMode="Password" class="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="必填项" ForeColor="Fuchsia"></asp:RequiredFieldValidator>
    </p>
    <p>
        <label for="inputEmail3" class="col-sm-2 control-label">password confess</label>
        <asp:TextBox ID="passwordConfess" runat="server" Font-Underline="True" TextMode="Password" class="form-control"></asp:TextBox>     
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次密码不一致" ControlToCompare="passwordConfess" ControlToValidate="password" ForeColor="#FF66FF"></asp:CompareValidator>
    </p>
    <p>
       <label for="inputEmail3" class="col-sm-2 control-label">mail</label>
        <asp:TextBox ID="email" runat="server" class="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="必填项" ForeColor="Fuchsia"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="格式错误" ForeColor="#660066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <p>
       <label for="inputEmail3" class="col-sm-2 control-label">idNum</label>
        <asp:TextBox ID="idNum" runat="server" class="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="idNum" ErrorMessage="必填项" ForeColor="Fuchsia" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="idNum" ErrorMessage="格式错误" ForeColor="#660033" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
    </p>
    <p>
        <label for="inputEmail3" class="col-sm-2 control-label">sex</label>
        <asp:RadioButtonList ID="sex" runat="server" class="form-control"  Height="22px" Width="160px" RepeatDirection="Horizontal" BorderStyle="None" RepeatLayout="Flow">
            <asp:ListItem Selected="True">男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        <label for="inputEmail3" class="col-sm-2 control-label">job</label>
        <asp:DropDownList ID="job" runat="server" class="form-control">
            <asp:ListItem Selected="True">测试</asp:ListItem>
            <asp:ListItem>运维</asp:ListItem>
            <asp:ListItem>开发</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p> <asp:Button ID="submit" runat="server" Text="submit" OnClick="submit_0" class="btn btn-info" /> 
        <asp:Button ID="cancle" runat="server" Text="cancle" class="btn btn-info"/></p>
    </div>
    <asp:Label ID="Label_0" runat="server" Text="Label"></asp:Label>
</asp:Content>

