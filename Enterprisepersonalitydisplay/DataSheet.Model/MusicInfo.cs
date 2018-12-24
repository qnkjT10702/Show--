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
        public int MicId { get; set; }
        public string MicName { get; set; }
        public string MicImg { get; set;  }
        public int  SingerId { get; set; }
        public int StyleId { get; set; }
        public string MicRegion { get; set; }
        public int MicPlayCount { get; set; }
        public string MicSignTime { get; set; }
        public int CollectCount { get; set; }
        public int MicSRc { get; set; }

    }
}
