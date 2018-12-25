<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="AddMusic.aspx.cs" Inherits="Enterprise.UI.Admin.AddMusic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
            <asp:Label ID="LebMicName" runat="server" Text="Label">歌曲名字:</asp:Label>
            <asp:TextBox ID="TxtMicName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtMicName" ErrorMessage="歌曲名字不可以为空" EnableClientScript="false"></asp:RequiredFieldValidator>
            <br  runat="server"/>
             <br  runat="server"/>
            <asp:Label ID="LebMicImg" runat="server" Text="Label">歌曲封面:</asp:Label>
            <asp:FileUpload ID="FileMicImg" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileMicImg" ErrorMessage="歌曲封面不可以为空" EnableClientScript="false"></asp:RequiredFieldValidator>
             <br  runat="server"/>
              <br  runat="server"/>
             <asp:Label ID="LebSingerId" runat="server" Text="Label">歌曲风格:</asp:Label>
            <asp:ListBox ID="ListStyleId" runat="server"></asp:ListBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ListStyleId" ErrorMessage="歌曲风格不可以为空" EnableClientScript="false"></asp:RequiredFieldValidator>
             <br />
             <br />
             <asp:Label ID="LebStyleId" runat="server" Text="Label">歌手ID:</asp:Label>
            <asp:ListBox ID="ListSingerId" runat="server"></asp:ListBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ListSingerId" ErrorMessage="歌手不可以为空" EnableClientScript="false"></asp:RequiredFieldValidator>
            <br  runat="server"/>
            <br  runat="server"/>
            <asp:Label ID="LebMicRegion" runat="server" Text="Label">歌曲地区:</asp:Label>
             <asp:ListBox ID="ListMicRegion" runat="server"></asp:ListBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ListMicRegion" ErrorMessage="歌曲地区不可以为空" EnableClientScript="false"></asp:RequiredFieldValidator>
            <br  runat="server"/>
             <br  runat="server"/>
          
            <asp:Label ID="Label1" runat="server" Text="Label">歌曲路径:</asp:Label>
            <asp:FileUpload ID="FileMicSRc" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileMicSRc" ErrorMessage="歌曲路径不可以为空" EnableClientScript="false"></asp:RequiredFieldValidator>
            <br  runat="server"/>
            <br  runat="server"/>
            <asp:Button ID="BtnMicSubmit" runat="server" Text="添加" OnClick="BtnMicSubmit_Click" />
 
</asp:Content>
