<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="AddSinger.aspx.cs" Inherits="Enterprise.UI.Admin.AddSinger" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div runat="server" id="Bigbox" style=" width:500px; height:500px;">
            <asp:Label ID="LebSingerName" runat="server" Text="Label">歌手名字:</asp:Label>
            <asp:TextBox ID="TxtSingerName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtSingerName" ErrorMessage="歌手名字不可以为空" EnableClientScript="false" ForeColor="Red"></asp:RequiredFieldValidator>
            <br  runat="server"/>
             <br  runat="server"/>
            <asp:Label ID="LebSingerClass" runat="server" Text="Label">歌手性别或者组合:</asp:Label>
            <asp:DropDownList ID="ListSingerClass" runat="server"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ListSingerClass" ErrorMessage="歌手性别或者组合不可以为空" EnableClientScript="false" ForeColor="Red"></asp:RequiredFieldValidator>
             <br  runat="server"/>
             <br  runat="server"/>
             <asp:Label ID="LebSingerRegion" runat="server" Text="Label">歌手属于地区:</asp:Label>
             <asp:DropDownList ID="ListSingerRegion" runat="server"></asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ListSingerRegion" ErrorMessage="歌手属于地区不可以为空" EnableClientScript="false" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
             <br />
             <asp:Label ID="LebHardImg" runat="server" Text="Label">歌手头像：</asp:Label>
            <asp:FileUpload ID="FileHardImg" runat="server" />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileHardImg" ErrorMessage="歌手头像不可以为空" EnableClientScript="false" ForeColor="Red"></asp:RequiredFieldValidator>
            <br  runat="server"/>
            <br  runat="server"/>
            <asp:Button ID="BtnMicSubmit" runat="server" Text="添加" OnClick="BtnMicSubmit_Click" />
        </div>
    </asp:Content>
