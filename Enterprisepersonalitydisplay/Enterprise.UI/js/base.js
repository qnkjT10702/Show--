var base = {
    // 工具方法
    /**
     * 
     * @param {*} str id名或者类名
     * @param {*} type 获取的类型(ID, CLASS)
     */
    getEle: function(str, type) {
        type = type || 'CLASS';
        var ele = null;

        if(type == 'ID') {
            str = '#' + str;
            ele = document.querySelector(str);
        }else {
            str = '.' + str;
            ele = document.querySelectorAll(str);
        }
        return ele;
    },
    /**
     * 
     * @param {*} name 用户名
     */
    checkName: function(name) {
        var info = {
            flag: true,
            tip: ''
        };
        if(name.trim() == '') {
            // 校验是不是为空
            info.flag = false;
            info.tip = '请输入用户名'
        }else {
            // 校验格式
            var reg = /^\w{6,18}$/;
            if(!reg.test(name)) {
                info.flag = false;
                info.tip = '用户名为6到18位字母'
            }
        }
        return info;
    },
    /**
     * 
     * @param {*} pwd 密码
     */
    checkPwd: function(pwd) {
        var info = {
            flag: true,
            tip: ''
        };
        if(pwd.trim() == '') {
            // 校验是不是为空
            info.flag = false;
            info.tip = '请输入密码';
        }else {
            // 校验格式
            var reg = /^[a-zA-Z]{6,18}$/;
            if(!reg.test(pwd)) {
                info.flag = false;
                info.tip = '密码为至少6位的字母';
            }
        }
        return info;
    },
    /**
     * 
     * @param {*} mail 邮箱
     */
    checkMail: function(mail) {
        var info = {
            flag: true,
            tip: ''
        };
        if(mail.trim() == '') {
            // 校验是不是为空
            info.flag = false;
            info.tip = '请输入邮箱';
        }else {
            // 校验格式
            var reg = /^^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$$/;
            if(!reg.test(mail)) {
                info.flag = false;
                info.tip = '邮箱格式不正确';
            }
        }
        return info;
    },
};