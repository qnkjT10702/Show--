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


        /// <summary>
        /// 搜索功能
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public static List<ViewMicsuger> query(string condition)

        {
            //音乐信息表对应的音乐信息类

            //参数化查询
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter ("@MicName",condition),
                new SqlParameter("@SingerName",condition)
            };


            string sql = "select m.MicId,m.MicImg,m.MicName,m.MIcPlayCount,m.MicRegion,m.MicSignTime,m.MicSRc,ms.StyleName,s.SingerName   from MusicInfo m,SingerInfo s,MusicStyleInfo ms where m.SingerId = s.SingerId and m.StyleId = ms.StyleId and (m.MicName like '%'+@MicName+'%' or s.SingerName like '%'+@SingerName+'%')";
            DataTable table = DBHelpe.SelectDB(sql, false, paras);
            List<ViewMicsuger> list = new List<ViewMicsuger>();
            foreach (DataRow item in table.Rows)
            {
                list.Add(new ViewMicsuger
                {
                    MicId = Convert.ToInt32(item["MicId"]),
                    MicImg = item["MicImg"].ToString(),
                    MicName = item["MicName"].ToString(),
                    MicPlayCount = Convert.ToInt32(item["MIcPlayCount"]),
                    MicRegion = item["MicRegion"].ToString(),
                    MicSignTime = item["MicSignTime"].ToString(),
                    MicSRc = item["MicSRc"].ToString(),
                    StyleName = item["StyleName"].ToString(),
                    SingerName = item["SingerName"].ToString()
                });
            }
            return list;
        }

        /// <summary>
        /// 查找用户名及用户邮箱
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public static List<UserInfo> LookupName(object userId)
        {

            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter ("@userId",userId)
            };
            string sql = "select UserName,UserEmall,UserSex from UserInfo where UserId=@userId";
            DataTable table = DBHelpe.SelectDB(sql, false, paras);
            List<UserInfo> list = new List<UserInfo>();
            foreach (DataRow item in table.Rows)
            {
                list.Add(new UserInfo
                {
                    UserName = item["UserName"].ToString(),
                    UserEmall = item["UserEmall"].ToString(),
                    UserSex = item["UserSex"].ToString()
                });
            }
            return list;
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
            //判断旧密码是否输入正确
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@UserId",UserId_s)
            };
            string sql = "select UserPwd,UserName from UserInfo where UserId=@UserId";
            DataTable table = DBHelpe.SelectDB(sql,false,paras);
            List<UserInfo> list = new List<UserInfo>();
            foreach (DataRow item in table.Rows)
            {
                list.Add(new UserInfo
                {
                    UserPwd = item["UserPwd"].ToString(),
                    UserName = item["UserName"].ToString()
                });
            }
            if(user_OldPwd == list[0].UserPwd && user_Name != list[0].UserName)
            {
                ////参数化查询
                SqlParameter[] PaaraSt = new SqlParameter[]
                {
                    new SqlParameter("@UserId",UserId_s),
                    new SqlParameter ("@UserName",user_Name),
                    new SqlParameter ("@UserPwd",user_NewPwd),
                    new SqlParameter("@UserSex",User_sex),
                    new SqlParameter ("@UserEmall",user_Mail)
                };
                string sqlCompilew = "update UserInfo set UserName = @UserName,UserPwd=@UserPwd,UserEmall=@UserEmall,UserSex=@UserSex where UserId=@UserId";
                return DBHelpe.ExecuteAdater(sqlCompilew, false, PaaraSt) == 1;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 根据用户id 查询用户头像及用户名
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public static List<UserInfo> ShowUser(object userId)
        {
            //参数化查询
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter ("@userId",userId)
            };
            string sql = "select UserName,HeadImg from UserInfo where UserId=@userId";
            DataTable table = DBHelpe.SelectDB(sql, false, paras);
            List<UserInfo> list = new List<UserInfo>();
            foreach (DataRow item in table.Rows)
            {
                list.Add(new UserInfo
                {
                    UserName = item["UserName"].ToString(),
                    HeadImg = item["HeadImg"].ToString()
                });
            }
            return list;
        }

        /// <summary>
        /// 根据用户id 移出用户收藏表的数据
        /// </summary>
        /// <param name="MicId">歌曲id</param>
        /// <param name="userId">用户id</param>
        /// <returns></returns>
        public static bool DeleteCollection(string MicId, object userId)
        {
            //参数化查询
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter ("@MicId",MicId),
                new SqlParameter("@userId",userId)
            };
            string sql = "delete from UserCollect where UserId =@userId and MicId=@MicId";
            return DBHelpe.ExecuteAdater(sql, false, paras) != 0;
        }

        /// <summary>
        /// 我的音乐页面 个人音乐收藏功能
        /// </summary>
        /// <param name="userId">用户id</param>
        /// <returns></returns>
        public static List<ViewMicsuger> MicSearch(object userId)
        {
            //从用户收藏表中查询数据
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter ("@UserId",userId)
            };
            string sql = "select m.MicName,s.SingerName,mu.StyleName,m.MicId from MusicInfo m,SingerInfo s,MusicStyleInfo mu where m.SingerId=s.SingerId and m.StyleId=mu.StyleId and m.MicId in(select MicId from UserCollect where UserId=@UserId)";
            DataTable table = DBHelpe.SelectDB(sql, false, paras);
            List<ViewMicsuger> list = new List<ViewMicsuger>();
            foreach (DataRow item in table.Rows)
            {
                list.Add(new ViewMicsuger
                {
                    MicName = item["MicName"].ToString(),
                    SingerName = item["SingerName"].ToString(),
                    StyleName = item["StyleName"].ToString(),
                    MicId = Convert.ToInt32(item["MicId"])
                });
            }
            return list;

        }

        /// <summary>
        ///歌曲收藏功能 根据歌曲名和歌手名加用户名进行收藏
        /// </summary>
        /// <param name="micName"></param>
        /// <param name="singerName"></param>
        /// <returns></returns>
        public static bool SongCollection(string MicId, object UserId)
        {
            //判断是否能添加
            SqlParameter[] Parasjudge = new SqlParameter[]
            {
                new SqlParameter("@MicId",MicId),
                new SqlParameter("@UserId",UserId)
            };
            string sql = "select CollectId from UserCollect where UserId=@UserId and MicId=@MicId";
            DataTable table = DBHelpe.SelectDB(sql, false, Parasjudge);
            if (table.Rows.Count == 0)
            {
                //给歌曲增加收藏量 通过歌曲id
                SqlParameter[] ParasMicId = new SqlParameter[]
                {
                new SqlParameter("@MicId",MicId)
                };
                string sqlMicid = "update MusicInfo set CollectCount=CollectCount+1 where MicId=@MicId";
                DBHelpe.ExecuteAdater(sqlMicid, false, ParasMicId);

                //给用户收藏表增加信息 获取用户id
                SqlParameter[] ParasUserId = new SqlParameter[]
                {
                new SqlParameter("@MicId",MicId),
                new SqlParameter("@UserId",UserId)
                };
                string sqlUserId = "insert into UserCollect values (@UserId,@MicId)";
                return DBHelpe.ExecuteAdater(sqlUserId, false, ParasUserId) == 1;
            }
            else
            {
                return false;
            }

        }

        /// <summary>
        /// 根据歌手名字查找歌曲
        /// </summary>
        /// <param name="singerName">歌手名字</param>
        /// <returns></returns>
        public static List<ViewMicsuger> FindSong(string singerName)
        {
            //参数化查询
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter ("@SingerName",singerName)
            };
            string sql = "select m.MicName,s.SingerName, mu.StyleName,m.MicId from MusicInfo m,SingerInfo s,MusicStyleInfo mu where m.SingerId=s.SingerId and m.StyleId=mu.StyleId and s.SingerName=@SingerName";
            DataTable table = DBHelpe.SelectDB(sql, false, paras);
            List<ViewMicsuger> list = new List<ViewMicsuger>();
            foreach (DataRow item in table.Rows)
            {
                list.Add(new ViewMicsuger
                {
                    MicId = (int)item["MicId"],
                    MicName = item["MicName"].ToString(),
                    SingerName = item["SingerName"].ToString(),
                    StyleName = item["StyleName"].ToString()
                });
            }
            return list;
        }

        /// <summary>
        /// 登录功能
        /// </summary>
        /// <param name="userInfo"></param>
        /// <returns></returns>
        public static List<UserInfo> LoginUser(UserInfo userInfo)
        {
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter ("@UserName",userInfo.UserName),
                new SqlParameter("@UserPwd",userInfo.UserPwd)
            };
            string sql = "select * from UserInfo where UserName=@UserName and UserPwd=@UserPwd";
            DataTable table = DBHelpe.SelectDB(sql, false, paras);
            List<UserInfo> list = new List<UserInfo>();
            foreach (DataRow item in table.Rows)
            {
                list.Add(new UserInfo
                {
                    UserId = (int)item["UserId"],
                    UserName = item["UserName"].ToString(),
                    UserPwd = item["UserPwd"].ToString(),
                    UserSex = item["UserSex"].ToString(),
                    UserEmall = item["UserEmall"].ToString(),
                    HeadImg = item["HeadImg"].ToString()
                });
            }
            return list;
        }

        /// <summary>
        /// 注册功能
        /// </summary>
        /// <param name="userInfo"></param>
        /// <returns></returns>
        public static bool AddUserInfo(UserInfo userInfo)
        {
            SqlParameter[] ParasU = new SqlParameter[]
            {
                new SqlParameter ("@UserName",userInfo.UserName)
            };
            string sqlUser = "select * from UserInfo where UserName=@UserName";
            DataTable table = DBHelpe.SelectDB(sqlUser, false, ParasU);
            if (table.Rows.Count == 0)
            {
                    SqlParameter[] paras = new SqlParameter[]
                {
                    new SqlParameter ("@UserName",userInfo.UserName),
                    new SqlParameter("@UserPwd",userInfo.UserPwd),
                    new SqlParameter("@UserSex",userInfo.UserSex),
                    new SqlParameter("@UserEmall",userInfo.UserEmall),
                    new SqlParameter("@HeadImg",userInfo.HeadImg),
                };
                    string sql = "insert into UserInfo values (@UserName,@UserPwd,@UserEmall,@HeadImg,@UserSex)";
                    return DBHelpe.ExecuteAdater(sql, false, paras) == 1;
            }
            else
            {
                return false;
            }

        }

        /// <summary>
        /// 歌手搜索
        /// </summary>
        /// <param name="sextext">歌手性别</param>
        /// <param name="styletext">歌曲风格</param>
        /// <returns></returns>
        public static List<ViewMicsuger> RegionFind(string regiotext, string sextext, string styletext)
        {
            //参数化查询
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@SingerRegio",regiotext),
                new SqlParameter ("@SingerClass",sextext),
                new SqlParameter("@StyleName",styletext)
            };
            string sql = "select distinct top 10 s.HardImg,s.SingerName from MusicInfo m,SingerInfo s,MusicStyleInfo ms where m.SingerId=s.SingerId and m.StyleId=ms.StyleId and(s.SingerRegio like '%'+@SingerRegio+'%' and s.SingerClass like '%'+@SingerClass+'%' and ms.StyleName like '%'+@StyleName+'%')";
            DataTable table = DBHelpe.SelectDB(sql, false, paras);
            List<ViewMicsuger> list = new List<ViewMicsuger>();
            foreach (DataRow row in table.Rows)
            {
                list.Add(new ViewMicsuger
                {
                    HardImg = row["HardImg"].ToString(),
                    SingerName = row["SingerName"].ToString()
                });
            }
            return list;
        }






        /// <summary>
        /// 歌曲播放功能 根据歌手名字及歌曲名字
        /// </summary>
        /// <returns></returns>
        public static List<ViewMicsuger> PlaySong(string MicName, string SingerName)
        {
            SqlParameter[] paras = new SqlParameter[]
           {
                new SqlParameter("@MicName",MicName),
                new SqlParameter ("@SingerName",SingerName)
           };
            string sql = "select m.MicId,m.MicImg,m.MicName,m.MIcPlayCount,m.MicRegion,m.MicSignTime,m.MicSRc,ms.StyleName,s.SingerName,m.SingerId from MusicInfo m,SingerInfo s,MusicStyleInfo ms where m.SingerId = s.SingerId and m.StyleId = ms.StyleId and(m.MicName like '%'+@MicName+'%' and s.SingerName like '%'+@SingerName+'%')";
            DataTable table = DBHelpe.SelectDB(sql, false, paras);
            List<ViewMicsuger> Message = new List<ViewMicsuger>();
            foreach (DataRow item in table.Rows)
            {
                Message.Add(new ViewMicsuger
                {
                    MicId = Convert.ToInt32(item["MicId"]),
                    MicImg = item["MicImg"].ToString(),
                    MicName = item["MicName"].ToString(),
                    MicPlayCount = Convert.ToInt32(item["MIcPlayCount"]),
                    MicRegion = item["MicRegion"].ToString(),
                    MicSignTime = item["MicSignTime"].ToString(),
                    MicSRc = item["MicSRc"].ToString(),
                    StyleName = item["StyleName"].ToString(),
                    SingerName = item["SingerName"].ToString(),
                    SingerId = (int)item["SingerId"]
                });
            }

            //增加点播量 通过歌曲id进行增加
            SqlParameter[] parasST = new SqlParameter[]
            {
                new SqlParameter("@MicId",Message[0].MicId)
            };
            string UpdateSql = "update MusicInfo set MIcPlayCount = MIcPlayCount+1 where MicId =@MicId";
            DBHelpe.ExecuteAdater(UpdateSql, false, parasST);
            return Message;
        }
    }
}
