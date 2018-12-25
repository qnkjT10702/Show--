using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
    /// <summary>
    /// 音乐信息表
    /// </summary>
    public class MusicInfo
    {
        /// <summary>
        /// 歌曲Id
        /// </summary>
        public int MicId { get; set; }
        /// <summary>
        /// 歌曲名
        /// </summary>
        public string MicName { get; set; }
        /// <summary>
        /// 歌曲封面
        /// </summary>
        public string MicImg { get; set; }
        /// <summary>
        /// 歌手Id外键
        /// </summary>
        public int  SingerId { get; set; }
        /// <summary>
        /// 歌曲风格
        /// </summary>
        public int StyleId { get; set; }
        /// <summary>
        /// 歌曲地区 
        /// </summary>
        public string MicRegion { get; set; }
        /// <summary>
        /// 音乐点击播放量
        /// </summary>
        public int MicPlayCount { get; set; }
        /// <summary>
        /// 上架时间
        /// </summary>
        public string MicSignTime { get; set; }

        /// <summary>
        /// 歌曲收藏量
        /// </summary>
        public int CollectCount { get; set; } 

    }
}
