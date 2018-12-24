using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
    /// <summary>
    /// 用户信息表
    /// </summary>
    public class UserInfo
    {
        /// <summary>
        /// 用户id
        /// </summary>
        public int UserId { get; set; }
        /// <summary>
        /// 用户名
        /// </summary>
        public string UserName { get; set; }
        /// <summary>
        /// 用户密码
        /// </summary>
        public string UserPwd { get; set;}
        /// <summary>
        /// 用户年龄
        /// </summary>
        public int  UserAge { get; set;}
        /// <summary>
        /// 性别
        /// </summary>
        public string UserSex { get; set; }
        /// <summary>
        /// qq邮箱
        /// </summary>
        public string UserEmall { get; set; }
        /// <summary>
        /// 头像
        /// </summary>
        public string HeadImg { get; set; } 
    }
}
