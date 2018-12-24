using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
    public class UserInfo
    {
        //用户信息表
        public int UserId { get; set; }        //用户id
        public string UserName { get; set; }  //用户名
        public string UserPwd { get; set;}  //用户密码
        public int  UserAge { get; set;}    //用户年龄
        public string UserSex { get; set; } //性别
        public string UserEmall { get; set; } //qq邮箱
        public string HeadImg { get; set; } //头像
    }
}
