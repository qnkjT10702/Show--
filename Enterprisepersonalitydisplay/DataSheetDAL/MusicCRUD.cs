using DataSheet.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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


        /// <summary>
        /// 查询音乐信息表里的点播量,用于排行版页面的查询
        /// </summary>
        /// <param name="condition"></param>
        public static bool query(string condition)
        {
            //音乐信息表对应的音乐信息类
            MusicInfo MusicInfo = new MusicInfo();
            //歌手信息表对应的歌手信息类
            Singerinfo Singer = new Singerinfo();
            //数量化查询
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter ("@SingerId",MusicInfo.SingerId ),
                new SqlParameter ("@MicName",MusicInfo.MicName),
                new SqlParameter("@SingerName",Singer.SingerName)
            };
            //暂时未写完
            string sql = "";
            return true;
        }
        
    }
}
