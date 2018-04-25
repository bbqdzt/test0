<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage276.master" AutoEventWireup="true" CodeFile="ProductManager276.aspx.cs" Inherits="ProductManager276" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="25" >
    <Columns>
        <asp:CommandField AccessibleHeaderText="操作" HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ProductID" HeaderText="商品ID" ReadOnly="True" SortExpression="ProductID" />
        <asp:BoundField DataField="ProductName" HeaderText="商品名称" SortExpression="ProductName" />
        <asp:BoundField DataField="SupplierID" HeaderText="供应ID" SortExpression="SupplierID" />
        <asp:BoundField DataField="TypeID" HeaderText="类型ID" SortExpression="TypeID" />
        <asp:BoundField DataField="Quantity" HeaderText="数量" SortExpression="Quantity" />
        <asp:BoundField DataField="Unit" HeaderText="价格" SortExpression="Unit" />
    </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopdataConnectionString %>" SelectCommand="SELECT * FROM [Product]" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Product] ([ProductID], [ProductName], [SupplierID], [TypeID], [Quantity], [Unit], [Storage], [phot], [yesno]) VALUES (@ProductID, @ProductName, @SupplierID, @TypeID, @Quantity, @Unit, @Storage, @phot, @yesno)" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [SupplierID] = @SupplierID, [TypeID] = @TypeID, [Quantity] = @Quantity, [Unit] = @Unit, [Storage] = @Storage, [phot] = @phot, [yesno] = @yesno WHERE [ProductID] = @ProductID">
    <DeleteParameters>
        <asp:Parameter Name="ProductID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ProductID" Type="Int32" />
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="SupplierID" Type="Int32" />
        <asp:Parameter Name="TypeID" Type="Int32" />
        <asp:Parameter Name="Quantity" Type="String" />
        <asp:Parameter Name="Unit" Type="Decimal" />
        <asp:Parameter Name="Storage" Type="Int16" />
        <asp:Parameter Name="phot" Type="String" />
        <asp:Parameter Name="yesno" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="SupplierID" Type="Int32" />
        <asp:Parameter Name="TypeID" Type="Int32" />
        <asp:Parameter Name="Quantity" Type="String" />
        <asp:Parameter Name="Unit" Type="Decimal" />
        <asp:Parameter Name="Storage" Type="Int16" />
        <asp:Parameter Name="phot" Type="String" />
        <asp:Parameter Name="yesno" Type="Boolean" />
        <asp:Parameter Name="ProductID" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
