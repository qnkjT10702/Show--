<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="Enterprise.UI.OrderPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $('#AppBar1').css({ backgroundColor: '#4A4A4A',color:'#fdad02' })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>OrderPage排行榜页面</div>

</asp:Content>
