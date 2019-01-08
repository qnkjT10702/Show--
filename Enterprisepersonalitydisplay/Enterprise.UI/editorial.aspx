<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="editorial.aspx.cs" Inherits="Enterprise.UI.editorial" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/base.css" rel="stylesheet" />
    <link href="css/index2.css" rel="stylesheet" />
    <div class="newviewport">
	 		<!--编辑资料-->
		<div class="newsection newlogin_section">
            <ul class="newform_box">
                <li class="newform_item newform_title">编辑资料</li>
                <li class="newform_item newform_name">
                    <input class="newform_name_value" type="text" placeholder="请输入用户名" runat="server"/>
                </li>
                <li class="newform_item newform_mail">
                    <input class="newform_mail_value" type="text" placeholder="请输入邮箱" runat="server"/>
                </li>
                <li class="newform_item newform_pwd">
                    <input class="newform_pwd_value" type="password" placeholder="请输入原密码" runat="server"/>
                </li>
                <li class="newform_item newform_pwd_confirm">
                    <input class="newform_pwdc_value" type="password" placeholder="请输入新密码" runat="server"/>
                </li>
                
                <li class="newform_item newform_pwd_confirm_1">
                    <input class="newform_newpwdc_value" type="password" placeholder="再次输入新密码" runat="server"/>
                </li>
                
                <li class="newform_item newform_sex_confirm">
                	<input  class="newform_sex_value" type="radio" name="sex" id="newform_sex_confirm_0" runat="server"/>男
					<input  class="newform_sex_value" type="radio" name="sex" id="newform_sex_confirm_1" runat="server"/>女
                </li>
                <li>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" EnableClientScript="false" ControlToValidate="FileUpload1" runat="server" ErrorMessage="头像不可以为空"></asp:RequiredFieldValidator>
                </li>
                <li class="newform_item newform_info">
                    <p class="newform_info_text hidden">提示: <span class="newform_info_text_tip"></span></p>
                </li>
                <li class="newform_item newform_reg newform_btn">
                    <button class="newreg_btn" runat="server" >确认修改</button>
                </li>
                <li class="newform_item newform_to newform_reg">
                    <p class="newform_reg_text"><a class="newtoRegister" href="HomePage.aspx">返回</a></p>
                </li>
            </ul>
        </div>
    </div>
    <script src="js/base.js"></script>
    <script src="js/index2.js"></script>
</asp:Content>

