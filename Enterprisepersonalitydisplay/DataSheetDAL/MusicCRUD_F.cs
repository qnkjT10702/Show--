using DataSheet.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheetDAL
{
    public class MusicCRUD_F
    {
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
