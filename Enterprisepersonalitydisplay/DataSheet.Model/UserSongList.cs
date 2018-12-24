using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
   public class UserSongList
    {
        //用户歌单
        public int SongId { get; set; }
        public string songName { get; set; }
        public int UserId { get; set; }
        public int MicId { get; set; }

    }
}
