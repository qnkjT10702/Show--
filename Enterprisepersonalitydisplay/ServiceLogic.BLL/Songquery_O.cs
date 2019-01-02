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
        /// <summary>
        /// 歌曲查询
        /// </summary>
        /// <returns></returns>
        public static List<ViewMicsuger> PlaySong()
        {
            return MusicCRUD_F.PlaySong();
        }
        
        /// <summary>
        /// 根据条件查找
        /// </summary>
        /// <param name="sextext">歌手性别</param>
        /// <param name="styletext">音乐风格</param>
        /// <returns></returns>
        public static List<ViewMicsuger> RegionFind(string regiotext, string Sextext, string Styletext)
        {
            return MusicCRUD_F.RegionFind(regiotext,Sextext, Styletext);
        }
        
    }
}
