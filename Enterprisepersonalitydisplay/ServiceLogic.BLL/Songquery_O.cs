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
        /// 查找用户名加用户邮箱
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public static List<UserInfo> LookupName(object userId)
        {
            return MusicCRUD_F.LookupName(userId);
        }

        /// <summary>
        /// 根据用户id 移出用户收藏表的id
        /// </summary>
        /// <param name="micName">歌曲名</param>
        /// <param name="singerName">歌手名</param>
        /// <param name="userId">用户id</param>
        /// <returns></returns>
        public static bool DeleteCollection(string MicId,object userId)
        {
            return MusicCRUD_F.DeleteCollection(MicId,userId);
        }
        
        /// <summary>
        /// 用户歌曲收藏功能
        /// </summary>
        /// <param name="micName"></param>
        /// <param name="singerName"></param>
        /// <returns></returns>
        public static bool SongCollection(string MicId,object UserId)
        {
            return MusicCRUD_F.SongCollection(MicId, UserId);
        }

        /// <summary>
        /// 编辑资料
        /// </summary>
        /// <param name="userId_s">用户id</param>
        /// <param name="user_Name">用户名</param>
        /// <param name="user_Mail">用户邮箱</param>
        /// <param name="user_OldPwd">用户旧密码</param>
        /// <param name="user_NewPwd">用户新密码</param>
        /// <param name="sigsqlpath">用户头像</param>
        /// <returns></returns>
        public static bool ChangeInfo(object UserId_s, string user_Name, string user_Mail, string user_OldPwd, string user_NewPwd,string User_sex)
        {
            return MusicCRUD_F.ChangeInfo(UserId_s, user_Name, user_Mail, user_OldPwd, user_NewPwd, User_sex);
        }

        /// <summary>
        /// 根据用户id 查询用户头像及用户名
        /// </summary>
        /// <param name="userId">用户id</param>
        /// <returns></returns>
        public static List<UserInfo> ShowUser(object userId)
        {
            return MusicCRUD_F.ShowUser(userId);
        }

        /// <summary>
        /// 我的音乐页面 个人音乐收藏功能
        /// </summary>
        /// <param name="userId">用户id</param>
        /// <returns></returns>
        public static List<ViewMicsuger> MicSearch(object userId)
        {
            return MusicCRUD_F.MicSearch(userId);
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
