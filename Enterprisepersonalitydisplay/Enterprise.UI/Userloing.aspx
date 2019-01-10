<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userloing.aspx.cs" Inherits="Enterprise.UI.Userloing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/base.css" rel="stylesheet" />
<link href="css/index.css" rel="stylesheet" />
    
    <script src="scripts/jquery-3.3.1.js"></script>
    <script>
        $(function () {
            $('#LoginEnroll').css({ backgroundColor: '#fdad02' });
            $('#LoginEnroll a').css({ color: '#4A4A4A' });
        })
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%-- <asp:label id="action" class="hidden" runat="server" text="1"></asp:label>--%>
      <input type="text" id="actionName" class="hidden" name="actionName" value="1" />
      <div class="viewport">
         
        <!-- register_section -->
        <div class="section register_section hidden">
            <ul class="form_box">
                <li class="form_item form_title">用户登录</li>
                <li class="form_item form_name">
                    <input class="form_name_value" type="text" placeholder="请输入用户名" runat="server" id="form_name_value_login">
                </li>
                <li class="form_item form_pwd">
                    <input class="form_pwd_value" type="password" placeholder="请输入密码" runat="server" id="form_pwd_value_login">
                </li>
                <li class="form_item form_info">
                    <p class="form_info_text hidden">提示: <span class="form_info_text_tip"></span></p>
                    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="Label2"></asp:Label>
                </li>
                <li class="form_item form_login form_btn">
                    <button class="login_btn" runat="server" id="Longin_btn" >登录</button>
                </li>
                <li class="form_item form_to form_login">
                    <p class="form_login_text">还没有有账号, 去<a class="toLogin" >注册</a></p>
                </li>
            </ul>
        </div>
        <!-- login_section -->
        <div class="section login_section">
            <ul class="form_box" accesskey="<">
                <li class="form_item form_title">用户注册</li>
                <li class="form_item form_name">
                    <input class="form_name_value" type="text" placeholder="请输入用户名" runat="server" id="form_name_value">
                </li>
                <li class="form_item form_mail">
                    <input class="form_mail_value" type="text" placeholder="请输入邮箱" runat="server" id="form_mail_value">
                </li>
                <li class="form_item form_pwd">
                    <input class="form_pwd_value" type="password" placeholder="请输入密码" runat="server" id="form_pwd_value">
                </li>
                <li class="form_item form_pwd_confirm">
                    <input class="form_pwdc_value" type="password" placeholder="请确认密码" runat="server">
                </li>
                
                <li class="form_item form_sex_confirm">
                	<input  class="form_sex_value" type="radio" name="sex" id="form_sex_confirm_0" runat="server"/>男
					<input  class="form_sex_value" type="radio" name="sex" id="form_sex_confirm_1"  runat="server"/>女
                </li>
                <li class="form_item form_info">
                    <p class="form_info_text hidden">提示: <span class="form_info_text_tip"></span></p>
                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="form_info_text  newhidden"></asp:Label>
                </li>
                <li class="form_item form_reg form_btn">
                    <button class="reg_btn" id="regBtn" runat="server">注册</button>
                </li>
                <li class="form_item form_to form_reg">
                    <p class="form_reg_text">已经有账号, 去<a class="toRegister" >登录</a></p>
                </li>
            </ul>
           
        </div>
    </div>
    <script src="js/base.js"></script>
    <script src="js/index.js"></script>
</asp:Content>
