<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Enterprise.UI.Admin.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div style="width:100%;height:430px;background-image:url(../Imgs/hh.jpg);">
        <div style="width:350px;height:300px;opacity:0.9;text-align:center;position:relative;left:686px;top:55px;background-color:white;">
            <asp:Label ID="LabName" runat="server" Text="Label" style="font-size:14px; position:absolute; left:55px; top:22px;">真实姓名</asp:Label>
            <asp:TextBox ID="TxtName" runat="server" style="position:absolute;top:22px;left:120px; padding:0px 10px;box-sizing:border-box;width:150px;margin-left:10px;height:20px;border-radius:10px;border:1px solid black;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequName" runat="server" ControlToValidate="TxtName" EnableClientScript="false" ErrorMessage="真实姓名不可以为空" ForeColor="Red" style="font-size:11px;"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="LabAdminName" runat="server" Text="Label" style="font-size:14px;">用&nbsp;&nbsp;户&nbsp;&nbsp;名</asp:Label>
            <asp:TextBox ID="TxtAdminName" runat="server" style="padding:0px 10px;box-sizing:border-box;width:150px;margin-left:10px;margin-top:40px;height:20px;border-radius:10px;border:1px solid black;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequAdminName" runat="server" ControlToValidate="TxtAdminName" EnableClientScript="false" ErrorMessage="管理员昵称不可以为空" ForeColor="Red" style="font-size:11px;"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="LabAdminPwd" runat="server" Text="Label" style="font-size:14px;">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;</asp:Label>
            <asp:TextBox ID="TxtAdminPwd"  runat="server" style="padding:0px 10px;box-sizing:border-box;width:150px;margin-left:10px;height:20px;border-radius:10px;border:1px solid black;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequPwd" runat="server" ControlToValidate="TxtAdminPwd" EnableClientScript="false" ErrorMessage="管理员密码不可以为空" ForeColor="Red" style="font-size:11px;"></asp:RequiredFieldValidator>
            <br />
            <br />
            
            <asp:Label ID="LabAginPwd" runat="server" Text="Label" style="font-size:14px;">确认密码</asp:Label>
            <asp:TextBox ID="TxtAginPwd" runat="server" style="padding:0px 10px;box-sizing:border-box;width:150px;margin-left:10px;height:20px;border-radius:10px;border:1px solid black;"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequAginPwd" runat="server" ControlToValidate="TxtAginPwd" EnableClientScript="false" ErrorMessage="请再次确认密码" ForeColor="Red" style="font-size:11px;"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="登录" style="width:200px;height:30px;margin-top:20px;border-radius:10px;text-align:center;border:1px solid orange;background-color:orange;color:white;"/>
        </div>
        </div>
</asp:Content>
