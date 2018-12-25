using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DataSheetDAL
{
    public class MusicCRUD
    { 
     /// <summary>
    /// 
    /// </summary>
    /// <returns>返回音乐风格表所有列</returns>
        public static DataTable SelectMicStyle()
        {
            string sql = "select * from MusicStyleInfo";
            return DBHelpe.SelectDB(sql, false);
        }
        public static DataTable SelectSingerInfo()
        {
            string sql = "select * from SingerInfo";
            return DBHelpe.SelectDB(sql, false);
        }
        public static bool AddMusic()
        {

        }
    }
}
