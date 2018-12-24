using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
    /// <summary>
    /// 用户收藏表
    /// </summary>
    public class UserCollect
    {
        /// <summary>
        /// 收藏Id
        /// </summary>
        public int CollectId { get; set; }
        /// <summary>
        /// 用户Id外键
        /// </summary>
        public int UserId { get; set; }
        /// <summary>
        /// 音乐Id外键
        /// </summary>
        public int MicId { get; set; } 

    }
}
