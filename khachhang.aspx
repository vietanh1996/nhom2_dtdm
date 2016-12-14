<%@ Page Title="Khách hàng" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
    <div class="container">
        <div class="row">
            
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#dedede" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#dedede" Font-Bold="True" Width="20%" Height="40px" />
                <Fields>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="ho_ten" HeaderText="ho_ten" SortExpression="ho_ten" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#dedede" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#dedede" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#dedede" ForeColor="White" HorizontalAlign="Center" Height="40px"/>
                <RowStyle BackColor="#dedede" Height="40px"/>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [khach_hang] WHERE [id] = @original_id AND [email] = @original_email AND [ho_ten] = @original_ho_ten" InsertCommand="INSERT INTO [khach_hang] ([email], [id], [ho_ten]) VALUES (@email, @id, @ho_ten)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [email], [id], [ho_ten] FROM [khach_hang]" UpdateCommand="UPDATE [khach_hang] SET [email] = @email, [ho_ten] = @ho_ten WHERE [id] = @original_id AND [email] = @original_email AND [ho_ten] = @original_ho_ten">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_ho_ten" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="ho_ten" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="ho_ten" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_ho_ten" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
    </div>
</asp:Content>
