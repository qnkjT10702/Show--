(function() {
    var index = {
        init: function() {
            this.event();
        },
        event: function() {
            // 到 注册
            base.getEle('toRegister')[0].onclick = function() {
                base.getEle('register_section')[0].classList.remove('hidden');
                base.getEle('login_section')[0].classList.add('hidden');
            };

            // 到 登入
            base.getEle('toLogin')[0].onclick = function() {
                base.getEle('login_section')[0].classList.remove('hidden');
                base.getEle('register_section')[0].classList.add('hidden');
            };

            // 登入 功能实现
            base.getEle('login_btn')[0].onclick = function() {
                var form_name_value = base.getEle('form_name_value')[0].value;
                var form_pwd_value = base.getEle('form_pwd_value')[0].value;
				
                var checkName = base.checkName(form_name_value);
                if(!checkName.flag) {// 如果用户名不匹配
                    base.getEle('form_info_text')[0].classList.remove('hidden');
                    base.getEle('form_info_text_tip')[0].innerHTML = checkName.tip;
                    return false;
                }
                var checkPwd = base.checkPwd(form_pwd_value);
                if(!checkPwd.flag) {// 如果用密码不匹配
                    base.getEle('form_info_text')[0].classList.remove('hidden');
                    base.getEle('form_info_text_tip')[0].innerHTML = checkPwd.tip;
                    return false;
                }
                // 如果格式正确, 校验有效性
                var userInfo = localStorage.getItem('userInfo');
                if(userInfo) {
                    userInfo = JSON.parse(userInfo);
                    userInfo.forEach(function(value) {
                        if(value.name == form_name_value && value.pwd == form_pwd_value) {
                            base.getEle('form_info_text')[0].classList.add('hidden');
                            alert('登入成功');
                        }
                    });
                   /* base.getEle('form_info_text')[0].classList.remove('hidden');
                    base.getEle('form_info_text_tip')[0].innerHTML = '您的账号密码不正确, 请检查';*/
                }else {
                    base.getEle('form_info_text')[0].classList.remove('hidden');
                    base.getEle('form_info_text_tip')[0].innerHTML = '您的账号密码不正确, 请检查';
                }
            };

            // 注册 功能实现
            base.getEle('reg_btn')[0].onclick = function() {
                var form_name_value = base.getEle('form_name_value')[1].value;
                var form_mail_value = base.getEle('form_mail_value')[0].value;
                var form_pwd_value = base.getEle('form_pwd_value')[1].value;
                var form_pwdc_value = base.getEle('form_pwdc_value')[0].value;
                var form_sex_value=base.getEle('form_sex_value')[0].value;
                var checkName = base.checkName(form_name_value);
                if(!checkName.flag) {// 如果用户名不匹配
                    base.getEle('form_info_text')[1].classList.remove('hidden');
                    base.getEle('form_info_text_tip')[1].innerHTML = checkName.tip;
                    return false;
                }
                var checkPwd = base.checkPwd(form_pwd_value);
                if(!checkPwd.flag) {// 如果用密码不匹配
                    base.getEle('form_info_text')[1].classList.remove('hidden');
                    base.getEle('form_info_text_tip')[1].innerHTML = checkPwd.tip;
                    return false;
                }
                var checkMail = base.checkMail(form_mail_value);
                if(!checkMail.flag) {// 如果邮箱不匹配
                    base.getEle('form_info_text')[1].classList.remove('hidden');
                    base.getEle('form_info_text_tip')[1].innerHTML = checkMail.tip;
                    return false;
                }

                if(form_pwd_value != form_pwdc_value) {
                    base.getEle('form_info_text')[1].classList.remove('hidden');
                    base.getEle('form_info_text_tip')[1].innerHTML = '两次密码输入不一致, 请检查';
                    return false;
                }
                
                if (document.getElementById("ContentPlaceHolder1_form_sex_confirm_0").checked == false && document.getElementById("ContentPlaceHolder1_form_sex_confirm_0").checked==false){
                	base.getEle('form_info_text')[1].classList.remove('hidden');
                	 base.getEle('form_info_text_tip')[1].innerHTML ="未选中性别";
                    return false;
                }

                // 如果格式正确, 存储信息
                
            }
        }
    };
    index.init();
})();