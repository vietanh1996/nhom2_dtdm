<%@ Page Title="Hóa đơn" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container">
        <div class="row">

            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#dedede" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#dedede" Font-Bold="True" Width="20%" Height="40px" />
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="trang_thai" HeaderText="trang_thai" SortExpression="trang_thai" />
                    <asp:BoundField DataField="mua_id" HeaderText="mua_id" SortExpression="mua_id" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#dedede" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#dedede" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#dedede" ForeColor="White" HorizontalAlign="Center" Height="40px"/>
                <RowStyle BackColor="#dedede" Height="40px"/>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hoa_don] WHERE [id] = @original_id AND [trang_thai] = @original_trang_thai AND [mua_id] = @original_mua_id" InsertCommand="INSERT INTO [hoa_don] ([id], [trang_thai], [mua_id]) VALUES (@id, @trang_thai, @mua_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [trang_thai], [mua_id] FROM [hoa_don]" UpdateCommand="UPDATE [hoa_don] SET [trang_thai] = @trang_thai, [mua_id] = @mua_id WHERE [id] = @original_id AND [trang_thai] = @original_trang_thai AND [mua_id] = @original_mua_id">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_trang_thai" Type="String" />
                    <asp:Parameter Name="original_mua_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="trang_thai" Type="String" />
                    <asp:Parameter Name="mua_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="trang_thai" Type="String" />
                    <asp:Parameter Name="mua_id" Type="Int32" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_trang_thai" Type="String" />
                    <asp:Parameter Name="original_mua_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
