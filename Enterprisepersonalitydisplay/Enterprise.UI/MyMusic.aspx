<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyMusic.aspx.cs" Inherits="Enterprise.UI.MyMusic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $('#AppBar5').css({ backgroundColor: '#fdad02', color: '#4A4A4A' })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>MyMusic我的页面</div>

</asp:Content>
