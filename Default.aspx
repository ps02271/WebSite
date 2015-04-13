<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ma_kh" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="ma_kh" HeaderText="ma_kh" ReadOnly="True" SortExpression="ma_kh" />
                <asp:BoundField DataField="ten_tk" HeaderText="ten_tk" SortExpression="ten_tk" />
                <asp:BoundField DataField="matkhau" HeaderText="matkhau" SortExpression="matkhau" />
                <asp:BoundField DataField="loai_tk" HeaderText="loai_tk" SortExpression="loai_tk" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [TaiKhoan] WHERE [ma_kh] = @ma_kh" InsertCommand="INSERT INTO [TaiKhoan] ([ma_kh], [ten_tk], [matkhau], [loai_tk]) VALUES (@ma_kh, @ten_tk, @matkhau, @loai_tk)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [ma_kh], [ten_tk], [matkhau], [loai_tk] FROM [TaiKhoan]" UpdateCommand="UPDATE [TaiKhoan] SET [ten_tk] = @ten_tk, [matkhau] = @matkhau, [loai_tk] = @loai_tk WHERE [ma_kh] = @ma_kh">
            <DeleteParameters>
                <asp:Parameter Name="ma_kh" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ma_kh" Type="String" />
                <asp:Parameter Name="ten_tk" Type="String" />
                <asp:Parameter Name="matkhau" Type="String" />
                <asp:Parameter Name="loai_tk" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ten_tk" Type="String" />
                <asp:Parameter Name="matkhau" Type="String" />
                <asp:Parameter Name="loai_tk" Type="String" />
                <asp:Parameter Name="ma_kh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
