using DataSheet.Model;
using System;
using System.Collections;
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
        public static List<ArrayList> query(string condition)
        {
            //音乐信息表对应的音乐信息类
           
            //参数化查询
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter ("@MicName",condition),
                new SqlParameter("@SingerName",condition)
            };


            string sql = "select m.MicId,m.MicImg,m.MicName,m.MIcPlayCount,m.MicRegion,m.MicSignTime,m.MicSRc,ms.StyleName,s.SingerName   from MusicInfo m,SingerInfo s,MusicStyleInfo ms where m.SingerId = s.SingerId and m.StyleId = ms.StyleId and m.MicName like '%'+@MicName+'%' or s.SingerName like '%'+@SingerName+'%'";
            DataTable table = DBHelpe.SelectDB(sql, false,paras);
            List<ArrayList> list = new List<ArrayList>();
            foreach (DataRow item in table.Rows)
            {
                list.Add(
                    new ArrayList {
                        item[0],
                        item[1],
                        item[2],
                        item[3],
                        item[4],
                        item[5],
                        item[6],
                        item[7],
                        item[8]
                    }
                    );

            }


            return list;
        }

    }
}
