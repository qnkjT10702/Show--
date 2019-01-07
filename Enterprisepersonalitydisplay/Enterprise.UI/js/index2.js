(function() {
    var index = {
        init: function() {
            this.event();
        },
        event: function() {

            // 注册 功能实现
            base.getEle('newreg_btn')[0].onclick = function() {
                var newform_name_value = base.getEle('newform_name_value')[0].value;
                var newform_mail_value = base.getEle('newform_mail_value')[0].value;
                var newform_pwd_value = base.getEle('newform_pwd_value')[0].value;
                var newform_pwdc_value = base.getEle('newform_pwdc_value')[0].value;
                var newform_newpwdc_value = base.getEle('newform_newpwdc_value')[0].value;
                var newform_sex_value=base.getEle('newform_sex_value')[0].value;
                var checkName = base.checkName(newform_name_value);
                if(!checkName.flag) {// 如果用户名不匹配
                    base.getEle('newform_info_text')[0].classList.remove('hidden');
                    base.getEle('newform_info_text_tip')[0].innerHTML = checkName.tip;
                    return false;
                }
                var checkPwd = base.checkPwd(newform_pwd_value);
                if(!checkPwd.flag) {// 如果用密码不匹配
                    base.getEle('newform_info_text')[0].classList.remove('hidden');
                    base.getEle('newform_info_text_tip')[0].innerHTML = checkPwd.tip;
                    return false;
                }
                var checkPwd = base.checkPwd(newform_pwdc_value);
                if(!checkPwd.flag) {// 如果用密码不匹配
                    base.getEle('newform_info_text')[0].classList.remove('hidden');
                    base.getEle('newform_info_text_tip')[0].innerHTML = checkPwd.tip;
                    return false;
                }
                var checkMail = base.checkMail(newform_mail_value);
                if(!checkMail.flag) {// 如果邮箱不匹配
                    base.getEle('newform_info_text')[0].classList.remove('hidden');
                    base.getEle('newform_info_text_tip')[0].innerHTML = checkMail.tip;
                    return false;
                }

                if(newform_pwdc_value != newform_newpwdc_value) {
                    base.getEle('newform_info_text')[0].classList.remove('hidden');
                    base.getEle('newform_info_text_tip')[0].innerHTML = '两次密码输入不一致, 请检查';
                    return false;
                }
                
                if (document.getElementById("head_newform_sex_confirm_0").checked == false && document.getElementById("head_newform_sex_confirm_1").checked==false){
                	base.getEle('newform_info_text')[0].classList.remove('hidden');
                	 base.getEle('newform_info_text_tip')[0].innerHTML ="未选中性别";
                    return false;
                }

                // 如果格式正确, 存储信息
                
            }
        }
    };
    index.init();
})();