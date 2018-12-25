using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DataSheet.Model;
using System.Data.SqlClient;


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

        public static bool query(string condition)
        {
        }

        public static DataTable SelectSingerInfo()
        {
            string sql = "select * from SingerInfo";
            return DBHelpe.SelectDB(sql, false);
        }
        /// <summary>
        /// 向数据库添加歌曲信息
        /// </summary>
        /// <param name="music">数据类型是音乐信息类</param>
        /// <returns></returns>
        public static bool AddMusic(MusicInfo music)
        {
            SqlParameter[] parameter = new SqlParameter[]
            {
                new SqlParameter("@MicName",music.MicName),
                new SqlParameter("@MicRegion",music.MicRegion),
                new SqlParameter("@StyleId",music.StyleId),
                new SqlParameter("@SingerId",music.SingerId),
                new SqlParameter("@MicSRc",music.MicSRc),
                new SqlParameter("@MicImg",music.MicImg)
            };
            string sql = "insert into MusicInfo(MicName,MicImg,MicRegion,SingerId,StyleId,MicSRc)values(@MicName,@MicImg,@MicRegion,@SingerId,@StyleId,@MicSRc)";
            return DBHelpe.ExecuteAdater(sql, false, parameter) == 1;
        }


        /// <summary>
        /// 向数据库添加歌手信息
        /// </summary>
        /// <param name="music">数据类型是歌手信息类</param>
        /// <returns></returns>
        public static bool AddSinger(Singerinfo singer)
        {
            SqlParameter[] parameter = new SqlParameter[]
            {
                new SqlParameter("@SingerName",singer.SingerName),
                new SqlParameter("@SingerClass",singer.SingerClass),
                new SqlParameter("@SingerRegion",singer.SingerRegion),
                new SqlParameter("@HardImg",singer.HardImg)
            };
            string sql = "insert into SingerInfo values(@SingerName,@SingerClass,@SingerRegion,@HardImg)";
            return DBHelpe.ExecuteAdater(sql, false, parameter) == 1;
        }
    }
}