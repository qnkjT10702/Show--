using DataSheet.Model;
using DataSheetDAL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiceLogic.BLL
{
    public class Songquery_O
    {
        /// <summary>
        /// 排行版查询
        /// </summary>
        /// <param name="condition">传过来的参数</param>
<<<<<<< HEAD
        public static List<ViewMicSuger> query(string condition)
=======
        public static List<ViewMicsuger> query(string condition)
>>>>>>> ae9749c4e8ba5fd81193398e7677b5341dc68d6d
        {
            return MusicCRUD_F.query(condition);
        }

        public static List<ViewMicsuger> PlaySong()
        {
            return MusicCRUD_F.PlaySong();
        }
    }
}
