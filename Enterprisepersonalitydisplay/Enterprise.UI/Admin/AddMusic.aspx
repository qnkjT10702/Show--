<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="AddMusic.aspx.cs" Inherits="Enterprise.UI.Admin.AddMusic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
            <asp:Label ID="LebMicName" runat="server" Text="Label">歌曲名字:</asp:Label>
            <asp:TextBox ID="TxtMicName" runat="server"></asp:TextBox>
            <br  runat="server"/>
             <br  runat="server"/>
            <asp:Label ID="LebMicImg" runat="server" Text="Label">歌曲封面:</asp:Label>
            <asp:FileUpload ID="FileMicImg" runat="server" />
             <br  runat="server"/>
              <br  runat="server"/>
             <asp:Label ID="LebSingerId" runat="server" Text="Label">歌手ID:</asp:Label>
            <asp:ListBox ID="ListSingerId" runat="server"></asp:ListBox>
             <br />
             <br />
             <asp:Label ID="LebStyleId" runat="server" Text="Label">歌曲风格:</asp:Label>
            <asp:ListBox ID="ListStyleId" runat="server"></asp:ListBox>
            <br  runat="server"/>
            <br  runat="server"/>
            <asp:Label ID="LebMicRegion" runat="server" Text="Label">歌曲地区:</asp:Label>
            <asp:TextBox ID="TxtMicRegion" runat="server"></asp:TextBox>
            <br  runat="server"/>
             <br  runat="server"/>
            <asp:Label ID="LebMicPlayCount" runat="server" Text="Label">音乐点击播放量:</asp:Label>
            <asp:TextBox ID="TxtMicPlayCount" runat="server"></asp:TextBox>
            <br  runat="server"/>
             <br  runat="server"/>
            <asp:Label ID="LebMicSignTime" runat="server" Text="Label">上架时间:</asp:Label>
            <asp:TextBox ID="TxtMicSignTime" runat="server"></asp:TextBox>
             <br  runat="server"/>
             <br  runat="server"/>
            <asp:Label ID="LebCollectCount" runat="server" Text="Label">歌曲收藏量:</asp:Label>
            <asp:TextBox ID="TxtCollectCount" runat="server"></asp:TextBox>
            <br  runat="server"/>
            <br  runat="server"/>
            <asp:Label ID="Label1" runat="server" Text="Label">歌曲路径:</asp:Label>
            <asp:FileUpload ID="FileMicSRc" runat="server" />
            <br  runat="server"/>
            <br  runat="server"/>
            <asp:Button ID="BtnMicSubmit" runat="server" Text="添加" OnClick="BtnMicSubmit_Click" />
</asp:Content>
