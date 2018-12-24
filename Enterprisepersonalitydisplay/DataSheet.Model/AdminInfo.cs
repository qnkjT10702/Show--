using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
    /// <summary>
    /// 管理员信息表
    /// </summary>
    public class AdminInfo
    {     
        /// <summary>
        /// 管理员Id
        /// </summary>
        public int AdminId { get; set; }
        /// <summary>
        /// 管理员名
        /// </summary>
        public string AdminUser { get; set; }
        /// <summary>
        /// 管理员密码
        /// </summary>
        public string AdminPwd { get; set; }
        /// <summary>
        /// 真实姓名
        /// </summary>
        public string AdminName { get; set; }
    }
}
