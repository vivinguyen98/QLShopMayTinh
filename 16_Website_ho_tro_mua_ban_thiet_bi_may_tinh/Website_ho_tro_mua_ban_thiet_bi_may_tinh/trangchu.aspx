<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trangchu.aspx.cs" Inherits="trangchu" %>
<%@ Import Namespace="System.Data.SqlClient"%>
<%@ Import Namespace="System.Configuration"%>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:label runat="server" ID="Label1"></asp:label>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand"   >
        <ItemTemplate>
            <div class="khung">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="136px" ImageUrl='<%# Eval("H") %>' Width="139px" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TenSP") %>' NavigateUrl='<%# Eval("lk") %>' style="color:black " Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ></asp:HyperLink>
            
            <br />
            <asp:Button ID="btn_cart" runat="server" Text="Thêm giỏ hàng" CommandArgument='<%# Eval("MaSP") %>' />
            <br />
                </div>
        </ItemTemplate>
    </asp:DataList>
        
        <br />
    
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:dotnet1 %>"
            SelectCommand="Select *,'HinhAnh/'+Hinh as H ,'chitietsanpham.aspx?ma='+cast(MaSP as char) as lk from SANPHAM"
        >
        
    </asp:SqlDataSource>

   
</asp:Content>

