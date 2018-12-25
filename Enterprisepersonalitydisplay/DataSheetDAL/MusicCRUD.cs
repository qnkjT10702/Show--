using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheetDAL
{
    public class MusicCRUD
    {
        /// <summary>
        /// 查询音乐风格表里面的所有列
        /// </summary>
        /// <returns>返回值：是DataTable类型</returns>
        public static DataTable SelectMicStyle()
        {
            string sql = "select * from MusicStyleInfo";
             return  DBHelpe.SelectDB(sql, false);
        } 
    }
}
