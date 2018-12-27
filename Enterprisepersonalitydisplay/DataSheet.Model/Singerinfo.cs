using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
    /// <summary>
    /// 歌手信息表
    /// </summary>
    public class Singerinfo
    {
        /// <summary>
        /// 歌手Id
        /// </summary>
        public int SingerId { get; set; }
        /// <summary>
        /// 歌手名字
        /// </summary>
        public string SingerName { get; set; }
        /// <summary>
        /// 歌手性别
        /// </summary>
        public string SingerClass { get; set; }
        /// <summary>
        /// 歌手属于的地区
        /// </summary>
        public string SingerRegion { get; set; }
        /// <summary>
        /// 歌手头像
        /// </summary>
        public string HardImg { get; set; } j
    }
}
