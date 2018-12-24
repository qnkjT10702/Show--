using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
   public class UserCollect
    {
        //用户收藏表
        public int CollectId { get; set; } //收藏Id
        public int UserId { get; set; } //用户Id外键
        public int MicId { get; set; } //音乐Id外键

    }
}
