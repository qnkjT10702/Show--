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
    public class MusicCRUD_F
    {
        public static List<MusicInfo> query(string condition)
        {
            //音乐信息表对应的音乐信息类
           
            //参数化查询
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter ("@MicName",condition),
                new SqlParameter("@SingerName",condition)
            };
            
            string sql = "select * from MusicInfo m,SingerInfo s where m.SingerId=s.SingerId and m.MicName like '%@MicName%' or s.SingerName like '%@SingerName%'";
            DataTable table = DBHelpe.SelectDB(sql, false, paras);
            List<MusicInfo> tab = new List<MusicInfo>();
            foreach (DataRow item in table.Rows)
            {
                tab.Add(new MusicInfo
                {
                    MicId = Convert.ToInt32(item["MicId"]),
                    MicName = item["MicName"].ToString(),
                });

            }
            return tab;
        }

    }
}
