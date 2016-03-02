<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    
    
    
    
    </div>
</body>
</html>
<html>
	<head>
		<title>Demo</title>
		<!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
		<style type="text/css">
			body {
				margin: 0 auto;
				width: 1024px;
			}

			div#wrapper {
				width: 1024px;
				margin: 0 auto;
			}

			div.header {
				width: 1024px;
				height: 150px;
				background: green;
				margin-bottom: 30px;
                line-height: 150px;
                color: white;
                font-size: 35px;
                text-align: center;
                box-shadow: 0px 0px 5px green;
			}

			div.note {
				width: 1024px;
				height: 30px;
				background: red;
				margin-bottom: 10px;
				color: #FFF;
				font-size: 18px;
				text-align: center;
				line-height: 30px;
				box-shadow: 0px 0px 5px red;
			}

			div.col {
				width: 1024px;
				float: left;
				margin-bottom: 30px;
			}

			div.item-title {
				width: 1024px;
				color: #FFF;
				background: blue;
				margin-bottom: 10px;
				line-height: 30px;
				text-align: center;
				font-size: 20px;
				box-shadow: 0 0 5px blue;
			}

			div.item-content {
				width: 1024px;
			}

			div.item-content-left {
				width: 745px;
				margin-right: 5px;
				background: green;
				float: left;
				box-shadow: 10px 10px 5px green;
                
                
			}

			div.item-content-right {
				width: 269px;
				margin-left: 5px;
				background: blue;
				float: right;
				box-shadow: 10px 10px 5px green;
			}
		</style>
	</head>
	<body>
		<div id="wrapper">
			<div class="header">
                HUNGNVPD01333 - ASSIGNMENT ĐIỆN TOÁN ĐÁM MÂY
			</div>
			<div class="note">
				<span>FAQ: Đề nghị nhập số liệu theo đúng thứ tự bảng để tránh xung đột dữ liệu!!!</span>
			</div>
			<div class="content">
				<div class="col">
					<div class="item">
						<div class="item-title">
							<span>1.&nbsp;&nbsp;&nbsp;&nbsp; KHÁCH HÀNG</span>
						</div>
						<div class="item-content">
							<div class="item-content-left">

							    <asp:GridView  width="100%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                                        <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                                        <asp:BoundField DataField="Diachi" HeaderText="Diachi" SortExpression="Diachi" />
                                        <asp:BoundField DataField="SDTKH" HeaderText="SDTKH" SortExpression="SDTKH" />
                                        <asp:BoundField DataField="CMND" HeaderText="CMND" SortExpression="CMND" />
                                    </Columns>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Quanlybanhang1ConnectionString2 %>" DeleteCommand="DELETE FROM [KHACHHANG] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KHACHHANG] ([MaKH], [TenKH], [Diachi], [SDTKH], [CMND]) VALUES (@MaKH, @TenKH, @Diachi, @SDTKH, @CMND)" SelectCommand="SELECT * FROM [KHACHHANG]" UpdateCommand="UPDATE [KHACHHANG] SET [TenKH] = @TenKH, [Diachi] = @Diachi, [SDTKH] = @SDTKH, [CMND] = @CMND WHERE [MaKH] = @MaKH">
                                    <DeleteParameters>
                                        <asp:Parameter Name="MaKH" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="MaKH" Type="String" />
                                        <asp:Parameter Name="TenKH" Type="String" />
                                        <asp:Parameter Name="Diachi" Type="String" />
                                        <asp:Parameter Name="SDTKH" Type="String" />
                                        <asp:Parameter Name="CMND" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="TenKH" Type="String" />
                                        <asp:Parameter Name="Diachi" Type="String" />
                                        <asp:Parameter Name="SDTKH" Type="String" />
                                        <asp:Parameter Name="CMND" Type="String" />
                                        <asp:Parameter Name="MaKH" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

							</div>
							<div class="item-content-right">

							    <asp:FormView width="100%" ID="FormView1" runat="server" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" AllowPaging="True">
                                    <EditItemTemplate>
                                        MaKH:
                                        <asp:Label ID="MaKHLabel1" runat="server" Text='<%# Eval("MaKH") %>' />
                                        <br />
                                        TenKH:
                                        <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                                        <br />
                                        Diachi:
                                        <asp:TextBox ID="DiachiTextBox" runat="server" Text='<%# Bind("Diachi") %>' />
                                        <br />
                                        SDTKH:
                                        <asp:TextBox ID="SDTKHTextBox" runat="server" Text='<%# Bind("SDTKH") %>' />
                                        <br />
                                        CMND:
                                        <asp:TextBox ID="CMNDTextBox" runat="server" Text='<%# Bind("CMND") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <InsertItemTemplate>
                                        MaKH:
                                        <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                                        <br />
                                        TenKH:
                                        <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                                        <br />
                                        Diachi:
                                        <asp:TextBox ID="DiachiTextBox" runat="server" Text='<%# Bind("Diachi") %>' />
                                        <br />
                                        SDTKH:
                                        <asp:TextBox ID="SDTKHTextBox" runat="server" Text='<%# Bind("SDTKH") %>' />
                                        <br />
                                        CMND:
                                        <asp:TextBox ID="CMNDTextBox" runat="server" Text='<%# Bind("CMND") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        MaKH:
                                        <asp:Label ID="MaKHLabel" runat="server" Text='<%# Eval("MaKH") %>' />
                                        <br />
                                        TenKH:
                                        <asp:Label ID="TenKHLabel" runat="server" Text='<%# Bind("TenKH") %>' />
                                        <br />
                                        Diachi:
                                        <asp:Label ID="DiachiLabel" runat="server" Text='<%# Bind("Diachi") %>' />
                                        <br />
                                        SDTKH:
                                        <asp:Label ID="SDTKHLabel" runat="server" Text='<%# Bind("SDTKH") %>' />
                                        <br />
                                        CMND:
                                        <asp:Label ID="CMNDLabel" runat="server" Text='<%# Bind("CMND") %>' />
                                        <br />
                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                </asp:FormView>

							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="item">
						<div class="item-title">
							2.&nbsp;&nbsp;&nbsp;&nbsp; LOẠI SẢN PHẨM</div>
						<div class="item-content">
							<div class="item-content-left">

							    <asp:GridView Width="100%" ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaLSP" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" ReadOnly="True" SortExpression="MaLSP" />
                                        <asp:BoundField DataField="SPLoai1" HeaderText="SPLoai1" SortExpression="SPLoai1" />
                                        <asp:BoundField DataField="SPLoai2" HeaderText="SPLoai2" SortExpression="SPLoai2" />
                                    </Columns>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                </asp:GridView>

							    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Quanlybanhang1ConnectionString2 %>" DeleteCommand="DELETE FROM [LOAISANPHAM] WHERE [MaLSP] = @MaLSP" InsertCommand="INSERT INTO [LOAISANPHAM] ([MaLSP], [SPLoai1], [SPLoai2]) VALUES (@MaLSP, @SPLoai1, @SPLoai2)" SelectCommand="SELECT * FROM [LOAISANPHAM]" UpdateCommand="UPDATE [LOAISANPHAM] SET [SPLoai1] = @SPLoai1, [SPLoai2] = @SPLoai2 WHERE [MaLSP] = @MaLSP">
                                    <DeleteParameters>
                                        <asp:Parameter Name="MaLSP" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="MaLSP" Type="String" />
                                        <asp:Parameter Name="SPLoai1" Type="String" />
                                        <asp:Parameter Name="SPLoai2" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="SPLoai1" Type="String" />
                                        <asp:Parameter Name="SPLoai2" Type="String" />
                                        <asp:Parameter Name="MaLSP" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

							</div>
							<div class="item-content-right">

							    <asp:FormView Width="100%"  ID="FormView2" runat="server" CellPadding="4" DataKeyNames="MaLSP" DataSourceID="SqlDataSource2" ForeColor="#333333" AllowPaging="True">
                                    <EditItemTemplate>
                                        MaLSP:
                                        <asp:Label ID="MaLSPLabel1" runat="server" Text='<%# Eval("MaLSP") %>' />
                                        <br />
                                        SPLoai1:
                                        <asp:TextBox ID="SPLoai1TextBox" runat="server" Text='<%# Bind("SPLoai1") %>' />
                                        <br />
                                        SPLoai2:
                                        <asp:TextBox ID="SPLoai2TextBox" runat="server" Text='<%# Bind("SPLoai2") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <InsertItemTemplate>
                                        MaLSP:
                                        <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
                                        <br />
                                        SPLoai1:
                                        <asp:TextBox ID="SPLoai1TextBox" runat="server" Text='<%# Bind("SPLoai1") %>' />
                                        <br />
                                        SPLoai2:
                                        <asp:TextBox ID="SPLoai2TextBox" runat="server" Text='<%# Bind("SPLoai2") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        MaLSP:
                                        <asp:Label ID="MaLSPLabel" runat="server" Text='<%# Eval("MaLSP") %>' />
                                        <br />
                                        SPLoai1:
                                        <asp:Label ID="SPLoai1Label" runat="server" Text='<%# Bind("SPLoai1") %>' />
                                        <br />
                                        SPLoai2:
                                        <asp:Label ID="SPLoai2Label" runat="server" Text='<%# Bind("SPLoai2") %>' />
                                        <br />
                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                </asp:FormView>

							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="item">
						<div class="item-title">
							3.&nbsp;&nbsp;&nbsp; SẢN PHẨM</div>
						<div class="item-content">
							<div class="item-content-left">

							    <asp:GridView Width="100%"  ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaSP" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                                        <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" SortExpression="MaLSP" />
                                        <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                                        <asp:BoundField DataField="Giatien" HeaderText="Giatien" SortExpression="Giatien" />
                                    </Columns>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                </asp:GridView>

							    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Quanlybanhang1ConnectionString2 %>" DeleteCommand="DELETE FROM [SANPHAM] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SANPHAM] ([MaSP], [MaLSP], [TenSP], [Giatien]) VALUES (@MaSP, @MaLSP, @TenSP, @Giatien)" SelectCommand="SELECT * FROM [SANPHAM]" UpdateCommand="UPDATE [SANPHAM] SET [MaLSP] = @MaLSP, [TenSP] = @TenSP, [Giatien] = @Giatien WHERE [MaSP] = @MaSP">
                                    <DeleteParameters>
                                        <asp:Parameter Name="MaSP" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="MaSP" Type="String" />
                                        <asp:Parameter Name="MaLSP" Type="String" />
                                        <asp:Parameter Name="TenSP" Type="String" />
                                        <asp:Parameter Name="Giatien" Type="Decimal" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="MaLSP" Type="String" />
                                        <asp:Parameter Name="TenSP" Type="String" />
                                        <asp:Parameter Name="Giatien" Type="Decimal" />
                                        <asp:Parameter Name="MaSP" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

							</div>
							<div class="item-content-right">

							    <asp:FormView  Width="100%" ID="FormView3" runat="server" CellPadding="4" DataKeyNames="MaSP" DataSourceID="SqlDataSource3" ForeColor="#333333" AllowPaging="True">
                                    <EditItemTemplate>
                                        MaSP:
                                        <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
                                        <br />
                                        MaLSP:
                                        <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
                                        <br />
                                        TenSP:
                                        <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                                        <br />
                                        Giatien:
                                        <asp:TextBox ID="GiatienTextBox" runat="server" Text='<%# Bind("Giatien") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <InsertItemTemplate>
                                        MaSP:
                                        <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                                        <br />
                                        MaLSP:
                                        <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
                                        <br />
                                        TenSP:
                                        <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                                        <br />
                                        Giatien:
                                        <asp:TextBox ID="GiatienTextBox" runat="server" Text='<%# Bind("Giatien") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        MaSP:
                                        <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                                        <br />
                                        MaLSP:
                                        <asp:Label ID="MaLSPLabel" runat="server" Text='<%# Bind("MaLSP") %>' />
                                        <br />
                                        TenSP:
                                        <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
                                        <br />
                                        Giatien:
                                        <asp:Label ID="GiatienLabel" runat="server" Text='<%# Bind("Giatien") %>' />
                                        <br />
                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                </asp:FormView>

							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="item">
						<div class="item-title">
							4.&nbsp;&nbsp;&nbsp; HÓA ĐƠN
						</div>
						<div class="item-content">
							<div class="item-content-left">

							    <asp:GridView Width="100%"  ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaHD" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                                        <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                                        <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
                                        <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
                                        <asp:BoundField DataField="NgayLapHoaDon" HeaderText="NgayLapHoaDon" SortExpression="NgayLapHoaDon" />
                                    </Columns>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                </asp:GridView>

							    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Quanlybanhang1ConnectionString2 %>" DeleteCommand="DELETE FROM [HOADON] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HOADON] ([MaHD], [MaKH], [MaSP], [Soluong], [NgayLapHoaDon]) VALUES (@MaHD, @MaKH, @MaSP, @Soluong, @NgayLapHoaDon)" SelectCommand="SELECT * FROM [HOADON]" UpdateCommand="UPDATE [HOADON] SET [MaKH] = @MaKH, [MaSP] = @MaSP, [Soluong] = @Soluong, [NgayLapHoaDon] = @NgayLapHoaDon WHERE [MaHD] = @MaHD">
                                    <DeleteParameters>
                                        <asp:Parameter Name="MaHD" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="MaHD" Type="String" />
                                        <asp:Parameter Name="MaKH" Type="String" />
                                        <asp:Parameter Name="MaSP" Type="String" />
                                        <asp:Parameter Name="Soluong" Type="Int32" />
                                        <asp:Parameter DbType="Date" Name="NgayLapHoaDon" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="MaKH" Type="String" />
                                        <asp:Parameter Name="MaSP" Type="String" />
                                        <asp:Parameter Name="Soluong" Type="Int32" />
                                        <asp:Parameter DbType="Date" Name="NgayLapHoaDon" />
                                        <asp:Parameter Name="MaHD" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

							</div>
							<div class="item-content-right">

							    <asp:FormView Width="100%"  ID="FormView4" runat="server" CellPadding="4" DataKeyNames="MaHD" DataSourceID="SqlDataSource4" ForeColor="#333333" AllowPaging="True">
                                    <EditItemTemplate>
                                        MaHD:
                                        <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
                                        <br />
                                        MaKH:
                                        <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                                        <br />
                                        MaSP:
                                        <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                                        <br />
                                        Soluong:
                                        <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
                                        <br />
                                        NgayLapHoaDon:
                                        <asp:TextBox ID="NgayLapHoaDonTextBox" runat="server" Text='<%# Bind("NgayLapHoaDon") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <InsertItemTemplate>
                                        MaHD:
                                        <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                                        <br />
                                        MaKH:
                                        <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                                        <br />
                                        MaSP:
                                        <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                                        <br />
                                        Soluong:
                                        <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
                                        <br />
                                        NgayLapHoaDon:
                                        <asp:TextBox ID="NgayLapHoaDonTextBox" runat="server" Text='<%# Bind("NgayLapHoaDon") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        MaHD:
                                        <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
                                        <br />
                                        MaKH:
                                        <asp:Label ID="MaKHLabel" runat="server" Text='<%# Bind("MaKH") %>' />
                                        <br />
                                        MaSP:
                                        <asp:Label ID="MaSPLabel" runat="server" Text='<%# Bind("MaSP") %>' />
                                        <br />
                                        Soluong:
                                        <asp:Label ID="SoluongLabel" runat="server" Text='<%# Bind("Soluong") %>' />
                                        <br />
                                        NgayLapHoaDon:
                                        <asp:Label ID="NgayLapHoaDonLabel" runat="server" Text='<%# Bind("NgayLapHoaDon") %>' />
                                        <br />
                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                </asp:FormView>

							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="item">
						<div class="item-title">
							5.&nbsp;&nbsp;&nbsp; CHI TIẾT HÓA ĐƠN</div>
						<div class="item-content">
							<div class="item-content-left">

							    <asp:GridView Width="100%"  ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NgayThanhToan" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="MaHD" HeaderText="MaHD" SortExpression="MaHD" />
                                        <asp:BoundField DataField="NgayThanhToan" HeaderText="NgayThanhToan" ReadOnly="True" SortExpression="NgayThanhToan" />
                                        <asp:BoundField DataField="DaThanhToan" HeaderText="DaThanhToan" SortExpression="DaThanhToan" />
                                    </Columns>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                </asp:GridView>

							    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Quanlybanhang1ConnectionString2 %>" DeleteCommand="DELETE FROM [CHITIETHOADON] WHERE [NgayThanhToan] = @NgayThanhToan" InsertCommand="INSERT INTO [CHITIETHOADON] ([MaHD], [NgayThanhToan], [DaThanhToan]) VALUES (@MaHD, @NgayThanhToan, @DaThanhToan)" SelectCommand="SELECT * FROM [CHITIETHOADON]" UpdateCommand="UPDATE [CHITIETHOADON] SET [MaHD] = @MaHD, [DaThanhToan] = @DaThanhToan WHERE [NgayThanhToan] = @NgayThanhToan">
                                    <DeleteParameters>
                                        <asp:Parameter DbType="Date" Name="NgayThanhToan" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="MaHD" Type="String" />
                                        <asp:Parameter DbType="Date" Name="NgayThanhToan" />
                                        <asp:Parameter Name="DaThanhToan" Type="Decimal" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="MaHD" Type="String" />
                                        <asp:Parameter Name="DaThanhToan" Type="Decimal" />
                                        <asp:Parameter DbType="Date" Name="NgayThanhToan" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

							</div>
							<div class="item-content-right">

							    <asp:FormView Width="100%"  ID="FormView5" runat="server" CellPadding="4" DataKeyNames="NgayThanhToan" DataSourceID="SqlDataSource5" ForeColor="#333333" AllowPaging="True">
                                    <EditItemTemplate>
                                        MaHD:
                                        <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                                        <br />
                                        NgayThanhToan:
                                        <asp:Label ID="NgayThanhToanLabel1" runat="server" Text='<%# Eval("NgayThanhToan") %>' />
                                        <br />
                                        DaThanhToan:
                                        <asp:TextBox ID="DaThanhToanTextBox" runat="server" Text='<%# Bind("DaThanhToan") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <InsertItemTemplate>
                                        MaHD:
                                        <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                                        <br />
                                        NgayThanhToan:
                                        <asp:TextBox ID="NgayThanhToanTextBox" runat="server" Text='<%# Bind("NgayThanhToan") %>' />
                                        <br />
                                        DaThanhToan:
                                        <asp:TextBox ID="DaThanhToanTextBox" runat="server" Text='<%# Bind("DaThanhToan") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        MaHD:
                                        <asp:Label ID="MaHDLabel" runat="server" Text='<%# Bind("MaHD") %>' />
                                        <br />
                                        NgayThanhToan:
                                        <asp:Label ID="NgayThanhToanLabel" runat="server" Text='<%# Eval("NgayThanhToan") %>' />
                                        <br />
                                        DaThanhToan:
                                        <asp:Label ID="DaThanhToanLabel" runat="server" Text='<%# Bind("DaThanhToan") %>' />
                                        <br />
                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                </asp:FormView>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
    </form>
