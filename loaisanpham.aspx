<%@ Page Title="Loại sản phẩm" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container">
        <div class="row">
            
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#dedede" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#dedede" Font-Bold="True" Width="20%" Height="40px" />
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="tensp" HeaderText="tensp" SortExpression="tensp" />
                    <asp:BoundField DataField="id_danhmuc" HeaderText="id_danhmuc" SortExpression="id_danhmuc" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#dedede" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#dedede" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#dedede" ForeColor="White" HorizontalAlign="Center" Height="40px"/>
                <RowStyle BackColor="#dedede" Height="40px"/>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [danh_muc_sp] WHERE [id] = @original_id AND [tensp] = @original_tensp AND (([id_danhmuc] = @original_id_danhmuc) OR ([id_danhmuc] IS NULL AND @original_id_danhmuc IS NULL))" InsertCommand="INSERT INTO [danh_muc_sp] ([id], [tensp], [id_danhmuc]) VALUES (@id, @tensp, @id_danhmuc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [tensp], [id_danhmuc] FROM [danh_muc_sp]" UpdateCommand="UPDATE [danh_muc_sp] SET [tensp] = @tensp, [id_danhmuc] = @id_danhmuc WHERE [id] = @original_id AND [tensp] = @original_tensp AND (([id_danhmuc] = @original_id_danhmuc) OR ([id_danhmuc] IS NULL AND @original_id_danhmuc IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_tensp" Type="String" />
                    <asp:Parameter Name="original_id_danhmuc" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="tensp" Type="String" />
                    <asp:Parameter Name="id_danhmuc" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tensp" Type="String" />
                    <asp:Parameter Name="id_danhmuc" Type="Int32" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_tensp" Type="String" />
                    <asp:Parameter Name="original_id_danhmuc" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
    </div>
</asp:Content>
