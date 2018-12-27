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
        public static List<ViewMicsuger> query(string condition)
        {
            return MusicCRUD_F.query(condition);
        }

        public static List<ViewMicsuger> PlaySong()
        {
            return MusicCRUD_F.PlaySong();
        }
    }
}
