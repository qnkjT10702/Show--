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
        public static List<ViewMiicSuger> query(string condition)
        {
            //音乐信息表对应的音乐信息类
           
            //参数化查询
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter ("@MicName",condition),
                new SqlParameter("@SingerName",condition)
            };


            string sql = "select m.MicId,m.MicImg,m.MicName,m.MIcPlayCount,m.MicRegion,m.MicSignTime,m.MicSRc,ms.StyleName,s.SingerName   from MusicInfo m,SingerInfo s,MusicStyleInfo ms where m.SingerId = s.SingerId and m.StyleId = ms.StyleId and (m.MicName like '%'+@MicName+'%' or s.SingerName like '%'+@SingerName+'%')";
            DataTable table = DBHelpe.SelectDB(sql, false,paras);
            List<ViewMiicSuger> list = new List<ViewMiicSuger>();
            foreach (DataRow item in table.Rows)
            {
                list.Add(new ViewMiicSuger {
                        MicId = Convert.ToInt32(item["MicId"]),
                        MicImg = item["MicImg"].ToString(),
                        MicName = item["MicName"].ToString(),
                        MicPlayCount =Convert.ToInt32(item["MIcPlayCount"]),
                        MicRegion = item["MicRegion"].ToString(),
                        MicSignTime = item["MicSignTime"].ToString(),
                        MicSRc = item["MicSRc"].ToString(),
                        StyleName = item["StyleName"].ToString(),
                        SingerName = item["SingerName"].ToString()
                });
            }
            return list;
        }

    }
}
