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
        /// 根据歌手名字查找歌曲
        /// </summary>
        /// <param name="singerName">歌手名字</param>
        /// <returns></returns>
        public static List<ViewMicsuger> FindSong(string singerName)
        {
            return MusicCRUD_F.FindSong(singerName);
        }

        /// <summary>
        /// 歌曲查询
        /// </summary>
        /// <returns></returns>
        public static List<ViewMicsuger> PlaySong(string MicName, string SingerName)
        {
            return MusicCRUD_F.PlaySong(MicName, SingerName);
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
        /// <summary>
        /// 注册功能
        /// </summary>
        /// <param name="userInfo"></param>
        /// <returns></returns>
        public static bool AddUserInfo(UserInfo userInfo)
        {
            return MusicCRUD_F.AddUserInfo(userInfo);
        }

        /// <summary>
        /// 登录功能
        /// </summary>
        /// <param name="userInfo"></param>
        public static List<UserInfo> LoginUser(UserInfo userInfo)
        {
            return MusicCRUD_F.LoginUser(userInfo);
        }
    }
}
