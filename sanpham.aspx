
<%@ Page Title="Sản phẩm" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container">
        <div class="row">
            
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#dedede" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#dedede" Font-Bold="True" Width="20%" Height="40px" />
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ReadOnly="True" />
                    <asp:BoundField DataField="product_category_id" HeaderText="product_category_id" SortExpression="product_category_id" />
                    <asp:BoundField DataField="ten" HeaderText="ten" SortExpression="ten" />
                    <asp:BoundField DataField="gia" HeaderText="gia" SortExpression="gia" />
                    <asp:BoundField DataField="mota" HeaderText="mota" SortExpression="mota" />
                    <asp:BoundField DataField="sku" HeaderText="sku" SortExpression="sku" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#dedede" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#dedede" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#dedede" ForeColor="White" HorizontalAlign="Center" Height="40px"/>
                <RowStyle BackColor="#dedede" Height="40px"/>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [san_pham] WHERE [id] = @original_id AND [product_category_id] = @original_product_category_id AND [ten] = @original_ten AND [gia] = @original_gia AND [mota] = @original_mota AND [sku] = @original_sku" InsertCommand="INSERT INTO [san_pham] ([id], [product_category_id], [ten], [gia], [mota], [sku]) VALUES (@id, @product_category_id, @ten, @gia, @mota, @sku)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [product_category_id], [ten], [gia], [mota], [sku] FROM [san_pham]" UpdateCommand="UPDATE [san_pham] SET [product_category_id] = @product_category_id, [ten] = @ten, [gia] = @gia, [mota] = @mota, [sku] = @sku WHERE [id] = @original_id AND [product_category_id] = @original_product_category_id AND [ten] = @original_ten AND [gia] = @original_gia AND [mota] = @original_mota AND [sku] = @original_sku">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_product_category_id" Type="Int32" />
                    <asp:Parameter Name="original_ten" Type="String" />
                    <asp:Parameter Name="original_gia" Type="Decimal" />
                    <asp:Parameter Name="original_mota" Type="String" />
                    <asp:Parameter Name="original_sku" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="product_category_id" Type="Int32" />
                    <asp:Parameter Name="ten" Type="String" />
                    <asp:Parameter Name="gia" Type="Decimal" />
                    <asp:Parameter Name="mota" Type="String" />
                    <asp:Parameter Name="sku" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="product_category_id" Type="Int32" />
                    <asp:Parameter Name="ten" Type="String" />
                    <asp:Parameter Name="gia" Type="Decimal" />
                    <asp:Parameter Name="mota" Type="String" />
                    <asp:Parameter Name="sku" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_product_category_id" Type="Int32" />
                    <asp:Parameter Name="original_ten" Type="String" />
                    <asp:Parameter Name="original_gia" Type="Decimal" />
                    <asp:Parameter Name="original_mota" Type="String" />
                    <asp:Parameter Name="original_sku" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
    </div>
</asp:Content>