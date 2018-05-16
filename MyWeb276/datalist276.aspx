<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage276.master" AutoEventWireup="true" CodeFile="datalist276.aspx.cs" Inherits="datalist276" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" RepeatDirection="Horizontal" ShowHeader="False" CellPadding="4" ForeColor="#333333" RepeatColumns="4" OnItemDataBound="DataList1_ItemDataBound" OnItemCommand="DataList1_ItemCommand">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="White" Font-Bold="True" ForeColor="black" />
        <FooterTemplate>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">共
                        <asp:Label ID="pageCount" runat="server" Text="Label"></asp:Label>
                        页
                    </td>
                    <td class="auto-style1">当前第<asp:Label ID="currentIndex" runat="server"></asp:Label>
                        页</td>
                    <td class="auto-style1">
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="ind">首页</asp:LinkButton>
                    </td>
                    <td class="auto-style1">
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="pre">上一页</asp:LinkButton>
                    </td>
                    <td class="auto-style1">
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="nex">下一页</asp:LinkButton>
                    </td>
                    <td class="auto-style1">
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="las">尾页</asp:LinkButton>
                    </td>
                    <td class="auto-style1">跳到<asp:TextBox ID="tex" runat="server" Width="32px" ></asp:TextBox>页
            <asp:LinkButton ID="LinkButton5" runat="server" CommandName="go">Go</asp:LinkButton>
                    </td>
                    <%-- <td class="auto-style1">&nbsp;</td>--%>
                </tr>


            </table>
        </FooterTemplate>
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <ItemTemplate>

            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/food.jpg" />
            <br />
            ProductID:
            <%--<asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />--%>
            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("ProductID") %>'></asp:HyperLink>
            <br />
            Unit:
            <asp:Label ID="UnitLabel" runat="server" Text='<%# Eval("Unit") %>' />
            <br />
            Storage:
            <asp:Label ID="StorageLabel" runat="server" Text='<%# Eval("Storage") %>' />
            <br />
            Buy:
            <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/image/food.jpg" ImageHeight="20px" ImageWidth="100px"></asp:HyperLink>
        </ItemTemplate>

        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />

    </asp:DataList>



</asp:Content>

