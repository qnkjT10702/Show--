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
            string sql = "select *from MusicStyleInfo";
            return DBHelpe.SelectDB(sql, false);
        }
        public static List<ViewMicsuger> Selectorder()
        {
            string sql = "select top 4* from MusicInfo m ,SingerInfo s where s.SingerId=m.SingerId order by m.CollectCount desc";
            DataTable table = DBHelpe.SelectDB(sql, false);
            List<ViewMicsuger> list = new List<ViewMicsuger>();
            foreach (DataRow row in table.Rows)
            {

                list.Add(new ViewMicsuger
                {
                    MicImg = row["MicImg"].ToString(),
                    MicName = row["MicName"].ToString(),
                    MicSRc = row["MicSRc"].ToString(),
                    MicId = Convert.ToInt32(row["MicId"]),
                    SingerName = row["SingerName"].ToString(),
                });
            }
            return list;
        }
        /// <summary>
        /// 热歌排行榜
        /// </summary>
        /// <returns>返回歌曲播放次数最高的前4歌曲信息</returns>
        public static List<ViewMicsuger> SelectHotMic()
        {
            string sql = "select top 4* from MusicInfo m ,SingerInfo s where s.SingerId=m.SingerId order by m.MIcPlayCount desc";
            DataTable table = DBHelpe.SelectDB(sql, false);
            List<ViewMicsuger> list = new List<ViewMicsuger>();
            foreach (DataRow row in table.Rows)
            {
                list.Add(new ViewMicsuger
                {
                    MicImg = row["MicImg"].ToString(),
                    MicName = row["MicName"].ToString(),
                    MicSRc = row["MicSRc"].ToString(),
                    MicId = Convert.ToInt32(row["MicId"]),
                    SingerName = row["SingerName"].ToString(),
                });
            }
            return list;
        }
        /// <summary>
        /// 欧美歌曲排行榜
        /// </summary>
        /// <returns>返回欧美歌曲前四的歌曲信息</returns>
        public static List<ViewMicsuger> SelectEuropeMic()
        {
            string sql = "select  top 4* from MusicInfo m , SingerInfo Sger where m.SingerId=Sger.SingerId and m.SingerId in (select Sger.SingerId from SingerInfo where Sger.SingerRegio='欧美') order by m.MIcPlayCount desc";
            DataTable table = DBHelpe.SelectDB(sql, false);
            List<ViewMicsuger> list = new List<ViewMicsuger>();
            foreach (DataRow row in table.Rows)
            {
                list.Add(new ViewMicsuger
                {
                    MicImg = row["MicImg"].ToString(),
                    MicName = row["MicName"].ToString(),
                    MicSRc = row["MicSRc"].ToString(),
                    MicId = Convert.ToInt32(row["MicId"]),
                    SingerName = row["SingerName"].ToString(),
                });
            }
            return list;
        }
        /// <summary>
        /// 日韩歌曲排行榜
        /// </summary>
        /// <returns>返回日韩歌曲排行榜前4</returns>
        public static List<ViewMicsuger> SelectReHanMic()
        {
            string sql = "select  top 4* from MusicInfo m , SingerInfo Sger where m.SingerId=Sger.SingerId and m.SingerId in (select Sger.SingerId from SingerInfo where Sger.SingerRegio='日本' or SingerRegio='韩国') order by m.MIcPlayCount desc";
            DataTable table = DBHelpe.SelectDB(sql, false);
            List<ViewMicsuger> list = new List<ViewMicsuger>();
            foreach (DataRow row in table.Rows)
            {
                list.Add(new ViewMicsuger
                {
                    MicImg = row["MicImg"].ToString(),
                    MicName = row["MicName"].ToString(),
                    MicSRc = row["MicSRc"].ToString(),
                    MicId = Convert.ToInt32(row["MicId"]),
                    SingerName = row["SingerName"].ToString(),
                });
            }
            return list;
        }
        /// <summary>
        /// 查询华语歌曲排行榜
        /// </summary>
        /// <returns>返回华语歌曲前4信息集合</returns>
        public static List<ViewMicsuger> SelectChineseMic()
        {
            string sql = "select  top 4* from MusicInfo m , SingerInfo Sger where m.SingerId=Sger.SingerId and m.SingerId in (select Sger.SingerId from SingerInfo where Sger.SingerRegio='华语') order by m.MIcPlayCount desc";
            DataTable table = DBHelpe.SelectDB(sql, false);
            List<ViewMicsuger> list = new List<ViewMicsuger>();
            foreach (DataRow row in table.Rows)
            {
                list.Add(new ViewMicsuger
                {
                    MicImg = row["MicImg"].ToString(),
                    MicName = row["MicName"].ToString(),
                    MicSRc = row["MicSRc"].ToString(),
                    MicId = Convert.ToInt32(row["MicId"]),
                    SingerName = row["SingerName"].ToString(),
                });
            }
            return list;
        }
        /// <summary>
        /// 查询新歌排行榜
        /// </summary>
        /// <returns>新歌曲信息集合</returns>
        public static List<ViewMicsuger> SelectNewMic()
        {
            string TimeMin = DateTime.Now.ToString();
            string TimeMax = DateTime.Now.AddDays(30).ToString();
            SqlParameter[] parameter = new SqlParameter[] {
                new SqlParameter("@TimeMin",TimeMin),
                new SqlParameter("@TimeMax",TimeMax)
            };
            string sql = "select  top 4* from MusicInfo m , SingerInfo Sger where m.SingerId=Sger.SingerId and m.MicSignTime between @TimeMin and @TimeMax order by m.MIcPlayCount desc";
            DataTable table = DBHelpe.SelectDB(sql, false, parameter);
            List<ViewMicsuger> list = new List<ViewMicsuger>();
            foreach (DataRow row in table.Rows)
            {
                list.Add(new ViewMicsuger
                {
                    MicImg = row["MicImg"].ToString(),
                    MicName = row["MicName"].ToString(),
                    MicSRc = row["MicSRc"].ToString(),
                    MicId = Convert.ToInt32(row["MicId"]),
                    SingerName = row["SingerName"].ToString(),
                });
            }
            return list;
        }

        public static bool query(string condition)
        {
            return false;
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

        public static List<ViewMicsuger> SelectMicinfo()
        {
            string sql = "select *from MusicInfo mu,SingerInfo Si where Si.SingerId=mu.SingerId  ";
            DataTable table = DBHelpe.SelectDB(sql, false);
            List<ViewMicsuger> list = new List<ViewMicsuger>();
            foreach (DataRow row in table.Rows)
            {

                list.Add(new ViewMicsuger
                {
                    MicImg = row["MicImg"].ToString(),
                    MicName = row["MicName"].ToString(),
                    MicSRc = row["MicSRc"].ToString(),
                    SingerName = row["SingerName"].ToString()
                });
            }
            return list;
        }
        /// <summary>
        /// 按歌曲风格分类歌曲
        /// </summary>
        /// <param name="Style">风格名称</param>
        /// <returns>按风格返回歌曲信息集合</returns>
        public static List<ViewMicsuger> SelectMicStyle(string Style)
        {
            SqlParameter[] para = new SqlParameter[] {
                new SqlParameter("@StyStr",Style),
            };
            string sql = "select *from MusicStyleInfo sty,MusicInfo m ,SingerInfo sger  where sty.StyleId=m.StyleId and sger.SingerId=m.SingerId and m.StyleId in(select sty.StyleId from MusicStyleInfo where sty.StyleName=@StyStr)";
            DataTable table = DBHelpe.SelectDB(sql, false,para);
            List<ViewMicsuger> list = new List<ViewMicsuger>();
            foreach (DataRow row in table.Rows)
            {

                list.Add(new ViewMicsuger
                {
                    MicImg = row["MicImg"].ToString(),
                    MicName = row["MicName"].ToString(),
                    MicSRc = row["MicSRc"].ToString(),
                    SingerName = row["SingerName"].ToString()
                });
            }
            return list;
        }
      
        /// <summary>
        /// 分页的存储过程
        /// </summary>
        /// <param name="pageIndex">第几页</param>
        /// <param name="pageSize">一页多少条</param>
        /// <param name="sort">排序字段</param>
        /// <param name="pageCount">一共多少页</param>
        /// <param name="where">条件默认1=1</param>
        /// <param name="isDesc">默认(升序)falese bool</param>
        /// <returns></returns>
        public static List<ViewMicsuger> SelectStyMusic(int pageIndex, int pageSize, string sort, out int pageCount, string where = "1=1", bool isDesc = false)
        {
            //方法  参数说明  那一页，一页多少条，排序字段，out参数由方法里面传出去（总共的返回条数），条件默认1=1永远为真， 是不是降序 默认不是
            if (isDesc)
            {
                //如果是降序
                sort = sort + " desc";
                //就给sort排序按照那一列排的列名加desc
            }

            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@tab","MuciSger"),
                new SqlParameter("@strFld","*"),
                new SqlParameter("@strWhere",where),
                new SqlParameter("@PageIndex",pageIndex),
                new SqlParameter("@PageSize",pageSize),
                new SqlParameter("@Sort",sort),
                new SqlParameter("@IsGetCount",1)
                //参数化查询里面的一些参数  分别是表名 ， 
                //查询表的所有，查询条件where，传入当前是第几页，
                //一页一共有多少条，排序字段， 是否查询所有的条数还是表里面的内容（1表示计数，0查表）
            };

            pageCount = (int)DBHelpe.SelectDB("Common_PageListMic", true, paras).Rows[0][0];
            //在  return 之前必须 给 out 类型的参数赋值 就是查询那个 存储过程 是不是为存储过程为true 会返回一个表 然后.Rows(行数【0】【0】的第一行第一列)
            //就会是返回总共条数了 在把这个转换成int类型 
            pageCount = (pageCount + (pageSize - 1)) / pageSize;
            //拿到总共的条数那么接下来要求的就是一共多少页了
            //  =总共条数+（一页多少条-1）
            //（6 +（5-1））/ 5 
            paras = new SqlParameter[]
            {
                new SqlParameter("@tab","MuciSger"),
                new SqlParameter("@strFld","*"),
                new SqlParameter("@strWhere",where),
                new SqlParameter("@PageIndex",pageIndex),
                new SqlParameter("@PageSize",pageSize),
                new SqlParameter("@Sort",sort),
                new SqlParameter("@IsGetCount",0)
           };
            //改变参数化查询 最后一个参数查的就是 表的记录
            paras[6].Value = 0;
            //因为第六个没有赋值成功所以就去手动赋值
            List<ViewMicsuger> views = new List<ViewMicsuger>();
            DataTable table = DBHelpe.SelectDB("Common_PageListMic", true, paras);
            //就返回查询的表  再要返回集合的形式
            foreach (DataRow row in table.Rows)
            {
                views.Add(new ViewMicsuger
                {
                    MicImg = row["MicImg"].ToString(),
                    MicSRc = row["MicSRc"].ToString(),
                    MicName = row["MicName"].ToString(),
                    SingerName = row["SingerName"].ToString(),
                    StyleName = row["StyleName"].ToString(),
                });
            }
            return views;
        }
    }

   
}