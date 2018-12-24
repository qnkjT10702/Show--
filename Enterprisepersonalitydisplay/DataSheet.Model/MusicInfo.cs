using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
   public class MusicInfo
    {
        //音乐信息表
        public int MicId { get; set; }      //歌曲Id
        public string MicName { get; set; } //歌曲名
        public string MicImg { get; set; } //歌曲封面
        public int  SingerId { get; set; } //歌手Id外键
        public int StyleId { get; set; } //歌曲风格
        public string MicRegion { get; set; }  //歌曲地区 
        public int MicPlayCount { get; set; }  //音乐点击播放量
        public string MicSignTime { get; set; }//上架时间
        public int CollectCount { get; set; } //歌曲收藏量
    }
}
