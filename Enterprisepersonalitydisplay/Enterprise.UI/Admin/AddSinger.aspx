<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="AddSinger.aspx.cs" Inherits="Enterprise.UI.Admin.AddSinger" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div style="height:450px;background-image:url(../Imgs/lx1.jpg);overflow-y:hidden;background-size:100%;">
        <div runat="server" id="Bigbox" style="width:470px;height:400px;margin-left:110px;">
            <asp:Label ID="LebSingerName" runat="server" Text="Label" style="font-size:14px;">歌手名字：</asp:Label>
            <asp:TextBox ID="TxtSingerName" runat="server" style="box-sizing:border-box;width:140px;border-radius:10px;padding:0px 10px;border:1px solid black;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtSingerName" ErrorMessage="歌手名字不可以为空" EnableClientScript="false" ForeColor="Red" style="font-size:13px;"></asp:RequiredFieldValidator>
            <br  runat="server"/>
            
            <asp:Label ID="LebSingerClass" runat="server" Text="Label" style="font-size:14px;">歌手性别或者组合：</asp:Label>
            <asp:DropDownList ID="ListSingerClass" runat="server"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ListSingerClass" ErrorMessage="歌手性别或者组合不可以为空" EnableClientScript="false" ForeColor="Red" style="font-size:13px;"></asp:RequiredFieldValidator>
             <br  runat="server"/>
             
             <asp:Label ID="LebSingerRegion" runat="server" Text="Label" style="font-size:14px;">歌手属于地区：</asp:Label>
             <asp:DropDownList ID="ListSingerRegion" runat="server"></asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ListSingerRegion" ErrorMessage="歌手属于地区不可以为空" EnableClientScript="false" ForeColor="Red" style="font-size:13px;"></asp:RequiredFieldValidator>
             <br />
             <br />
             <asp:Label ID="LebHardImg" runat="server" Text="Label" style="font-size:14px;">歌手头像：</asp:Label>
            <asp:FileUpload ID="FileHardImg" runat="server"/>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileHardImg" ErrorMessage="歌手头像不可以为空" EnableClientScript="false" ForeColor="Red" style="font-size:13px;margin-left:-80px;"></asp:RequiredFieldValidator>
            <br  runat="server"/>
            <asp:Button ID="BtnMicSubmit" runat="server" Text="添加" OnClick="BtnMicSubmit_Click" style="width:120px;height:30px;margin-left:40px;margin-top:10px;"/>
        </div>
            
    </div>
    </asp:Content>
