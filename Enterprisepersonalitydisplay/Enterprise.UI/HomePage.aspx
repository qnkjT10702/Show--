<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Enterprise.UI.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $('#AppBar4').css({ backgroundColor: '#fdad02', color: '#4A4A4A' })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>HomePage首页</div>

</asp:Content>
