<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ThemSP.aspx.cs" Inherits="ThemSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" style="text-align: center; font-weight: bold; background-color: #66FFFF">THÊM SẢN PHẨM MỚI</td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-color: #00FFFF">Nhà sản xuất</td>
            <td style="background-color: #FFFFCC">
                <asp:DropDownList ID="droplist_nsx" runat="server" DataSourceID="ds_nsx" DataTextField="TenNSX" DataValueField="MaNSX" Width="150px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="ds_nsx" runat="server"
                    ConnectionString="<%$ ConnectionStrings:dotnet1 %>"
                    SelectCommand="Select * from NHASANXUAT">

                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-color: #00FFFF">Loại sản phẩm</td>
            <td style="background-color: #FFFFCC">
                <asp:DropDownList ID="droplist_loaisp" runat="server" DataTextField="TenLoai" DataValueField="MaLoai" DataSourceID="ds_loaisp" Width="151px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="ds_loaisp" runat="server"
                    ConnectionString="<%$ ConnectionStrings:dotnet1 %>"
                    SelectCommand="Select * from LOAI">

                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-color: #00FFFF">Tên sản phẩm</td>
            <td style="background-color: #FFFFCC">
                <asp:TextBox ID="txt_tensp" runat="server" Width="343px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_tensp" ErrorMessage="Tên sản phẩm không được để trống" ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-color: #00FFFF">Mô tả</td>
            <td style="background-color: #FFFFCC">
                <asp:TextBox ID="txt_mota" runat="server" Height="79px" TextMode="MultiLine" Width="341px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_mota" ErrorMessage="Mời bạn nhập mô tả sản phẩm." ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-color: #00FFFF">Giá</td>
            <td style="background-color: #FFFFCC">
                <asp:TextBox ID="txt_gia" runat="server" Width="201px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txt_gia" ErrorMessage="Mời nhập kiểu dữ liệu số." ForeColor="Red" Operator="DataTypeCheck" Type="Double">(*)</asp:CompareValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txt_gia" ErrorMessage="Số nhập phải lớn hơn 0." ForeColor="Red" Operator="GreaterThan" Type="Double" ValueToCompare="0">(*)</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_gia" ErrorMessage="Đơn giá không được để trống." ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-color: #00FFFF">Số lượng</td>
            <td style="background-color: #FFFFCC">
                <asp:TextBox ID="txt_soluong" runat="server" Width="200px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txt_soluong" ErrorMessage="Mời nhập kiểu dữ liệu số nguyên." ForeColor="Red" Operator="DataTypeCheck" Type="Integer">(*)</asp:CompareValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txt_soluong" ErrorMessage="Số nhập phải lớn hơn 0." ForeColor="Red" Operator="GreaterThan" Type="Integer" ValueToCompare="0">(*)</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_soluong" ErrorMessage="Số lượng không được để trống." ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-color: #00FFFF">Size</td>
            <td style="background-color: #FFFFCC">
                <asp:TextBox ID="txt_size" runat="server" Width="337px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_size" ErrorMessage="Bạn chưa nhập size." ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-color: #00FFFF">Xuất xứ</td>
            <td style="background-color: #FFFFCC">
                <asp:RadioButtonList ID="rdolist_xuatxu" runat="server" RepeatColumns="3" Width="335px">
                    <asp:ListItem>Trung Quốc</asp:ListItem>
                    <asp:ListItem Selected="True">Việt Nam</asp:ListItem>
                    <asp:ListItem>Mỹ</asp:ListItem>
                    <asp:ListItem>Hàn Quốc</asp:ListItem>
                    <asp:ListItem>Nhật Bản</asp:ListItem>
                    <asp:ListItem>Đài Loan</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-color: #00FFFF">Đặc tính</td>
            <td style="background-color: #FFFFCC">
                <asp:TextBox ID="txt_dactinh" runat="server" Height="80px" TextMode="MultiLine" Width="340px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_dactinh" ErrorMessage="Mời bạn nhập đặc tính." ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-color: #00FFFF">Hình ảnh</td>
            <td style="background-color: #FFFFCC">
                <asp:FileUpload ID="fileupload_hinhanh" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="fileupload_hinhanh" ErrorMessage="Bạn chưa chọn hình ảnh." ForeColor="Red">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-color: #66FFFF; text-align: left;">
                <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="Black" NavigateUrl="QLSP.aspx">&lt;&lt; Trở lại</asp:HyperLink>
            </td>
            <td style="background-color: #66FFFF">
                <asp:Button ID="btn_them" runat="server" Text="Thêm" Width="68px" OnClick="btn_them_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-color: #FFFFFF" colspan="2">
                <asp:Label ID="lbl_thongbao" runat="server"></asp:Label>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" ShowSummary="false" />
            </td>
        </tr>
    </table>
</asp:Content>

