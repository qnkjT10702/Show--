<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Enterprise.UI.Admin.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div style="width:100%;height:430px;background-image:url(../Imgs/hh.jpg);">
        <div style="width:340px;height:300px;opacity:0.9    ;text-align:center;position:relative;left:686px;top:55px;background-color:white;">
            <asp:Label ID="Label1" runat="server" Text="Label" style="font-size:14px;">用&nbsp;&nbsp;户&nbsp;&nbsp;名</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="padding:0px 10px;box-sizing:border-box;width:150px;margin-left:10px;margin-top:40px;height:20px;border-radius:10px;border:1px solid black;"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label" style="font-size:14px;">密&nbsp;&nbsp;&nbsp;&nbsp;    &nbsp;&nbsp;码</asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" style="padding:0px 10px;box-sizing:border-box;width:150px;margin-left:10px;height:20px;border-radius:10px;border:1px solid black;"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label" style="font-size:14px;">确认密码</asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="padding:0px 10px;box-sizing:border-box;width:150px;margin-left:10px;height:20px;border-radius:10px;border:1px solid black;"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="登录" style="width:200px;height:30px;margin-top:20px;border-radius:10px;text-align:center;border:1px solid orange;background-color:orange;color:white;"/>
        </div>
        </div>
</asp:Content>
