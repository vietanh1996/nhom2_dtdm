<%@ Page Title="Khách hàng" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container">
        <div class="row">

            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#dedede" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#dedede" Font-Bold="True" Width="20%" Height="40px" />
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="id_mua" HeaderText="id_mua" SortExpression="id_mua" />
                    <asp:BoundField DataField="id_sp" HeaderText="id_sp" SortExpression="id_sp" />
                    <asp:BoundField DataField="luong" HeaderText="luong" SortExpression="luong" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#dedede" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#dedede" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#dedede" ForeColor="White" HorizontalAlign="Center" Height="40px"/>
                <RowStyle BackColor="#dedede" Height="40px"/>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CT_hoa_don] WHERE [id] = @original_id AND [id_mua] = @original_id_mua AND [id_sp] = @original_id_sp AND [luong] = @original_luong" InsertCommand="INSERT INTO [CT_hoa_don] ([id], [id_mua], [id_sp], [luong]) VALUES (@id, @id_mua, @id_sp, @luong)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [id_mua], [id_sp], [luong] FROM [CT_hoa_don]" UpdateCommand="UPDATE [CT_hoa_don] SET [id_mua] = @id_mua, [id_sp] = @id_sp, [luong] = @luong WHERE [id] = @original_id AND [id_mua] = @original_id_mua AND [id_sp] = @original_id_sp AND [luong] = @original_luong">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_id_mua" Type="Int32" />
                    <asp:Parameter Name="original_id_sp" Type="Int32" />
                    <asp:Parameter Name="original_luong" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="id_mua" Type="Int32" />
                    <asp:Parameter Name="id_sp" Type="Int32" />
                    <asp:Parameter Name="luong" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="id_mua" Type="Int32" />
                    <asp:Parameter Name="id_sp" Type="Int32" />
                    <asp:Parameter Name="luong" Type="Int32" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_id_mua" Type="Int32" />
                    <asp:Parameter Name="original_id_sp" Type="Int32" />
                    <asp:Parameter Name="original_luong" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

         </div>
    </div>
</asp:Content>