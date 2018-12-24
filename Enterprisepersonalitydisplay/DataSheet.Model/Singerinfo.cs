using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
   public class Singerinfo
    {
        //歌手信息表
        public int SingerId { get; set; } //歌手Id
        public string SingerName { get; set; } //歌手名字
        public string SingerClass { get; set; } //歌手性别
        public string SingerRegion { get; set; } //歌手属于的地区
        public string HardImg { get; set; } //歌手头像
    }
}
