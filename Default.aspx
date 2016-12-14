<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <div class="row carousel-holder">
        <div class="col-md-12">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#" data-slide-to="0" class="active"></li>
                    <li data-target="#" data-slide-to="1"></li>
                    <li data-target="#" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img class="slide-image" src="http://placehold.it/800x300" alt="">
                    </div>
                    <div class="item">
                        <img class="slide-image" src="http://placehold.it/800x300" alt="">
                    </div>
                    <div class="item">
                        <img class="slide-image" src="http://placehold.it/800x300" alt="">
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
    </div>
    <div class="row">

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3">
            <ItemTemplate>
			        <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
				        <asp:Image id="Image2" runat="server"
                                CssClass ="img-rounded"
                                Width="100%"
                                Height="230px"
                                AlternateText="Image text"
                                ImageAlign="left"
                                ImageUrl="Images/iphone.jpg"
                                />
                            <div class="caption">
                                <h4 class="pull-right"><asp:Label ID="Label2" runat="server" Text='<%# Bind("gia")%>' /> VNĐ</b></h4>
                                <h4><a href="#" class="text-muted"><asp:Label ID="Label1" runat="server" Text='<%# Bind("ten")%>' /></a>
                                </h4>
                                <span class="pric1"><asp:Label ID="Label3" runat="server" Text='<%# Bind("mota") %>' /></span>
                            </div>
                            <asp:HyperLink id="hyperlink2" NavigateUrl="sanpham.aspx" Text="Sửa Sản Phẩm" runat="server"/>
					     </div>
			        </div>
            </ItemTemplate>
            </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [product_category_id], [ten], [gia], [anh], [mota] FROM [san_pham]" OldValuesParameterFormatString="original_{0}">
            </asp:SqlDataSource>
    </div>
</asp:Content>
