using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
    /// <summary>
    /// 用户歌单
    /// </summary>
    public class UserSongList
    {
        /// <summary>
        /// 用户歌单Id
        /// </summary>
        public int SongId { get; set; }
        /// <summary>
        /// 用户姓名
        /// </summary>
        public string songName { get; set; }
        /// <summary>
        /// 用户Id
        /// </summary>
        public int UserId { get; set; } 
        /// <summary>
        /// 
        /// </summary>
        public int MicId { get; set; } 

    }
}
