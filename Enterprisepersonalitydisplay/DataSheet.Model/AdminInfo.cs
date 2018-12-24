using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
   public  class AdminInfo
    {
        //管理员信息表
       public int AdminId { get; set; }      //管理员Id
       public string AdminUser { get; set; } //管理员名
       public string AdminPwd { get; set; }  //管理员密码
       public string AdminName { get; set; } //真实姓名
    }
}
