using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DataSheetDAL
{
    class DBHelpe
    {
        static string constr = ConfigurationManager.ConnectionStrings["dbString"].ConnectionString;

        //创建一个增删改的方法

        public static int ExecuteAdater(string sql, bool isProc = false, params SqlParameter[] para)
        {
            SqlCommand cmd = GetCommand(sql, isProc, para);

            try
            {
                cmd.Connection.Open();
                return cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Connection.Close();
            }
        }



        private static SqlCommand GetCommand(string sql, bool isProc, SqlParameter[] para)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(sql, con);
            if (isProc)
            {
                //如果是储存过程
                cmd.CommandType = CommandType.StoredProcedure;
            }
            if (para.Length > 0)
            {
                cmd.Parameters.AddRange(para);
            }
            return cmd;
        }


        public static DataTable SelectDB(string sql, bool isProc = false, params SqlParameter[] para)
        {
            SqlCommand cmd = GetCommand(sql, isProc, para);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable table = new DataTable();
            try
            {
                cmd.Connection.Open();
                da.Fill(table);
                return table;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Connection.Close();
            }
        }

    }
}
