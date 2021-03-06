﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="AddMusic.aspx.cs" Inherits="Enterprise.UI.Admin.AddMusic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            $('#imgBtn').click(function () {
                $('.fileImg').click();
            });
            $('.fileImg').change(function () {
                $('.b1').click();
            })
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow:hidden;background-image:url(../Imgs/lx6.jpg);background-size:100% 100%;width:100%;height:700px;">
        <div id="Bigbox" style="position:relative;left:475px;top:80px;width:500px;height:520px;overflow-y:hidden;background-color:white;opacity:0.6;padding-top:65px;box-sizing:border-box;">
            <asp:Label ID="LebMicName" runat="server" Text="Label" style="font-size:14px;margin-left:140px;">歌曲名字:</asp:Label>
            <asp:TextBox ID="TxtMicName" runat="server" style="box-sizing:border-box;padding:0px 10px;width:150px;margin-left:10px;height:20px;border-radius:10px;border:1px solid black;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="#ff3300" ControlToValidate="TxtMicName" ErrorMessage="歌曲名字不可以为空" EnableClientScript="false" style="font-size:13px;"></asp:RequiredFieldValidator>
            <br  runat="server"/>   
            <asp:Label ID="LebMicImg" runat="server" Text="Label" style="font-size:14px;margin-left:140px;">歌曲封面:</asp:Label>
            <div id="imgBtn" style="width:216px;height:79px;border:double 2px black; position:relative;top:0px;left:149px;">
                <asp:Image ID="MicImageBg" Width="100%" Height="100%" runat="server" />
            </div>
            <asp:FileUpload ID="FileMicImg" CssClass="fileImg" style="display:none;" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="#ff3300" ControlToValidate="FileMicImg" ErrorMessage="歌曲封面不可以为空" EnableClientScript="false" style="font-size:13px;margin-left:200px;"></asp:RequiredFieldValidator>

            
             <br  runat="server"/>
             <asp:Label ID="LebSingerId" runat="server" Text="Label" style="font-size:14px;margin-left:140px;">歌曲风格:</asp:Label>
            <asp:DropDownList ID="ListStyleId" runat="server" style="height:20px;font-size:13px;"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ForeColor="#ff3300"  ControlToValidate="ListStyleId" ErrorMessage="歌曲风格不可以为空" EnableClientScript="false" style="font-size:13px;"></asp:RequiredFieldValidator>
             <br />
             <br />
             <asp:Label ID="LebStyleId" runat="server" Text="Label" style="font-size:14px;margin-left:140px;">歌手ID:</asp:Label>
            <asp:DropDownList ID="ListSingerId" runat="server" style="height:20px;font-size:13px;" ></asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ForeColor="#ff3300" ControlToValidate="ListSingerId" ErrorMessage="歌手不可以为空" EnableClientScript="false" style="font-size:13px;"></asp:RequiredFieldValidator>
            <br  runat="server"/>
            <asp:Label ID="LebMicRegion" runat="server" Text="Label" style="font-size:14px;margin-left:140px;">歌曲地区:</asp:Label>
            <asp:DropDownList ID="ListMicRegion" runat="server" style="height:20px;font-size:13px;"></asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"   ForeColor="#ff3300" ControlToValidate="ListMicRegion" ErrorMessage="歌曲地区不可以为空" EnableClientScript="false" style="font-size:13px;"></asp:RequiredFieldValidator>
            <br  runat="server"/>
            <asp:Label ID="Label1" runat="server" Text="Label" style="font-size:14px;margin-left:140px;">歌曲路径:</asp:Label>
            <asp:FileUpload ID="FileMicSRc" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"   ForeColor="#ff3300" ControlToValidate="FileMicSRc" ErrorMessage="歌曲路径不可以为空" EnableClientScript="false" style="font-size:13px;margin-left:-80px;"></asp:RequiredFieldValidator>
            <br  runat="server"/>
            <br />
            <asp:Button ID="BtnMicSubmit" runat="server" Text="添加" OnClick="BtnMicSubmit_Click" style="width:120px;height:30px;margin-left:180px;"/>
            <br  runat="server"/>
            <asp:Button ID="Button1" CssClass="b1" style="display:none" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
       </div>     
</asp:Content>
